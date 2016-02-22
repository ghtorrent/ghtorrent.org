---
layout: page
title: GHTorrent optimized on Ubuntu 10.10
tagline:
---

This is a from scratch installation script for GHTorrent running on Ubuntu
10.10. It has been tuned for cloud Ubuntu installations (e.g. Azure). This
setup will handle installations in the order of 10's of thousands repositories
on a D3 Azure VM (2 CPUs, 7GB RAM).

## Install essentials

{% highlight bash %}
sudo apt-get install -y git ntp mdadm lvm2 libssl-dev parallel
{% endhighlight %}

## Configure RAID

{% highlight bash %}
sudo bash
# partition the devices
(echo -e "o\nn\np\n1\n\n\nt\nfd\nw" | fdisk /dev/sdc ) || exit 1
(echo -e "o\nn\np\n1\n\n\nt\nfd\nw" | fdisk /dev/sdd ) || exit 1

# start the array and write out its config
mdadm --create /dev/md127 --level 0 --raid-devices 2 /dev/sdc1 /dev/sdd1
mdadm --detail --scan >> /etc/mdadm/mdadm.conf
{% endhighlight %}

## Configure filesystem on RAID

{% highlight bash %}
sudo bash
mkfs -t ext4 /dev/md127
id=`blkid|grep md127|cut -f2 -d'"'`
mkdir /data
echo "UUID=$id /data ext4 defaults,noatime,nobootwait,optional 0 0" >> /etc/fstab
{% endhighlight %}

## Install required Ruby

{% highlight bash %}
sudo apt-get install ruby ruby2.2 ruby2.2-dev build-essential

sudo update-alternatives --install /usr/bin/ruby ruby /usr/bin/ruby2.2 400 \
 --slave /usr/bin/rake rake /usr/bin/rake2.2 \
 --slave /usr/bin/ri ri /usr/bin/ri2.2 \
 --slave /usr/bin/rdoc rdoc /usr/bin/rdoc2.2 \
 --slave /usr/bin/gem gem /usr/bin/gem2.2 \
 --slave /usr/bin/irb irb /usr/bin/irb2.2 \
 --slave /usr/share/man/man1/ruby.1.gz ruby.1.gz /usr/share/man/man1/ruby2.2.1.gz \
 --slave /usr/share/man/man1/rake.1.gz rake.1.gz /usr/share/man/man1/rake2.2.1.gz \
 --slave /usr/share/man/man1/ri.1.gz ri.1.gz /usr/share/man/man1/ri2.2.1.gz \
 --slave /usr/share/man/man1/rdoc.1.gz rdoc.1.gz /usr/share/man/man1/rdoc2.2.1.gz \
 --slave /usr/share/man/man1/gem.1.gz gem.1.gz /usr/share/man/man1/gem2.2.1.gz \
 --slave /usr/share/man/man1/irb.1.gz irb.1.gz /usr/share/man/man1/irb2.2.1.gz
{% endhighlight %}

## Install MySQL (its MariaDB variant)

We are currently using MariaDB as it can handle complex queries better than
stock MySQL 5.6. If you prefer MySQL, skip the MariaDB installation script
below.

You can set any password for the root user in MySQL.

{% highlight bash %}
sudo apt-get install -y software-properties-common
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
sudo add-apt-repository 'deb http://mariadb.mirror.triple-it.nl//repo/10.1/ubuntu wily main'
sudo apt-get update
sudo apt-get install -y mariadb-server percona-toolkit libmariadbclient-dev
{% endhighlight %}

Then, move data files to the RAID array.

{% highlight bash %}
sudo service mysql stop
sudo mkdir /data/mysql
sudo chown mysql:mysql /data/mysql
sudo mkdir /mnt/mysql
sudo chown mysql:mysql /mnt/mysql
sudo rsync -av /var/lib/mysql /data/mysql
sudo service mysql start
{% endhighlight %}

## Configure MySQL/MariaDB

{% highlight bash %}
sudo service mysql stop
sudo vi /etc/mysql/my.cnf

### change the following
datadir = /data/mysql
tmpdir = /mnt/mysql
innodb_buffer_pool_size=4GB
###

sudo service mysql start
{% endhighlight %}

## Install MongoDB

We are install MongoDB latest (3.0.x) from MongoDB's central repo and use
WiredTiger as the storage engine due to huge space savings.

{% highlight bash %}
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org

echo << EOF > /lib/systemd/system/mongodb.service
[Unit]
Description=High-performance, schema-free document-oriented database
After=network.target

[Service]
User=mongodb
ExecStart=/usr/bin/mongod --quiet --config /etc/mongod.conf

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo service mongodb start

# Stop it to move dirs to the right places
sudo service mongodb stop
sudo bash

mkdir /data/mongodb
chown mongodb:mongodb /data/mongodb

echo << EOF > /etc/mongod.conf
storage:
  dbPath: "/data/mongodb"
  engine: "wiredTiger"
  wiredTiger:
    collectionConfig:
      blockCompressor: snappy
    engineConfig:
      cacheSizeGB: 4 # Configure this if you have more RAM
systemLog:
  destination: file
  path: "/var/log/mongodb/mongodb.log"
  logAppend: true
  timeStampFormat: iso8601-utc

net:
  bindIp: "0.0.0.0"
  port: 27017
EOF

service mongodb start
{% endhighlight %}

### Install and configure RabbitMQ

{% highlight bash %}
sudo apt-get install rabbitmq-server
sudo rabbitmqctl add_user ghtorrent ghtorrent
sudo rabbitmqctl set_permissions -p / ghtorrent ".*" ".*" ".*"
sudo rabbitmq-plugins enable rabbitmq_management
sudo rabbitmqctl set_user_tags ghtorrent administrator
{% endhighlight %}

### Install and configure GHTorrent

{% highlight bash %}
cd $HOME
git clone https://github.com/gousiosg/github-mirror.git
cd github-mirror

sudo gem install bundler
sudo bundle install
sudo gem install mysql2

cp config.yaml.tmpl config.yaml
vi config.yaml
{% endhighlight %}

Use the following contents for the config.yaml file

{% highlight yaml %}
amqp:
  host:   127.0.0.1 # Queue's IP address
  port:   5672
  username: ghtorrent # Username to connect to the queue
  password: ghtorrent   # password
  exchange: ghtorrent
  prefetch: 1

sql:
  # Configuration URL for the SQL database subsystem.
  # Examples:
  # - MySQL:     mysql2://user:password@host/github
  # - Postgres:  postgres://user:password@host/github
  #
  # On JRuby, you can use the JDBC-mysql driver that comes with JRuby
  #     jdbc:mysql://localhost/github?user=github&password=github
  #
  # see http://sequel.rubyforge.org/rdoc/files/doc/opening_databases_rdoc.html
  # for details
  #url: sqlite://github.db
  url: mysql2://ghtorrent:ghtorrent@localhost/ghtorrent

mirror:
  urlbase: "https://api.github.com/"
  persister: mongo #or noop
  # How many pages of historical content to retrieve when doing multi-page
  # API calls.
  history_pages_back: 1000
  # On a machine with multiple IP addresses, select the one to send the
  # HTTP requests from.
  # attach_ip: 0.0.0.0
  # Use your token here
  token:
  # Number of reqs/hour to do with the provided key
  req_limit: 4990
  # User agent to use for requests. You must use a unique name per client program
  user_agent: ghtorrent
  # Time to wait between geo location API requests
  geoloc_wait: 2

mongo:
  host: 127.0.0.1      # Mongo's IP addr
  port: 27017          # Mongo's port
  db: ghtorrent        # DB name to store commits to
  #username: github     # User name to connect to Mongo
  #password: github     # Password for mongo

logging:
  # A unique string to appear in all messages produced by the invoking program.
  uniq: "ghtorrent"
  # debug < info < warn < error, for decreasing log output
  level: "info"
  # stdout or stderr to log to system streams. A file name to log to this file.
  file: "stdout"
{% endhighlight %}

GHTorrent is now ready to run. Self-apply to begin with:

{% highlight bash %}
cd $HOME/github-mirror
ruby -Ilib bin/ght-retrieve-repo gousiosg github-mirror
{% endhighlight %}



---
layout: page
title: Generic installation instructions
tagline:
---

## How to run GHTorrent locally

Depending on the size of the local mirror you have the following configuration
simplification options:

* You can skip using MongoDB if you only need to query the relational
database and/or you just need to do use GHTorrent once.

* You can use SQLite3 instead of MySQL if your setup only contains a few
(say, less than 1000) small projects.

### Install Ruby and dependencies

Make sure you run the latest release of Ruby. On the main server, GHTorrent runs
on Ruby 2. If you are on Mac or Linux, you can use [RVM](https://rvm.io/)  to
manage Ruby versions.

Install the necessary dependencies:

{% highlight bash %}
sudo apt-get install build-essential curl libmysqlclient-dev
# Install RVM and Ruby 2.2
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -L https://get.rvm.io | bash -s stable --ruby=2.2
rvm use 2.2
gem install bundler sqlite3 #or mysql2
{% endhighlight %}

### Install the source code

Checkout the latest version of the
[ghtorrent](https://github.com/gousiosg/github-mirror.git) Gem through Github.
By default, it will be checked out in the directory `github-mirror`. The
released versions of the Gem represent good states in the project's lifetime;
the main mirror always works on the bleeding edge, which contains error fixes
and updates to comply with changes to Github's API. You then need to install
the dependencies:

{% highlight bash %}
cd github-mirror
bundle install
{% endhighlight %}

Alternatively, you can just install the latest version of the GHTorrent gem:

{% highlight bash %}
gem install ghtorrent
{% endhighlight %}

#### Configure

**If you are using MySQL**, you need to create a user and a database, like so

{% highlight mysql %}
# Login as MySQL root user
mysql> create user ghtorrentuser@'localhost' identified by 'ghtorrentpassword';
mysql> create user ghtorrentuser@'*' identified by 'ghtorrentpassword';
mysql> grant all privileges on *.* to 'ghtorrentuser'@'localhost';
mysql> grant all privileges on *.* to 'ghtorrentuser'@'*';

# Login as the ghtorrent user
mysql> CREATE SCHEMA IF NOT EXISTS `ghtorrent` DEFAULT CHARACTER SET utf8 ;
{% endhighlight %}

**If you are using MongoDB**, you can just disable
authentication (run `mongod` with `--noauth`). If you do want to create a user,
it can be a bit more involved, see below:

{% highlight javascript %}
> db.createUser(
  {
    user: "root",
    pwd: "admin",
    roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]
  }
)

> use ghtorrent
> db.createUser(
    {
      user: "ghtorrent",
      pwd: "ghtorrent",
      roles: [
         { role: "dbOwner", db: "ghtorrent" }
      ]
    }
)
{% endhighlight %}

**Download the
[sample configuration file](https://raw.githubusercontent.com/gousiosg/github-mirror/master/config.yaml.tmpl)**,
save it as `config.yaml` and change options as necessary. Important things to
configure are:

* The database connection string
* The MongoDB connection details (if you are using it)
* Your GitHub username/password or an API token. See
  [instructions here](raw.html) on how to obtain an API key

### Run and profit

To download the data for your first project, run:

{% highlight bash %}
# Retrieve one repo
ruby -Ilib bin/ght-retrieve-repo -c config.yaml gousiosg github-mirror
{% endhighlight %}

You should see lots of output. After a while, you will have 1/2 databases
full of data!

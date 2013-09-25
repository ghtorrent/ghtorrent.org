---
layout: page
title: The GHTorrent project documentation 
tagline: 
---

## Data

* [The relational data schema](relational.html)
* [Collections in the MongoDB database](mongo.html)

## Setting up a mirroring client

Setting up a mirroring client is easy:

1. Make sure you run the latest release of Ruby 1.9.3. Ruby 2 is has not been
tested yet. If you are on Mac or Linux, you can use [RVM](https://rvm.io/) 
to manage dependencies.
2. Install the `supervize` program from the [daemontools](http://cr.yp.to/daemontools/install.html) package.
3. Checkout the latest version of the [ghtorrent](https://github.com/gousiosg/github-mirror.git) Gem through Github. By default, it will be checked out in the directory `github-mirror`. The released versions of the Gem only represent good states for others to setup a mirror; the main mirror always works on the bleeding edge, which contains error fixes and updates to comply with changes to Github's API. 
4. Install the dependencies for `ghtorrent`. This can be done in one go with the
following commands (on Debian/Ubuntu):
{% highlight bash%}
cd github-mirror
sudo apt-get install libmysqlclient-dev
gem install bundler mysql2
bundle install
{% endhighlight %}
5. Create an SSH keypair (with `ssh-keygen`) and [send us](gousiosg@gmail.com) the public key (the file `~/.ssh/id_rsa.pub`). 
6.You will receive from us a reply saying that the key has been installed and a
`config.yaml` file with the required configuration.  After the public key has
been installed, you should be able to `ssh ghtorrent@dutihr.st.ewi.tudelft.nl`.
Please check it and report any problems.
7. Place the `config.yaml` file in the `github-mirror` directory. Edit it and
set your Github user name and password.
8. Run the ./bin/mirror.sh script. This will create a `tmp` directory, setup 3
SSH tunnels to the main host and start the mirroring process. The logs will be
in `tmp/log.txt`. Look at it and make sure everything looks fine.
9. Setup a Cron job for the account that will restart the mirroring process
every midnight. This is to make sure that you always run the latest version of
the software.

{% highlight bash%}
* 12 * * * killall -KILL mirror.sh && cd /path/to/github-mirror && ./bin/mirror.sh
{% endhighlight %}



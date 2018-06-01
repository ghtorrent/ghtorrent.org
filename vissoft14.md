---
layout: page
title: VISSOFT 2014 Challenge Dataset
tagline:
---
### Versions

*You are advised to always run queries against the newest version.*

<table class="table table-hover table-condensed">
  <thead>
  <tr>
      <th>Version</th>
      <th>Release date</th>
      <th>Fixed error</th>
  </tr>
  </thead>
  <tbody>
    <tr>
      <td>1.0</td>
      <td>1 Mar 2014</td>
      <td></td>
  </tr>
  </tbody>
</table>

### Dataset description

The VISSOFT 2014 challenge dataset is a (very) trimmed down version of the
original GHTorrent dataset. It includes data from the
[netty/netty](http://github.com/repos/netty/netty) repository (commits, pull
requests, collaborators, issues etc) along with all its forks (including the
forks' own commits, pull requests etc if any).

Similarly to GHTorrent itself, the VISSOFT challenge dataset comes in two flavours:

* A MongoDB database dump containing the results of querying the Github API. See [format here](mongo.html).
* A MySQL database dump containing a queriable version of important fields extracted from the raw data. See [schema here](relational.html).

### Importing and using

The following instructions assume an OSX or Linux based host, on which
you have a running MongoDB or/and MySQL instance.

{%highlight bash%}
# Download and extract
$ wget http://ghtorrent-downloads.ewi.tudelft.nl/datasets/vissoft14-01032014.tar.gz
$ du -b vissoft14-01032014.tar.gz
49178639  vissoft14-01032014.tar.gz
$ md5sum vissoft14-01032014.tar.gz
4928efb679a0dc8254924d56760d65ec  vissoft14-01032014.tar.gz
$ tar zxvf vissoft14-01032014.tar.gz
$ cd vissoft14
$ du -b
351024865

# MongoDB import
$ ls *.bson|while read dump; do mongorestore -d vissoft14 $dump; done
$ mongo vissoft14
mongo> db.commits.count()
9118
mongo> db.issue_comments.count()
10876

# MySQL import
$ mysql -u root -p
mysql > create user 'vissoft14'@'localhost' identified by 'vissoft14';
mysql> create database vissoft14;
mysql> grant all privileges on vissoft14.* to vissoft14@'localhost';
mysql> flush privileges;
mysql> ^D
$ cat mysql.sql |mysql -u vissoft14 -p vissoft14
$ mysql -u vissoft14 -p vissoft14
mysql> select count(*) from commits;
+----------+
| count(*) |
+----------+
|     9118 |
+----------+
{%endhighlight %}

### FAQ

Answers to frequently asked questions

#### Why a new dataset?

For practical reasons. The dataset is small enough to be used on a laptop,
yet rich enough to do really interesting vizualizations with it.

#### What are the hardware requirements?

We have succesfully imported and used both dumps into a 2011 MacBookAir with 4GB
of RAM. Your mileage may vary, but relatively new systems with more than 4GB RAM should have no trouble with both databases. If you only need to use the MySQL data dump, the hardware requirements are even lower.

#### Why two databases? Do I need both?

Not necessarily. The MySQL database can readily cover many aspects of activity
on Github. Perhaps the only reason to use the MongoDB dump is to analyse commit contents, branches affected by pull requests or milestones, which are not included in MySQL.

#### How can I ask a question about the dataset?

Your question and the potential answer might be useful for other people as
well, so please use the form below. *Please note that I (Georgios Gousios) will
not answer questions sent to my email.*

{% include comments.html%}

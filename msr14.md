---
layout: page
title: MSR 2014 Mining Challenge Dataset
tagline:
---
### Versions

After the initial release of the dataset, the users found errors and missing
features. The list of versions along with the fixes is presented in the table
below. Only the latest version is offered for download.

*You are advised to always run queries against the newest version.* If you have already downloaded an older version and the described fix does not
affect your experiment, you could skip the update.

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
      <td>1.3</td>
      <td>13 Dec 2013</td>
      <td><a href="http://ghtorrent.org/msr14.html#comment-1161196386">Missing project members</a> for some projects is now fixed</td>
  </tr>
   <tr>
      <td>1.2</td>
      <td>22 Oct 2013</td>
      <td>user_id in table commit_comments <a href="http://ghtorrent.org/msr14.html#comment-1087775543">not set correctly</a>.</td>
  </tr>
    <tr>
      <td>1.1</td>
      <td>9 Oct 2013</td>
      <td>
      Table commit_comments was missing data. Some commits were missing from
      some projects.
      </td>
  </tr>
    <tr>
      <td>1.0</td>
      <td>28 Sep 2013</td>
      <td></td>
  </tr>
  </tbody>
</table>

### Dataset description

The MSR 2014 challenge dataset is a (very) trimmed down version of the original
GHTorrent dataset. It includes data from the top-10 starred software projects
for the top programming languages on Github, which gives 90 projects and their
forks. For each project, we retrieved all data including issues, pull requests
organizations, followers, stars and labels (milestones and events not
included). The dataset was constructed from scratch to ensure the latest
information is in it.

Similarly to GHTorrent itself, the MSR challenge dataset comes in two flavours:

* A [MongoDB database dump](http://ghtorrent-downloads.ewi.tudelft.nl/datasets/msr14-mongo.tar.gz) containing the results of querying the Github API. See [format here](mongo.html).
* A [MySQL database dump](http://ghtorrent-downloads.ewi.tudelft.nl/datasets/msr14-mysql.gz) containing a queriable version of important fields extracted from the raw data. See [schema here](relational.html).

The included projects are the following:

<small>
[akka/akka](http://github.com/akka/akka)
[devtools/hadley](http://github.com/hadley/devtools)
[ProjectTemplate/johnmyleswhite](http://github.com/johnmyleswhite/ProjectTemplate)
[stat-cookbook/mavam](http://github.com/mavam/stat-cookbook)
[hiphop-php/facebook](http://github.com/facebook/hiphop-php)
[knitr/yihui](http://github.com/yihui/knitr)
[shiny/rstudio](http://github.com/rstudio/shiny)
[folly/facebook](http://github.com/facebook/folly)
[mongo/mongodb](http://github.com/mongodb/mongo)
[doom3.gpl/TTimo](http://github.com/TTimo/doom3.gpl)
[phantomjs/ariya](http://github.com/ariya/phantomjs)
[TrinityCore/TrinityCore](http://github.com/TrinityCore/TrinityCore)
[MaNGOS/mangos](http://github.com/mangos/MaNGOS)
[bitcoin/bitcoin](http://github.com/bitcoin/bitcoin)
[mosh/keithw](http://github.com/keithw/mosh)
[xbmc/xbmc](http://github.com/xbmc/xbmc)
[http-parser/joyent](http://github.com/joyent/http-parser)
[beanstalkd/kr](http://github.com/kr/beanstalkd)
[redis/antirez](http://github.com/antirez/redis)
[ccv/liuliu](http://github.com/liuliu/ccv)
[memcached/memcached](http://github.com/memcached/memcached)
[openFrameworks/openframeworks](http://github.com/openframeworks/openFrameworks)
[libgit2/libgit2](http://github.com/libgit2/libgit2)
[redcarpet/vmg](http://github.com/vmg/redcarpet)
[libuv/joyent](http://github.com/joyent/libuv)
[SignalR/SignalR](http://github.com/SignalR/SignalR)
[SparkleShare/hbons](http://github.com/hbons/SparkleShare)
[plupload/moxiecode](http://github.com/moxiecode/plupload)
[mono/mono](http://github.com/mono/mono)
[Nancy/NancyFx](http://github.com/NancyFx/Nancy)
[ServiceStack/ServiceStack](http://github.com/ServiceStack/ServiceStack)
[AutoMapper/AutoMapper](http://github.com/AutoMapper/AutoMapper)
[RestSharp/restsharp](http://github.com/restsharp/RestSharp)
[ravendb/ravendb](http://github.com/ravendb/ravendb)
[MiniProfiler/SamSaffron](http://github.com/SamSaffron/MiniProfiler)
[storm/nathanmarz](http://github.com/nathanmarz/storm)
[elasticsearch/elasticsearch](http://github.com/elasticsearch/elasticsearch)
[ActionBarSherlock/JakeWharton](http://github.com/JakeWharton/ActionBarSherlock)
[facebook-android-sdk/facebook](http://github.com/facebook/facebook-android-sdk)
[clojure/clojure](http://github.com/clojure/clojure)
[CraftBukkit/Bukkit](http://github.com/Bukkit/CraftBukkit)
[netty/netty](http://github.com/netty/netty)
[android/github](http://github.com/github/android)
[node/joyent](http://github.com/joyent/node)
[jquery/jquery](http://github.com/jquery/jquery)
[html5-boilerplate/h5bp](http://github.com/h5bp/html5-boilerplate)
[impress.js/bartaz](http://github.com/bartaz/impress.js)
[d3/mbostock](http://github.com/mbostock/d3)
[chosen/harvesthq](http://github.com/harvesthq/chosen)
[Font-Awesome/FortAwesome](http://github.com/FortAwesome/Font-Awesome)
[three.js/mrdoob](http://github.com/mrdoob/three.js)
[foundation/zurb](http://github.com/zurb/foundation)
[symfony/symfony](http://github.com/symfony/symfony)
[CodeIgniter/EllisLab](http://github.com/EllisLab/CodeIgniter)
[php-sdk/facebook](http://github.com/facebook/php-sdk)
[zf2/zendframework](http://github.com/zendframework/zf2)
[cakephp/cakephp](http://github.com/cakephp/cakephp)
[ThinkUp/ginatrapani](http://github.com/ginatrapani/ThinkUp)
[phpunit/sebastianbergmann](http://github.com/sebastianbergmann/phpunit)
[Slim/codeguy](http://github.com/codeguy/Slim)
[django/django](http://github.com/django/django)
[tornado/facebook](http://github.com/facebook/tornado)
[httpie/jkbr](http://github.com/jkbr/httpie)
[flask/mitsuhiko](http://github.com/mitsuhiko/flask)
[requests/kennethreitz](http://github.com/kennethreitz/requests)
[symfony/xphere-forks](http://github.com/xphere-forks/symfony)
[reddit/reddit](http://github.com/reddit/reddit)
[boto/boto](http://github.com/boto/boto)
[django-debug-toolbar/django-debug-toolbar](http://github.com/django-debug-toolbar/django-debug-toolbar)
[Sick-Beard/midgetspy](http://github.com/midgetspy/Sick-Beard)
[django-cms/divio](http://github.com/divio/django-cms)
[rails/rails](http://github.com/rails/rails)
[homebrew/mxcl](http://github.com/mxcl/homebrew)
[jekyll/mojombo](http://github.com/mojombo/jekyll)
[gitlabhq/gitlabhq](http://github.com/gitlabhq/gitlabhq)
[diaspora/diaspora](http://github.com/diaspora/diaspora)
[devise/plataformatec](http://github.com/plataformatec/devise)
[blueprint-css/joshuaclayton](http://github.com/joshuaclayton/blueprint-css)
[octopress/imathis](http://github.com/imathis/octopress)
[vinc.cc/vinc](http://github.com/vinc/vinc.cc)
[paperclip/thoughtbot](http://github.com/thoughtbot/paperclip)
[compass/chriseppstein](http://github.com/chriseppstein/compass)
[finagle/twitter](http://github.com/twitter/finagle)
[kestrel/robey](http://github.com/robey/kestrel)
[flockdb/twitter](http://github.com/twitter/flockdb)
[gizzard/twitter](http://github.com/twitter/gizzard)
[sbt/sbt](http://github.com/sbt/sbt)
[scala/scala](http://github.com/scala/scala)
[scalatra/scalatra](http://github.com/scalatra/scalatra)
[zipkin/twitter](http://github.com/twitter/zipkin)
</small>
### Importing and using

The following instructions assume an OSX or Linux based host.

#### MongoDB

{%highlight bash%}

$ wget http://ghtorrent-downloads.ewi.tudelft.nl/datasets/msr14-mongo.tar.gz
$ tar zxvf msr14-mongo.tar.gz
$ mongorestore
$ mongo msr14
mongo> db.commits.count()
601080
mongo> db.issues.count()
126308
{%endhighlight %}

#### MySQL

{%highlight bash%}
$ wget http://ghtorrent-downloads.ewi.tudelft.nl/datasets/msr14-mysql.gz
$ mysql -u root -p
mysql > create user 'msr14'@'localhost' identified by 'msr14';
mysql> create database msr14;
mysql> GRANT ALL PRIVILEGES ON msr14.* to msr14@'localhost';
mysql> flush privileges;
# Exit MySQL prompt
$ zcat msr14-mysql.gz |mysql -u msr14 -p msr14
$ mysql -u msr14 -p msr14
mysql> select language,count(*) from projects where forked_from is null group by language;
+------------+----------+
| language   | count(*) |
+------------+----------+
| C          |       10 |
| C#         |        8 |
| C++        |        8 |
| CSS        |        3 |
| Go         |        1 |
| Java       |        8 |
| JavaScript |        9 |
| PHP        |        9 |
| Python     |       10 |
| R          |        4 |
| Ruby       |       10 |
| Scala      |        9 |
| TypeScript |        1 |
+------------+----------+
13 rows in set (0.01 sec)
{%endhighlight %}

### FAQ

Answers to frequently asked questions

#### Why a new dataset?

For practical reasons. The dataset is small enough to be used on a laptop,
yet rich enough to do really interesting research with it.

#### What are the hardware requirements?

We have succesfully imported and used both dumps into a 2011 MacBookAir with 4GB
of RAM. Your mileage may vary, but relatively new systems with more than 4GB RAM should have no trouble with both databases. If you only need to use the MySQL data dump, the hardware requirements are even lower.

#### Why two databases? Do I need both?

Not necessarily. The MySQL database can readily cover many aspects of activity
on Github. Perhaps the only reason to use the MongoDB dump is to analyse commit contents, branches affected by pull requests or milestones, which are not included in MySQL.

#### How can I ask a question about the dataset?

Your question and the potential answer might be useful for other people as well,
so please use the form below. *Please note that I will not answer
questions sent to my email.*

{% include comments.html%}

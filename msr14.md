---
layout: page
title: MSR 2014 Mining Challenge Dataset 
tagline: 
---

### Dataset description

The MSR 2014 challenge dataset is a (very) trimmed down version of the original
GHTorrent dataset. It includes data from the top-10 starred software projects
for the top-10 programming languages on Github, which gives 100 projects and
their forks.

Similarily to GHTorrent itself, the MSR challenge dataset comes in two flavours:

* A [MongoDB database dump](http://ghtorrent.org/downloads/msr14-mongo.tar.gz) containing the results of querying the Github API. See [format here](http://ghtorrent.org/raw.html).
* A [MySQL database dump](http://ghtorrent.org/downloads/msr14-mysql.gz) containing a queriable version of important fields extracted from the raw data. See [schema here](http://ghtorrent.org/relational.html).

The included projects are the following:

<small>
[hadley/ggplot2](http://github.com/hadley/ggplot2) [johnmyleswhite/ML_for_Hackers](http://github.com/johnmyleswhite/ML_for_Hackers) [yihui/knitr](http://github.com/yihui/knitr) [hadley/devtools](http://github.com/hadley/devtools) [hadley/plyr](http://github.com/hadley/plyr) [rstudio/shiny](http://github.com/rstudio/shiny) [mavam/stat-cookbook](http://github.com/mavam/stat-cookbook) [dockimbel/Red](http://github.com/dockimbel/Red) [johnmyleswhite/ProjectTemplate](http://github.com/johnmyleswhite/ProjectTemplate) [hadley/lubridate](http://github.com/hadley/lubridate) [facebook/hiphop-php](http://github.com/facebook/hiphop-php) [ariya/phantomjs](http://github.com/ariya/phantomjs) [mongodb/mongo](http://github.com/mongodb/mongo) [TTimo/doom3.gpl](http://github.com/TTimo/doom3.gpl) [facebook/folly](http://github.com/facebook/folly) [TrinityCore/TrinityCore](http://github.com/TrinityCore/TrinityCore) [mangos/mangos](http://github.com/mangos/mangos) [bitcoin/bitcoin](http://github.com/bitcoin/bitcoin) [FooBarWidget/passenger](http://github.com/FooBarWidget/passenger) [keithw/mosh](http://github.com/keithw/mosh) [xbmc/xbmc](http://github.com/xbmc/xbmc) [joyent/http-parser](http://github.com/joyent/http-parser) [kr/beanstalkd](http://github.com/kr/beanstalkd) [antirez/redis](http://github.com/antirez/redis) [liuliu/ccv](http://github.com/liuliu/ccv) [memcached/memcached](http://github.com/memcached/memcached) [openframeworks/openFrameworks](http://github.com/openframeworks/openFrameworks) [libgit2/libgit2](http://github.com/libgit2/libgit2) [vmg/redcarpet](http://github.com/vmg/redcarpet) [joyent/libuv](http://github.com/joyent/libuv) [SignalR/SignalR](http://github.com/SignalR/SignalR) [hbons/SparkleShare](http://github.com/hbons/SparkleShare) [moxiecode/plupload](http://github.com/moxiecode/plupload) [mono/mono](http://github.com/mono/mono) [NancyFx/Nancy](http://github.com/NancyFx/Nancy) [ServiceStack/ServiceStack](http://github.com/ServiceStack/ServiceStack) [AutoMapper/AutoMapper](http://github.com/AutoMapper/AutoMapper) [restsharp/RestSharp](http://github.com/restsharp/RestSharp) [ravendb/ravendb](http://github.com/ravendb/ravendb) [SamSaffron/MiniProfiler](http://github.com/SamSaffron/MiniProfiler) [nathanmarz/storm](http://github.com/nathanmarz/storm) [elasticsearch/elasticsearch](http://github.com/elasticsearch/elasticsearch) [JakeWharton/ActionBarSherlock](http://github.com/JakeWharton/ActionBarSherlock) [facebook/facebook-android-sdk](http://github.com/facebook/facebook-android-sdk) [clojure/clojure](http://github.com/clojure/clojure) [Bukkit/CraftBukkit](http://github.com/Bukkit/CraftBukkit) [netty/netty](http://github.com/netty/netty) [vert-x/vert.x](http://github.com/vert-x/vert.x) [github/android](http://github.com/github/android) [SpringSource/spring-framework](http://github.com/SpringSource/spring-framework) [joyent/node](http://github.com/joyent/node) [jquery/jquery](http://github.com/jquery/jquery) [twitter/bootstrap](http://github.com/twitter/bootstrap) [h5bp/html5-boilerplate](http://github.com/h5bp/html5-boilerplate) [bartaz/impress.js](http://github.com/bartaz/impress.js) [documentcloud/backbone](http://github.com/documentcloud/backbone) [mbostock/d3](http://github.com/mbostock/d3) [harvesthq/chosen](http://github.com/harvesthq/chosen) [FortAwesome/Font-Awesome](http://github.com/FortAwesome/Font-Awesome) [mrdoob/three.js](http://github.com/mrdoob/three.js) [zurb/foundation](http://github.com/zurb/foundation) [symfony/symfony](http://github.com/symfony/symfony) [EllisLab/CodeIgniter](http://github.com/EllisLab/CodeIgniter) [facebook/php-sdk](http://github.com/facebook/php-sdk) [zendframework/zf2](http://github.com/zendframework/zf2) [cakephp/cakephp](http://github.com/cakephp/cakephp) [retlehs/roots](http://github.com/retlehs/roots) [ginatrapani/ThinkUp](http://github.com/ginatrapani/ThinkUp) [sebastianbergmann/phpunit](http://github.com/sebastianbergmann/phpunit) [codeguy/Slim](http://github.com/codeguy/Slim) [django/django](http://github.com/django/django) [facebook/tornado](http://github.com/facebook/tornado) [jkbr/httpie](http://github.com/jkbr/httpie) [mitsuhiko/flask](http://github.com/mitsuhiko/flask) [kennethreitz/requests](http://github.com/kennethreitz/requests) [reddit/reddit](http://github.com/reddit/reddit) [boto/boto](http://github.com/boto/boto) [django-debug-toolbar/django-debug-toolbar](http://github.com/django-debug-toolbar/django-debug-toolbar) [midgetspy/Sick-Beard](http://github.com/midgetspy/Sick-Beard) [divio/django-cms](http://github.com/divio/django-cms) [rails/rails](http://github.com/rails/rails) [mxcl/homebrew](http://github.com/mxcl/homebrew) [mojombo/jekyll](http://github.com/mojombo/jekyll) [gitlabhq/gitlabhq](http://github.com/gitlabhq/gitlabhq) [diaspora/diaspora](http://github.com/diaspora/diaspora) [plataformatec/devise](http://github.com/plataformatec/devise) [joshuaclayton/blueprint-css](http://github.com/joshuaclayton/blueprint-css) [imathis/octopress](http://github.com/imathis/octopress) [thoughtbot/paperclip](http://github.com/thoughtbot/paperclip) [chriseppstein/compass](http://github.com/chriseppstein/compass) [playframework/Play20](http://github.com/playframework/Play20) [twitter/finagle](http://github.com/twitter/finagle) [robey/kestrel](http://github.com/robey/kestrel) [akka/akka](http://github.com/akka/akka) [twitter/flockdb](http://github.com/twitter/flockdb) [twitter/gizzard](http://github.com/twitter/gizzard) [sbt/sbt](http://github.com/sbt/sbt) [scala/scala](http://github.com/scala/scala) [scalatra/scalatra](http://github.com/scalatra/scalatra) [twitter/zipkin](http://github.com/twitter/zipkin)

</small>
### Importing and using

The following instructions assume an OSX or Linux based host.

#### MongoDB

{%highlight bash%}
$ wget http://ghtorrent.org/data/msr14-mongo.tar.gz
$ tar zxvf msr14-mongo.tar.gz
$ mongorestore
$ mongo github
{%endhighlight %}

#### MySQL

{%highlight bash%}
$ wget http://ghtorrent.org/data/msr14-mysql.gz
$ mysql -u root -p
mysql > create user 'msr14'@'localhost' identified by 'msr14';
mysql> create database msr14;
mysql> GRANT ALL PRIVILEGES ON msr14.* to msr14@'localhost';
mysql> flush privileges;
# Exit MySQL prompt
$ zcat msr14-mysql.gz |mysql -u msr14 -p msr14
$ mysql -u msr14 -p msr14
{%endhighlight %}

### FAQ

Answers to frequently asked questions

#### Why a new dataset?
For practical reasons. The dataset is small enough to be used on a laptop,
yet rich enough to do really interesting research with it.


#### How can I ask a question about the dataset? 

Your question and the potential answer might be useful for other people as well, so please use the form below. 

{% include comments.html%}
    

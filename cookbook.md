---
layout: page
title: The GHTorrent cookbook
tagline:
---

The following assume that you have GHTorrent checked out and its
dependencies configured as appropriate. The first step to all
the items below is to change the working directory to the
GHTorrent checkout, i.e. `cd github-mirror`.

## General information

All GHTorrent commands accept the following important arguments:

* `-c`: Specifies the location of the configuration file. The config file is
auto discovered if it is in the same directory and named `config.yaml`
* `-t`: The GitHub token to use to do the API calls.
* `-l`: A limit to reqs/hr. This can be used to restrict the requests
* `-u`: A unique name for the running program, to differentiate
* `-v`: Verbose mode, means different things to different commands.

### Getting all info about a single repo

The following will retrieve all information from the beginning of time
for a single repo.

{% highlight bash%}
ruby -Ilib bin/ght-retrieve-repo gousiosg github-mirror
{% endhighlight %}

There are a few arguments for this command to make it faster for specific
cases:

* `-n`: Do not retrieve events
* `-o`: Do not retrieve entities
* `-y`: Only retrieve one entity type. For example `-y ensure_commits` will
retrieve just the commits and finish.
* `-r` and `-b`: Process all events before or after a specific date.

### Getting all info about a user

This will retrieve all data (followers, organizations etc) for a single
user/organization

{% highlight bash%}
ruby -Ilib bin/ght-retrieve-user gousiosg
{% endhighlight %}


The following will retrieve all users in the Microsoft organization

{% highlight bash%}
ruby -Ilib bin/ght-retrieve-user Microsoft
{% endhighlight %}

### Getting many users/repos in parallel

The quick and dirty solution is to use
[GNU Parallel](http://www.gnu.org/software/parallel/). To do that you need two files, one listing API keys (`keys.txt`) and one listing repository names (`projects.txt`), see for example:

{% highlight bash%}
$ head -n 5 projects.txt
eed3si9n scalaxb
pocorall scaloid
socrata-platform soql-bigquery-adapter
ReactiveMongo Play-ReactiveMongo
chrisdinn brando

$ head -n 5 keys.txt
# Not real keys
d15d119551fd194745cb81df4f4c68c55460bf37
c3a1a550bcfc39ea374452f95a1dbe3002a3b8ab
ea9e186f882c853fe0eb3e387b8c01aafdca8645
bd3d11ae101cf931aed92f76ffc2f6ba40e3c9fa
c6e15a389537675539ddd4bf1ef7e0f96520ec3e
{% endhighlight %}

Then you can use GNU `parallel` like so:

{% highlight bash%}
parallel --no-notice --gnu --progress --joblog parjobs --xapply -P 4 \
 ruby -Ilib bin/ght-retrieve-repo -c config.yaml -t {3} {1} {2} \
 ::: `cat projects.txt | cut -f1 -d' '` \
 ::: `cat projects.txt|cut -f2 -d' '` \
 ::: `cat keys.txt`
{% endhighlight %}

The important parameter to tune here is `-P`, the number of parallel processes.
To retrieve users in parallel, you need to replace `ght-retrieve-repo` with
`ght-retrieve-user`.

### Loading items to the queue

In some cases (e.g. bugs, network glitches etc), some events might
remain unprocessed. In other cases, you might want some events on
the queue, e.g. to test new functionality. The tool to use in this case
is `ght-load`. Below are some use cases:

{% highlight bash%}
# Load all PushEvents since yesterday
ruby -Ilib bin/ght-load -v -e `gdate +%s --date '1 day ago'` -f PushEvent

# Load all events of previous day at a rate of 10 events/sec
ruby -Ilib bin/ght-load -v -r 10 -e `gdate +%s --date '1 day ago'` -t gdate +%s --date '2 days ago'`

# Load all events of previous day at a rate of 10 events/sec
ruby -Ilib bin/ght-load -v -r 10 -e `gdate +%s --date '1 day ago'` -t gdate +%s --date '2 days ago'`
{% endhighlight %}


`ght-load` can also be used to load arbitrary items read from files
 rather than MongoDB. In this case, a routing key can be attached
 in order for the loaded items to go to the appropriate queue.

{% highlight bash%}
# Load items from file with a routing key
ruby -Ilib bin/ght-load -i users.txt -o 'evt.users'
{% endhighlight %}


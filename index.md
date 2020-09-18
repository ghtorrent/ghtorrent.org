---
layout: page
title: The GHTorrent project
tagline:
---

Welcome to the GHTorrent project, an effort to create a scalable, queriable,
offline mirror of data offered through the [Github REST API](http://developer.github.com).

Follow [@ghtorrent](https://twitter.com/ghtorrent) on Twitter for project
updates and [exciting research](halloffame.html) done with GHTorrent.

## What does GHTorrent do?

GHTorrent monitors the [Github public event time
line](https://api.github.com/events). For each event, it retrieves its contents
and their dependencies, exhaustively. It then stores the raw JSON responses to a
[MongoDB database](raw.html), while also extracting their structure in a [MySQL
database](relational.html).

GHTorrent works in a distributed manner. A [RabbitMQ](http://www.rabbitmq.com/)
message queue sits between the event mirroring and data retrieval phases, so
that both can be run on a cluster of machines. Have a look at this
[presentation](https://speakerdeck.com/gousiosg/mining-github-for-fun-and-profit)
and read [this paper](http://gousios.gr/bibliography/GS12.html) if you want to
know more. Here is the [source code](https://github.com/gousiosg/github-mirror).

The project releases the data collected during that period as
[downloadable archives](downloads.html).

### How much data do you have?

Currently (Jan 2020), MongoDB stores around 18TB of JSON data (compressed), while
MySQL more than 6.5 billion rows of extracted metadata. A large part of the
activity of 2012-2019 has been retrieved, while we are also
going backwards to retrieve the full recorded history of important projects.

### How can I help?

GHTorrent needs contributions on the following fronts:

* **API keys:** We can run multiple GHTorrent worker instances concurrently. To
go over Github's API rate limit, we need multiple Github API keys provided by
users. If you use GHTorrent for your reseach, please consider [donating a
key](services.html).

* **Linking and analysis:** GHTorrent currently only does limited analysis and
linking within the the dataset (user geolocation). There are many possibilities
for expansion. One could for example think of linking commits to issues.

* **Reporting bugs:** Please use Github's [issue tracker here](https://github.com/gousiosg/ghtorrent.org/issues) 
to report any data consistency issues you have found.

### Why did you do it?

We are doing research on [software analytics](http://gousios.org/research.html).
Github is an exciting data source for us, one that has several of the
problems we are facing as data miners solved. The uniformity of data
will allow scaling of research to hundreds or thousands of repositories
spanning across multiple languages and application domains.

### Why the name?

Initially the project offered the data through the Bittorrent network (gh: from
GitHub, torrent: from Bittorrent). As currently the data is only offered through
HTTP, the name signifies a [torrent](https://en.wiktionary.org/wiki/torrent) of
data coming from GitHub.

### Can I know more?

Have a look at the following presentation for an introduction.

<div style="width: 50%;margin-left:auto;margin-right:auto;">
<script async class="speakerdeck-embed" data-id="c25d64607e600130294c22000a9f019a" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>
</div>

### How can I cite this work?

If you find this dataset useful and want to use it in your work, please cite the
following paper:

Georgios Gousios: [The GHTorrent dataset and tool
suite](http://www.gousios.gr/bibliography/G13.html). MSR 2013: 233-236

{%highlight text%}
@inproceedings{Gousi13,
  author = {Gousios, Georgios},
  title = {The GHTorrent dataset and tool suite},
  booktitle = {Proceedings of the 10th Working Conference on Mining Software
    Repositories},
  series = {MSR '13},
  year = {2013},
  isbn = {978-1-4673-2936-1},
  location = {San Francisco, CA, USA},
  pages = {233--236},
  numpages = {4},
  url = {http://dl.acm.org/citation.cfm?id=2487085.2487132},
  acmid = {2487132},
  publisher = {IEEE Press},
  address = {Piscataway, NJ, USA},
}
{%endhighlight%}

### Latest news

<a class="twitter-timeline"
  data-widget-id="608916912693751808"
  href="https://twitter.com/ghtorrent"
  data-screen-name="ghtorrent">
Latest news
</a>

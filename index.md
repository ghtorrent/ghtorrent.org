---
layout: page
title: The GHTorrent project 
tagline: Github's data from a firehose 
---
{% include JB/setup %}

Welcome to the GHTorrent project, an effort to create a scalable, queriable,
offline mirror of data offered through the [Github REST API](http://developer.github.com).

###What does GHTorrent do?

GHTorrent monitors the [Github public event time
line](https://api.github.com/events). For each event, it retrieves its contents
and their dependencies, exhaustively. It then stores the raw JSON responses to a
[MongoDB database](raw.html), while also extracting their structure in a [MySQL
database](relational.html). 

GHTorrent works in a distributed manner. A [RabbitMQ](http://www.rabbitmq.com/)
message queue sits between the event mirroring and data retrieval phases, 
so that both can be run on a cluster of machines.

Every two months, the project releases the data collected during that period as
[downloadable archives](downloads.html), also shared with the Bittorent
protocol.

See the following presentation for a short introduction.

<div style="width: 60%;margin-left:auto;margin-right:auto;">
<script class="speakerdeck-embed" data-id="75bea5909fbb0130f0eb364613f6f036" data-ratio="1.33333" src="//speakerdeck.com/assets/embed.js"></script>
</div>

### How much data do you have?

Currently, MongoDB stores around 1.8 TB of JSON data, while MySQL more than
500 million rows of extracted metadata. A big part of the activity of 2012
and half of 2013
has been retrieved, while we are also going backwards to retrieve the full
recorded history of important projects.

### How can I help?

GHTorrent needs contributions on the following fronts:

* Workers: Github is huge and it is growing bigger every day. Our networking
and Github account resources are struggling to keep up. 
To help, you can setup a [mirroring client](docs.html), that uses our queues and
databases for retrieval and storage. Don't hesitate to [contact
us](mailto:gousiosg@gmail.com) to help you with that.
<!--Alternatively, you can download our preconfigured [virtual machine](vm.html);
it should then be trivial to insert your Github login details and let it
do the rest!-->

* Linking and analysis: GHTorrent currently does not do any analysis and linking
in the dataset, for example the linking of commits to issues.

### Why did you do it?

We are doing research on [software repositories](http://www.msrconf.org/).
Github is an exciting new data source for us, one that has several of the
problems we are facing as data miners solved. The uniformity of data 
will allow scaling of research to hundreds or thousands of repositories
spanning across multiple languages and application domains.


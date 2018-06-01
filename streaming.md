---
layout: page
title: Streaming updates from GHTorrent
tagline:
---

## Connection details

To obtain access, please send us your public key [as described here](services.html).

```
ssh -L 5672:streamer.ghtorrent.org:5672 ghtorrent@streamer.ghtorrent.org
```

This will create a local port 5672 to which you can connect your AMQP client.
No shell is allocated for security reasons.

## Declaring queues

Our queue server, [RabbitMQ](https://www.rabbitmq.com) implements the
[AMQP protocol](https://en.wikipedia.org/wiki/Advanced_Message_Queuing_Protocol). Some familiarity with it is necessary
before using the streaming service. The [RabbitMQ getting started page](https://www.rabbitmq.com/getstarted.html) is
a very good starting point with lots of examples in many languages.

The streaming service uses topic exchanges and concequently message-based
routing (see [here](https://www.rabbitmq.com/tutorials/tutorial-five-python.html) for details). To start receiving messages, a client needs to:

1. connect to the server
2. declare a queue
3. bind the declared queue to the default exchange with routing key

The following examples are in Ruby.

### Connecting to the server

Assuming your connection works as described above, you should have port
5672 listening on localhost. You should connect and define the `ght-streams`
exchange (if you define other exchnages, you will receive no messages
as there is no script posting to them).

{% highlight ruby%}
#!/usr/bin/env ruby

require 'bunny'
conn = Bunny.new(:host => '127.0.0.1', :port => 5672,
                 :username => 'streamer', :password => 'streamer')
conn.start
ch  = conn.create_channel
exchange = ch.topic('ght-streams', :durable => true)
{% endhighlight%}

### Declaring a queue

You can declare as many queues as you want (within reasonable limits). To
make the queue unique, we ask you to prefix your queue name with your
username (e.g. `gousiosg_queue`). You should also make your queue
non persistent, to avoid consuming server resouces when your program
finishes.

{% highlight ruby%}
q = ch.queue("gousiosg_queue", :auto_delete => true)
{% endhighlight%}

### Binding queues to routing keys

All messages posted to `ght-streams` exchange have an attached routing key.
This allows clients to declare queues that selectively receive only
the messages they are interested into. The routing key is structured as
follows:

{% highlight%}
prefix.{entity|event}.action
{% endhighlight%}

The `prefix` denotes the type of the updated item

* `evt`: Denotes a GitHub event, as received by GHTorrent
* `ent`: Denotes an update in a MongoDB collection

The second part of the key denotes the updated item; its value depends on
the `prefix`. The permitted values are the following:

* For `evt` prefixes, it is the name of a [public GitHub event](https://developer.github.com/v3/activity/events/types/) shortened and lower-cased:
`commitcomment`,
`create`,
`delete`,
`deployment`,
`deploymentstatus`,
`download`,
`follow`,
`fork`,
`forkapply`,
`gist`,
`gollum`,
`issuecomment`,
`issues`,
`member`,
`membership`,
`pagebuild`,
`public`,
`pullrequest`,
`pullrequestreviewcomment`,
`push`,
`release`,
`repository`,
`status`,
`teamadd`,
`watch`

* For `ent` prefixes, it is the name of the MongoDB collection that was updated. One of:
`commit_comments`,
`commits`,
`followers`,
`forks`,
`geo_cache`,
`issue_comments`,
`issue_events`,
`issues`,
`org_members`,
`pull_request_comments`,
`pull_requests`,
`repo_collaborators`,
`repo_labels`,
`repos`,
`users`,
`watchers`

The third part of the routing key denotes the update action. The allowed
values are (this only applies to `ent` type messages; `evt` type messages
are only marked as `insert`):

* `insert`: An insertion of a record to a MongoDB collection
* `delete`: A deletion from a MongoDB record
* `update`: An update to a MongoDB record

Let's see some example routing keys:

* `evt.repos.insert`: This will retrieve all new inserts to the `repos`
collection
* `evt.fork.*`: This will retrieve all fork events
* `ent.*.update`: This will retrieve all updates on MongoDB collections
* `*.*.insert`: This will retrieve all new events and all MongoDB inserts

{% highlight ruby%}
q.bind(exchange, :routing_key => "evt.fork.*")
q.subscribe do |delivery_info, metadata, payload|
  puts "#{delivery_info.routing_key}: #{payload}"
end
{% endhighlight %}

## Things to consider

* Queues are configured to be garbage collected when the client that declared them has been disconnected.
* Messages have a pre-configured Time-To-Live equal to 1 minute. If your client
is not fast enough, they will be discarded. For this reason, we recommend
client-side buffering of unprocessed messages.
* All exchanges not named `ght-streams` are deleted every 5 minutes.
* All queues not prefixed with `username_` are deleted every 5 minutes.

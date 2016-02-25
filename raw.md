---
layout: page
title: Querying MongoDB programmatically
tagline:
---

While the GHTorrent project offers downloadable versions of the MongoDB raw
dataset, downloading and restoring them to MongoDB can be very time consuming.
For this reason, we have created a publicly available version of the data as
they are collected by our main MongoDB server.
The only prerequisite is to have a MongoDB client (command line, graphical
or program library) and SSH installed on your machine.

## Connection details

To obtain access, please send us your public key [as described here](services.html).

1. When we contact you back, you will be able to setup an SSH tunnel with the
following command: `ssh -L 27017:dutihr.st.ewi.tudelft.nl:27017
ghtorrent@dutihr.st.ewi.tudelft.nl`. Keep in mind that no shell will be
allocated in the open SSH session.

2. You will then be able to connect to our server using the command: `mongo
-u ghtorrentro -p ghtorrentro github`.

Here is an example session:

{% highlight bash%}
####
# on terminal session 1
$ ssh -L 27017:dutihr.st.ewi.tudelft.nl:27017 ghtorrent@dutihr.st.ewi.tudelft.nl
PTY allocation request failed on channel 2
#####
# on a different terminal
$ mongo -u ghtorrentro -p ghtorrentro github
MongoDB shell version: 3.0.3
connecting to: github
>
> db.events.count()
401209493
> db.commits.count()
311041915
>
{% endhighlight %}


## Collections available in MongoDB

Have a look [here](mongo.html).

Due to its heavy load, the MongoDB server cannot process non-indexed field
searches within the 100 sec time limit. To address this situation, we
recommend querying MySQL first to get references to the data you want and
then use MongoDB to get the raw data.

Below are the fields that MongoDB uses as indexes. Make sure your query hits
those, otherwise querying is going to be extremely slow (and will overload our
server as well).

<script src="http://gist-it.appspot.com/https://github.com/gousiosg/github-mirror/blob/master/lib/ghtorrent/adapters/mongo_persister.rb?slice=21:41">
</script>

## Things to keep in mind

1. The hosting machine, while powerful, is not capable of processing the data
very quickly. At the time of this writing, the data is more than 10TB.

2. Other people may be using the machine as well. Make sure that you do not
run very heavy queries. It is better to run many small queriess (e.g. in
a loop) than aggregation queries. Make sure you only query on indexed fields.

3. Queries running in excess of 100 seconds are killed without any warning.

4. At any time the machine may become unavailable.

5. Some data may be missing; if you are willing to provide workers to collect
them, please [contact us](mailto:gousiosg@gmail.com).

6. The data is provided in kind to help other people to do research with
Please do not abuse the service.

7. The data is offered as is without any explicit or implicit quality or
service guarantee from our part.

8. All operations are logged for security purposes.


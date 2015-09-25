---
layout: page
title: Querying MongoDB
tagline:
---

While the GHTorrent project offers downloadable versions of the MongoDB raw
dataset, downloading and restoring them to MongoDB can be very time consuming.
For this reason, we have created a publicly available version of the data as
they are collected by our main MongoDB server.
The only prerequisite is to have a MongoDB client (command line, graphical
or program library) and SSH installed on your machine.

### Obtaining access

1. [Send us](mailto:gousiosg@gmail.com) you public SSH key (usually in `~/.ssh/id_rsa.pub`). To create one, use `ssh-keygen`. We need your API key *as a file attachment*, because various email clients tend to break key strings at arbitraty locations.
2. When we contact you back, you will be able to setup an SSH tunnel with the
following command: `ssh -L 27017:dutihr.st.ewi.tudelft.nl:27017 ghtorrent@dutihr.st.ewi.tudelft.nl`. Keep in mind that no shell will be allocated in the open SSH session.
3. You will then be able to connect to our server using the command: `mongo
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


### Fair use

To address GitHub's growth and GHTorrent's growing demands in API calls and the
community's demand for better, more rich data, we need more GitHub API keys. We
therefore kindly ask you to send us a GitHub API key (a “personal access token” as Github describes it) with your SSH key.

The process to create a key is simple: First, go to the following URL (while logged in):

[https://github.com/settings/tokens/new](https://github.com/settings/tokens/new
)

deselect *all* checkboxes *except* from `public_repo`, set a token name and click on "Generate Token".

Please note that it is possible to specify the maximum number of requests per hour that you would like to donate to GHTorrent. By default, GHTorrent uses the maximum allowed by GitHub (5k/hour), but if you are using the GitHub API for other projects/services, you might want to restrict this. A typical service like Travis only uses a few requests per hour, even on busy projects.

**If you do not want us to use your key any more, do let us know.** Do not
just delete your key from GitHub as this will create holes in the data
collection until we notice and remove your key. If this happens, we will also
ban you indefinetely from the MongoDB access service.

At the moment, this is a request in kind. If demand continues to grow and supply
of keys is not enough to keep up, we might turn this into an obligatory step.

### Collections available in MongoDB

Have a look [here](mongo.html).


Due to its heavy load, the MongoDB server cannot process non-indexed field
searches within the 100 sec time limit. To address this situation, we
recommend querying MySQL first to get references to the data you want and
then use MongoDB to get the raw data.

Below are the fields that MongoDB uses as indexes. Make sure your query hits
those, otherwise querying is going to be extremely slow (and will overload our
server as well).

<script src="http://gist-it.appspot.com/https://github.com/gousiosg/github-mirror/blob/master/lib/ghtorrent/adapters/mongo_persister.rb?slice=21:40">
</script>

### Things to keep in mind

1. The hosting machine, while powerful, is not capable of processing the data
very quickly. At the time of this writing, the data is more than 6.5TB.
2. Other people may be using the machine as well. Make sure that you do not run
very heavy queries. It is better to run many small queriess (e.g. in a loop) than aggregation queries. Make sure you only query on indexed fields.
3. Queries running in excess of 100 seconds are killed without any warning.
4. At any time the machine may become unavailable.
5. Some data may be missing; if you are willing to provide workers to collect
them, please [contact us](mailto:gousiosg@gmail.com).
6. The data is provided in kind to help other people to do research with. Please
do not abuse the service.
7. The data is offered as is without any explicit or implicit quality or service guarantee from our part.
8. All operations are logged for security purposes.

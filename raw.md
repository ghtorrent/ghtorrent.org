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

1. [Send us](mailto:gousiosg@gmail.com) you public SSH key (usually in `~/.ssh/id_rsa.pub`)
2. When we contact you back, you will be able to setup an SSH tunnel with the
following command: `ssh -L 27017:dutihr.st.ewi.tudelft.nl:27017 ghtorrent@dutihr.st.ewi.tudelft.nl`. 
Keep in mind that no shell will be allocated in the open SSH session. 
3. You will then be able to connect to our server using the command: `mongo
-u ghtorrentro -p ghtorrentro github`. 

### Collections available in MongoDB

Have a look [here](mongo.html).

### Things to keep in mind

1. The hosting machine, while powerful, is not capable of processing the data
very quickly. At the time of this writing, the data is more than 5.5TB.
2. Other people may be using the machine as well. Make sure that you do not run
very heavy queries. Make sure you only query on indexed fields. Queries
running in excess of 10 minutes will be killed without any warning. 
3. At any time the machine may become unavailable.
4. Some data may be missing; if you are willing to provide workers to collect
them, please [contact us](mailto:gousiosg@gmail.com).
5. The data is provided in kind to help other people to do research with. Please
do not abuse the service.
6. The data is offered as is without any explicit or implicit quality or service guarantee from our part.
7. All operations are logged for security purposes. 

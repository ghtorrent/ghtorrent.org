---
layout: page
title: Querying MySQL programmatically
tagline:
---

To connect to the MySQL programmatic endpoint, you need a MySQL client (command
line, graphical or program library) and SSH installed on your machine.

## Connection details

To obtain access, please send us your public key [as described here](services.html).

1. When we contact you back, you will be able to setup an SSH tunnel with the
following command: `ssh -L 3306:web.ghtorrent.org:3306 ghtorrent@web.ghtorrent.org`. Keep in mind that no shell will be allocated in the open SSH session.

2. You will then be able to connect to our server using the command: `mysql -u ght -h 127.0.0.1 ghtorrent` (user name: ght, no password, database: ghtorrent).

Here is an example session:

{% highlight bash%}
####
# on terminal session 1
$ ssh -L 3306:web.ghtorrent.org:3306 ghtorrent@web.ghtorrent.org
PTY allocation request failed on channel 2
#####
# on a different terminal
$ mysql -u ght -h 127.0.0.1 ghtorrent
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 1004
Server version: 5.5.5-10.1.11-MariaDB-1~wily mariadb.org binary distribution

Copyright (c) 2000, 2015, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
mysql> show tables;
+-----------------------+
| Tables_in_ghtorrent   |
+-----------------------+
| commit_comments       |
[...]
| users                 |
| watchers              |
+-----------------------+
21 rows in set (0.20 sec)

{% endhighlight %}

## Database schema

Have a look [here](relational.html).

## Things to keep in mind

1. The hosting machine, while powerful, is not capable of processing the data
very quickly.

2. Other people may be using the machine as well. Make sure that you do not
run very heavy queries. It is better to run many small queries (e.g. in
a loop) than aggregation queries. Make sure you only query on indexed fields.

3. Queries running in excess of 100 seconds are killed without any warning.

4. At any time the machine may become unavailable.

5. The data is provided in kind to help other people to do research with
Please do not abuse the service.

6. The data is offered as is without any explicit or implicit quality or
service guarantee from our part.

7. All operations are logged for security purposes.

---
layout: page
title: Downloads
tagline:
---

### What am I downloading?

* The MySQL dump is a full, up to date database dump. You can use it for querying the latest available data.
* The MongoDB dumps are incremental. They are provided mostly for reference and backup purposes, as they may contain duplicates. The reasons for this are the following:
  * When refreshing project data, old records are deleted and new are added. This cannot be reflected in the dumps (it is not practical to regenerate all dumps every time).
  * The dumps have already been restored once, hence the dump dates do not
represent the actual data generation dates.

For those reasons, we recommend using the MongoDB data through our [query
service](http://ghtorrent.org/raw.html).

### MySQL database dumps
<button type="button" class="btn btn-success">New!</button> As of MySQL dump
`mysql-2015-09-25`, we are distributing CSV files (one file per table) instead
of `mysqldump` based backups. The provided archive expands to a directory
including a restore script and instructions on how to do the restore. See more
information [here](https://github.com/gousiosg/github-mirror/tree/master/sql).

You can also [query MySQL](/dblite). It is always loaded with the latest
dump.


* [2016-06-16](https://ghtstorage.blob.core.windows.net/downloads/mysql-2016-06-16.tar.gz) (40457 MB)
* [2016-06-01](https://ghtstorage.blob.core.windows.net/downloads/mysql-2016-06-01.tar.gz) (39851 MB)
* [2016-05-04](https://ghtstorage.blob.core.windows.net/downloads/mysql-2016-05-04.tar.gz) (38618 MB)
* [2016-04-19](https://ghtstorage.blob.core.windows.net/downloads/mysql-2016-04-19.tar.gz) (38247 MB)
* [2016-03-16](https://ghtstorage.blob.core.windows.net/downloads/mysql-2016-03-16.tar.gz) (36914 MB)
* [2016-03-01](https://ghtstorage.blob.core.windows.net/downloads/mysql-2016-03-01.tar.gz) (36228 MB)
* [2016-02-16](https://ghtstorage.blob.core.windows.net/downloads/mysql-2016-02-16.tar.gz) (35574 MB)
* [2016-02-01](https://ghtstorage.blob.core.windows.net/downloads/mysql-2016-02-01.tar.gz) (34969 MB)
* [2016-01-16](https://ghtstorage.blob.core.windows.net/downloads/mysql-2016-01-16.tar.gz) (34178 MB)
* [2016-01-08](https://ghtstorage.blob.core.windows.net/downloads/mysql-2016-01-08.tar.gz) (33942 MB)
* [2015-09-25](https://ghtstorage.blob.core.windows.net/downloads/mysql-2015-09-25.tar.gz) (32273 MB)
* [2015-08-07](https://ghtstorage.blob.core.windows.net/downloads/mysql-2015-08-07.sql.gz) (31537 MB)
* [2015-06-18](https://ghtstorage.blob.core.windows.net/downloads/mysql-2015-06-18.sql.gz) (33476 MB)
* [2015-04-01](https://ghtstorage.blob.core.windows.net/downloads/mysql-2015-04-01.sql.gz) (25075 MB)
* [2015-01-04](https://ghtstorage.blob.core.windows.net/downloads/mysql-2015-01-04.sql.gz) (16583 MB)
* [2014-11-10](https://ghtstorage.blob.core.windows.net/downloads/mysql-2014-11-10.sql.gz) (14418 MB)
* [2014-08-18](https://ghtstorage.blob.core.windows.net/downloads/mysql-2014-08-18.sql.gz) (11485 MB)
* [2014-04-02](https://ghtstorage.blob.core.windows.net/downloads/mysql-2014-04-02.sql.gz) (7013 MB)
* [2014-01-02](https://ghtstorage.blob.core.windows.net/downloads/mysql-2014-01-02.sql.gz) (5646 MB)
* [2013-10-12](https://ghtstorage.blob.core.windows.net/downloads/mysql-2013-10-12.sql.gz) (4312 MB)

## MongoDB database dumps

The MongoDB backups come in different formats:

* Bi-montly and by collection, from August 2015 up to Nov 2015
* Daily from 2015-12-01, includes all collections

To restore the full database, you need to download, extract and restore
all of them.

### Daily dumps

[2016-07-01](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-07-01.tar.gz),
[2016-06-30](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-30.tar.gz),
[2016-06-29](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-29.tar.gz),
[2016-06-28](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-28.tar.gz),
[2016-06-27](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-27.tar.gz),
[2016-06-26](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-26.tar.gz),
[2016-06-25](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-25.tar.gz),
[2016-06-24](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-24.tar.gz),
[2016-06-23](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-23.tar.gz),
[2016-06-22](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-22.tar.gz),
[2016-06-21](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-21.tar.gz),
[2016-06-20](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-20.tar.gz),
[2016-06-19](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-19.tar.gz),
[2016-06-18](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-18.tar.gz),
[2016-06-17](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-17.tar.gz),
[2016-06-16](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-16.tar.gz),
[2016-06-15](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-15.tar.gz),
[2016-06-13](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-13.tar.gz),
[2016-06-12](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-12.tar.gz),
[2016-06-11](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-11.tar.gz),
[2016-06-10](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-10.tar.gz),
[2016-06-09](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-09.tar.gz),
[2016-06-08](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-08.tar.gz),
[2016-06-07](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-07.tar.gz),
[2016-06-06](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-06.tar.gz),
[2016-06-05](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-05.tar.gz),
[2016-06-04](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-04.tar.gz),
[2016-06-03](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-03.tar.gz),
[2016-06-02](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-02.tar.gz),
[2016-06-01](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-06-01.tar.gz),
[2016-05-31](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-31.tar.gz),
[2016-05-30](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-30.tar.gz),
[2016-05-29](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-29.tar.gz),
[2016-05-28](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-28.tar.gz),
[2016-05-27](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-27.tar.gz),
[2016-05-26](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-26.tar.gz),
[2016-05-25](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-25.tar.gz),
[2016-05-24](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-24.tar.gz),
[2016-05-23](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-23.tar.gz),
[2016-05-22](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-22.tar.gz),
[2016-05-21](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-21.tar.gz),
[2016-05-20](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-20.tar.gz),
[2016-05-19](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-19.tar.gz),
[2016-05-18](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-18.tar.gz),
[2016-05-17](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-17.tar.gz),
[2016-05-16](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-16.tar.gz),
[2016-05-15](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-15.tar.gz),
[2016-05-14](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-14.tar.gz),
[2016-05-13](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-13.tar.gz),
[2016-05-12](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-12.tar.gz),
[2016-05-11](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-11.tar.gz),
[2016-05-10](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-10.tar.gz),
[2016-05-09](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-09.tar.gz),
[2016-05-08](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-08.tar.gz),
[2016-05-07](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-07.tar.gz),
[2016-05-06](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-06.tar.gz),
[2016-05-05](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-05.tar.gz),
[2016-05-04](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-04.tar.gz),
[2016-05-03](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-03.tar.gz),
[2016-05-02](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-02.tar.gz),
[2016-05-01](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-05-01.tar.gz),
[2016-04-30](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-30.tar.gz),
[2016-04-29](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-29.tar.gz),
[2016-04-28](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-28.tar.gz),
[2016-04-27](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-27.tar.gz),
[2016-04-26](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-26.tar.gz),
[2016-04-25](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-25.tar.gz),
[2016-04-24](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-24.tar.gz),
[2016-04-23](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-23.tar.gz),
[2016-04-22](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-22.tar.gz),
[2016-04-21](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-21.tar.gz),
[2016-04-20](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-20.tar.gz),
[2016-04-19](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-19.tar.gz),
[2016-04-18](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-18.tar.gz),
[2016-04-17](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-17.tar.gz),
[2016-04-16](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-16.tar.gz),
[2016-04-15](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-15.tar.gz),
[2016-04-14](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-14.tar.gz),
[2016-04-13](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-13.tar.gz),
[2016-04-12](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-12.tar.gz),
[2016-04-11](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-11.tar.gz),
[2016-04-10](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-10.tar.gz),
[2016-04-09](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-09.tar.gz),
[2016-04-08](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-08.tar.gz),
[2016-04-07](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-07.tar.gz),
[2016-04-06](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-06.tar.gz),
[2016-04-05](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-05.tar.gz),
[2016-04-04](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-04.tar.gz),
[2016-04-03](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-03.tar.gz),
[2016-04-02](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-02.tar.gz),
[2016-04-01](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-04-01.tar.gz),
[2016-03-31](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-31.tar.gz),
[2016-03-30](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-30.tar.gz),
[2016-03-29](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-29.tar.gz),
[2016-03-28](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-28.tar.gz),
[2016-03-27](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-27.tar.gz),
[2016-03-26](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-26.tar.gz),
[2016-03-25](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-25.tar.gz),
[2016-03-24](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-24.tar.gz),
[2016-03-23](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-23.tar.gz),
[2016-03-22](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-22.tar.gz),
[2016-03-21](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-21.tar.gz),
[2016-03-20](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-20.tar.gz),
[2016-03-19](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-19.tar.gz),
[2016-03-18](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-18.tar.gz),
[2016-03-17](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-17.tar.gz),
[2016-03-16](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-16.tar.gz),
[2016-03-15](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-15.tar.gz),
[2016-03-14](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-14.tar.gz),
[2016-03-13](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-13.tar.gz),
[2016-03-12](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-12.tar.gz),
[2016-03-11](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-11.tar.gz),
[2016-03-10](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-10.tar.gz),
[2016-03-09](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-09.tar.gz),
[2016-03-08](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-08.tar.gz),
[2016-03-07](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-07.tar.gz),
[2016-03-06](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-06.tar.gz),
[2016-03-05](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-05.tar.gz),
[2016-03-04](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-04.tar.gz),
[2016-03-03](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-03.tar.gz),
[2016-03-02](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-02.tar.gz),
[2016-03-01](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-03-01.tar.gz),
[2016-02-29](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-29.tar.gz),
[2016-02-28](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-28.tar.gz),
[2016-02-27](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-27.tar.gz),
[2016-02-26](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-26.tar.gz),
[2016-02-25](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-25.tar.gz),
[2016-02-24](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-24.tar.gz),
[2016-02-23](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-23.tar.gz),
[2016-02-22](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-22.tar.gz),
[2016-02-21](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-21.tar.gz),
[2016-02-20](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-20.tar.gz),
[2016-02-19](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-19.tar.gz),
[2016-02-18](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-18.tar.gz),
[2016-02-17](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-17.tar.gz),
[2016-02-16](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-16.tar.gz),
[2016-02-15](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-15.tar.gz),
[2016-02-14](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-14.tar.gz),
[2016-02-13](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-13.tar.gz),
[2016-02-12](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-12.tar.gz),
[2016-02-11](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-11.tar.gz),
[2016-02-10](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-10.tar.gz),
[2016-02-09](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-09.tar.gz),
[2016-02-08](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-08.tar.gz),
[2016-02-07](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-07.tar.gz),
[2016-02-06](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-06.tar.gz),
[2016-02-05](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-05.tar.gz),
[2016-02-04](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-04.tar.gz),
[2016-02-02](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-02.tar.gz),
[2016-02-01](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-02-01.tar.gz),
[2016-01-31](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-31.tar.gz),
[2016-01-30](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-30.tar.gz),
[2016-01-29](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-29.tar.gz),
[2016-01-28](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-28.tar.gz),
[2016-01-27](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-27.tar.gz),
[2016-01-26](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-26.tar.gz),
[2016-01-25](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-25.tar.gz),
[2016-01-24](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-24.tar.gz),
[2016-01-23](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-23.tar.gz),
[2016-01-22](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-22.tar.gz),
[2016-01-21](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-21.tar.gz),
[2016-01-20](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-20.tar.gz),
[2016-01-19](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-19.tar.gz),
[2016-01-18](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-18.tar.gz),
[2016-01-17](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-17.tar.gz),
[2016-01-16](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-16.tar.gz),
[2016-01-15](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-15.tar.gz),
[2016-01-14](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-14.tar.gz),
[2016-01-13](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-13.tar.gz),
[2016-01-12](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-12.tar.gz),
[2016-01-11](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-11.tar.gz),
[2016-01-10](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-10.tar.gz),
[2016-01-09](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-09.tar.gz),
[2016-01-08](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-08.tar.gz),
[2016-01-07](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-07.tar.gz),
[2016-01-06](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-06.tar.gz),
[2016-01-05](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-05.tar.gz),
[2016-01-04](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-04.tar.gz),
[2016-01-03](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-03.tar.gz),
[2016-01-02](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-02.tar.gz),
[2016-01-01](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2016-01-01.tar.gz),
[2015-12-31](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-31.tar.gz),
[2015-12-30](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-30.tar.gz),
[2015-12-29](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-29.tar.gz),
[2015-12-28](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-28.tar.gz),
[2015-12-27](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-27.tar.gz),
[2015-12-26](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-26.tar.gz),
[2015-12-25](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-25.tar.gz),
[2015-12-24](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-24.tar.gz),
[2015-12-23](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-23.tar.gz),
[2015-12-22](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-22.tar.gz),
[2015-12-21](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-21.tar.gz),
[2015-12-20](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-20.tar.gz),
[2015-12-19](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-19.tar.gz),
[2015-12-18](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-18.tar.gz),
[2015-12-17](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-17.tar.gz),
[2015-12-16](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-16.tar.gz),
[2015-12-15](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-15.tar.gz),
[2015-12-14](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-14.tar.gz),
[2015-12-13](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-13.tar.gz),
[2015-12-12](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-12.tar.gz),
[2015-12-09](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-09.tar.gz),
[2015-12-08](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-08.tar.gz),
[2015-12-07](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-07.tar.gz),
[2015-12-06](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-06.tar.gz),
[2015-12-05](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-05.tar.gz),
[2015-12-04](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-04.tar.gz),
[2015-12-03](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-03.tar.gz),
[2015-12-02](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-02.tar.gz),
[2015-12-01](https://ghtstorage.blob.core.windows.net/downloads/mongo-dump-2015-12-01.tar.gz),

### Bi-montly dumps 
<button type="button" class="btn btn-info">Note</button> Due to space
constraints in our cloud provider, you can download the first dump
for the commits table from here:
[commits-1-dump.2015-08-04.tar.gz](http://dutiht.st.ewi.tudelft.nl/downloads/commits-dump.2015-08-03.tar.gz) (434GB) and
[commits-2-dump.2015-08-04.tar.gz](http://dutiht.st.ewi.tudelft.nl/downloads/commits-1-dump.2015-08-04.tar.gz) (908GB)


<table class="table table-hover table-condensed">
  <thead>
  <tr>
   <th>Dump date</th>
      <th>commit comments</th>
        <th>commits</th>
        <th>events</th>
        <th>followers</th>
        <th>forks</th>
        <th>geo cache</th>
        <th>issue comments</th>
        <th>issue events</th>
        <th>issues</th>
        <th>org members</th>
        <th>pull request comments</th>
        <th>pull requests</th>
        <th>repo collaborators</th>
        <th>repo labels</th>
        <th>repos</th>
        <th>users</th>
        <th>watchers</th>
       </tr>
  </thead>
  <tbody>
      <tr>
    <td>2015-12-01</td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/commit_comments-dump.2015-12-01.tar.gz">46 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/commits-dump.2015-12-01.tar.gz">125723 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/events-dump.2015-12-01.tar.gz">15342 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/followers-dump.2015-12-01.tar.gz">182 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/forks-dump.2015-12-01.tar.gz">69 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/geo_cache-dump.2015-12-01.tar.gz">6 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/issue_comments-dump.2015-12-01.tar.gz">884 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/issue_events-dump.2015-12-01.tar.gz">215 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/issues-dump.2015-12-01.tar.gz">560 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/org_members-dump.2015-12-01.tar.gz">3 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/pull_request_comments-dump.2015-12-01.tar.gz">406 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/pull_requests-dump.2015-12-01.tar.gz">1208 MB</a>
              </td>
              <td>      </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/repo_labels-dump.2015-12-01.tar.gz">111 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/repos-dump.2015-12-01.tar.gz">3615 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/users-dump.2015-12-01.tar.gz">59 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/watchers-dump.2015-12-01.tar.gz">539 MB</a>
              </td>
      </tr>
     <tr>
    <td>2015-10-03</td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/commit_comments-dump.2015-10-03.tar.gz">67 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/commits-dump.2015-10-03.tar.gz">180815 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/events-dump.2015-10-03.tar.gz">19539 MB</a>
              </td>
              <td>      </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/forks-dump.2015-10-03.tar.gz">89 MB</a>
              </td>
              <td>      </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/issue_comments-dump.2015-10-03.tar.gz">1189 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/issue_events-dump.2015-10-03.tar.gz">395 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/issues-dump.2015-10-03.tar.gz">961 MB</a>
              </td>
              <td>      </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/pull_request_comments-dump.2015-10-03.tar.gz">554 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/pull_requests-dump.2015-10-03.tar.gz">1362 MB</a>
              </td>
              <td>      </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/repo_labels-dump.2015-10-03.tar.gz">155 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/repos-dump.2015-10-03.tar.gz">1184 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/users-dump.2015-10-03.tar.gz">63 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/watchers-dump.2015-10-03.tar.gz">844 MB</a>
              </td>
      </tr>
     <tr>
    <td>2015-08-04</td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/commit_comments-dump.2015-08-04.tar.gz">475 MB</a>
              </td>
              <td>      </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/events-dump.2015-08-04.tar.gz">143319 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/followers-dump.2015-08-04.tar.gz">621 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/forks-dump.2015-08-04.tar.gz">3850 MB</a>
              </td>
              <td>      </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/issue_comments-dump.2015-08-04.tar.gz">8359 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/issue_events-dump.2015-08-04.tar.gz">2051 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/issues-dump.2015-08-04.tar.gz">6128 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/org_members-dump.2015-08-04.tar.gz">24 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/pull_request_comments-dump.2015-08-04.tar.gz">2783 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/pull_requests-dump.2015-08-04.tar.gz">10257 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/repo_collaborators-dump.2015-08-04.tar.gz">559 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/repo_labels-dump.2015-08-04.tar.gz">934 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/repos-dump.2015-08-04.tar.gz">13575 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/users-dump.2015-08-04.tar.gz">654 MB</a>
              </td>
              <td>          <a href="https://ghtstorage.blob.core.windows.net/downloads/watchers-dump.2015-08-04.tar.gz">3860 MB</a>
              </td>
      </tr>
    </tbody>
</table>


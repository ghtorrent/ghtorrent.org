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

### Which is the applicable license?

See [here](faq.html)

### MySQL database dumps
<button type="button" class="btn btn-success">New!</button> As of MySQL dump
`mysql-2015-09-25`, we are distributing CSV files (one file per table) instead
of `mysqldump` based backups. The provided archive expands to a directory
including a restore script and instructions on how to do the restore. See more
information [here](https://github.com/gousiosg/github-mirror/tree/master/sql).

You can also [query MySQL](/dblite). It is always loaded with the latest
dump.

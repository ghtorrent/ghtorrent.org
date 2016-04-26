---
layout: page
title: GHTorrent FAQ
tagline:
---

This is is the GHTorrent FAQ (work in progress). Please ask more questions using
the form below or by editing [this
file](https://github.com/ghtorrent/ghtorrent.org/blob/master/faq.md) directly on
GitHub.

## General

#### _What is GHTorrent?_

GHTorrent collects all information from the GitHub API and populates with it two
databases: one with [raw data](mongo.html) and one with [linked
entities](relational.html). Using this data, users can get insights just for
their repositories or for the full state of OSS development on GitHub.

GHTorrent has been extensively used by researchers, companies and OSS projects
as a source of software process and product analytics.

#### _Can I use GHTorrent for my research?_

Absolutely! [Lots of
researchers](https://scholar.google.gr/scholar?cites=11132126230347149781) have
[done so](halloffame.html). You can [download](download.html) the database dumps
or use the [online access services](services.html) to get access to the data.

When using GHTorrent data for research or large scale repository analysis,
please consider the perils reported in [this paper](http://gousios.gr/bibliography/KGBSGD15.html).

#### _How is behind GHTorrent?_

GHTorrent was initially created and is currently maintained by [Georgios
Gousios](http://gousios.gr), with initial design support and ideas from
[Diomidis Spinellis](http://spinellis.gr). Several users have contributed code,
ideas and support over time. Here is a (hopefuly not partial) list of them:

Sebastian Bates, Derek Brown, Arie van Deursen, Daniel German, Bogdan Vasilescu

Financial support has been provided by the following organizations:

* TU Delft: purchace and running costs for initial servers (2012 -- late 2015)
* Microsoft: donation of Azure tokens for running the project infrastructure
  (late 2015 -- late 2016)

## How can I...?

#### _...contribute to GHTorrent?_

#### _... cite the GHTorrent data set?_

#### _...download the data?_

You don't need to. GHTorrent offers a multitude of [online
services](services.html) that enable access to almost realtime versions
of the datastores. If you really want to, you can get all the data from
the [downloads](downloads.html) page.

#### _...use the data for my private project?_

## Data processing

### _What quality guarantees does GHTorrent offer?_

The GHTorrent data come as is with no quality guarantees. However, we are
actively seeking to fix systematic (i.e. errors that are repeated across the
whole dataset) data collection errors. Please [open an
issue](https://github.com/gousiosg/github-mirror/issues) if you find one. As
GHTorrent is essentially a data sync operation over unreliable networks,
spurious inconsistencies such as (minor) holes in data collection are
unavoidable.

### _I 've seen weird commit timestamps_

Git records the commit timestamp on the developer's workstation. If the clock
is missconfigured, timestamps will be weird. We have seen timestamps such
as `0000-01-01 00:00` or `2034-12-31 23:59`. GitHub and GHTorrent do not
process the timestamps in any way.

## Ethical use

### _What types of privacy guarantees does GHTorrent offer?_

GHTorrent collects publicly available data from the GitHub API.

### _How does GHTorrent handle my personal information?_

By personal information, we mean data that identify a real person uniquely. In
the context of GHTorrent, these are emails and real names.

As of Mar 2016, GHTorrent does not distribute any personal information by
default. Researchers whose research requires access to personal data
can use [this form](pers-data.html) to obtain it.

### _Contacting users for surveys_

(by @slang800)

Contacting GitHub users is sometimes necessary for research projects, but
certain people regard this as spam and do not appreciate it. Even people who
would ordinarily be willing to help in surveys can end up becoming hostile to
requests due to the frequency with which they receive them. Due to the number of
researchers who study the free software community, we have to be mindful of how
many emails we are sending. Here are some tips to avoid annoying people:

- Do not contact users who have signed up for the
  [do-not-survey-list](https://github.com/slang800/do-not-survey-list). These
  users have explicitly stated that they don't want to be involved in surveys.

- Try to limit your data collection to a sample of users. While it may be
  tempting to contact all 12 million developers, it is also likely to leave a
  bad impression of researchers in general, and can make future studies
  difficult.

- Don't contact people repeatedly if they fail to reply to your first email. If
  they weren't interested the first time, follow-ups are much more likely to
  bother them.

- Don't contact people who have chosen to hide their email address from their
  profile page. People frequently assume that hiding their email from their
  profile will prevent them from being contacted. Sometimes, they don't even
  realize that every commit they make is signed with their email, so we
  shouldn't assume that users are consenting to being contacted, without
  checking the display settings on their profile.

- Be especially careful when contacting highly-active developers. Not only to
  these people receive a massive amount of regular email from their
  participation in the free software community, but they are the sent a
  higher-than-average number of requests for surveys too.

{% include comments.html%}

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

GHTorrent has been extensively used by
[researchers](halloffame.html),
[companies](https://github.com/Microsoft/ghinsights) and OSS projects
as a source of software process and product analytics.

#### _Can I use GHTorrent for my research?_

Absolutely! [Lots of
researchers](https://scholar.google.gr/scholar?cites=11132126230347149781) have
[done so](halloffame.html). You can [download](download.html) the database dumps
or use the [online access services](services.html) to get access to the data.

When using GHTorrent data for research or large scale repository analysis,
please consider the perils reported in [this paper](http://gousios.org/bibliography/KGBSGD16.html).

#### _Which license is GHTorrent distributed under?_

 The GHTorrent dataset is distributed under a dual licensing scheme ([Creative Commons +](https://wiki.creativecommons.org/wiki/CCPlus)).

For non-commercial uses (including, but not limited to, educational, research or personal uses), the dataset is distributed under the [CC-BY-SA](http://creativecommons.org/licenses/by-sa/4.0/) license. <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a>

For commercial uses, please [contact the maintainer](mailto:gousiosg@gmail.com) for more information. 
Usually, a sizable donation to the project will be enough to grant you full access.

#### _Who is behind GHTorrent?_

GHTorrent was initially created and is currently maintained by [Georgios
Gousios](http://gousios.org), with initial design support and ideas from
[Diomidis Spinellis](http://spinellis.gr). Several users have contributed code,
ideas and support over time. Here is a (hopefuly not partial) list of them:

Sebastian Bates, Derek Brown, Arie van Deursen, Daniel German, Jeff McAffer, Bogdan Vasilescu

Financial support has been provided by the following organizations:

* TU Delft: purchace and running costs for initial servers (2012 -- late 2015)
* Microsoft: donation of Azure tokens for running the project infrastructure
  (late 2015 -- late 2019)
* TU Delft: purchace and running costs for servers (2020 -- onwards)

#### _How is GHTorrent different from Github Archive?_

[Github Archive](http://githubarchive.org) collects and stores the GitHub event
stream. In addition to that, GHTorrent applies dependency based retrieval on all
entities (e.g. commits, pull requests etc) that are linked from the events and
stores the results in two databases: a raw data one (MongoDB) that stores the
unprocessed responses from GitHub API and a relational one (MySQL) that stores
links between the entities (e.g. commits are linked to projects). Using
GHTorrent, developers can obtain an up-to-date, relational view of their
project’s GitHub metadata, which can be used for answering questions regarding
their project’s processes.

## How can I...?

#### _...contribute to GHTorrent?_

Please read the [contribution guide](contrib.html).

#### _... cite the GHTorrent data set?_

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

#### _...download the data?_

You can get all the data from the [downloads](downloads.html) page.

#### _...use the data for my private project?_

See the licensing information above.

## Data processing

#### _What quality guarantees does GHTorrent offer?_

The GHTorrent data come as is with no quality guarantees. However, we are
actively seeking to fix systematic (i.e. errors that are repeated across the
whole dataset) data collection errors. Please [open an
issue](https://github.com/gousiosg/github-mirror/issues) if you find one. As
GHTorrent is essentially a data sync operation over unreliable networks,
spurious inconsistencies such as (minor) holes in data collection are
unavoidable.

#### _I 've seen weird commit timestamps_

Git records the commit timestamp on the developer's workstation. If the clock
is missconfigured, timestamps will be weird. We have seen timestamps such
as `0000-01-01 00:00` or `2034-12-31 23:59`. GitHub and GHTorrent do not
process the timestamps in any way.

#### _My data is out of date_

Github only creates events when an entity is created and not when it is updated or deleted. It is therefore not possible to be completely up-to-date with changes in users (e.g. updated location) and repositories (e.g. renames).
 As the DB contains 50M+ users and 140M+ repos, this refresh process may take a while and it can also fail due to spurious reasons.

## Copyright and Privacy

#### _Who owns the data that GHTorrent shares?_

The copyright situation is very complicated; in essense, GitHub owns copyright
to the data formats for the API responses, users own copyright of the content
they create and the GHTorrent creator has copyright on the GHTorrent database
schemata.

#### _What types of privacy guarantees does GHTorrent offer?_

GHTorrent collects publicly available data from the GitHub API.

#### _How does GHTorrent handle my personal information?_

By personal information, we mean data that identify a real person uniquely. In
the context of GHTorrent, these are emails and real names.

As of Mar 2016, GHTorrent does not distribute any personal information by
default. 

Researchers whose research required access to personal data
could use [this form](pers-data.html) to obtain it. **As of
May 2018, and due to GDPR, this is not possible any more.**

#### _Can I get more information?_

Yes. Please see the following Slidedeck. If you are still in doubt,
please contact us.

<div style="width: 50%;margin-left:auto;margin-right:auto;">
<script async class="speakerdeck-embed" data-id="1c64fd1e7dfe4032aff246b2dd1195bf" data-ratio="1.33333" src="//speakerdeck.com/assets/embed.js"></script>
</div>

#### _How can I opt out?_

We understand that being part of such a big dataset can have concequences for
your online privacy. For this reason (and also to comply with legal data
processing requirements), you can opt out data collection. If you want to
opt out, please [send us an email](gousiosg@gmail.com).

Opting out means that we will replace your email in the database with
`no-spam@ghtorrent.org` and remove your real name.

#### _Contacting users for surveys_

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
  tempting to contact all 40+ million developers, it is also likely to leave a
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

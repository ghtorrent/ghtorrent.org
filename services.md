---
layout: page
title: GHTorrent services
tagline:
---

The GHTorrent project provides the following services to interested researchers
and third parties:

* [Querying MongoDB](raw.html) programmatically
* [Querying MySQL](/dblite/) through a web interface
* [Querying MySQL](mysql.html) programmatically
* [Streaming](streaming.html) of entries in MongoDB and MySQL

_The services are in kind and do not entail any quality or availability guarantee
._

## Obtaining access

All services are offered over SSH tunnelling. See at the page of each
individual service for connection details.

To obtain access to any of the services, add your public SSH key
(usually in `~/.ssh/id_rsa.pub`), using a pull request, to
[this file](https://github.com/ghtorrent/ghtorrent.org/blob/master/keys.txt).
All pull requests are merged on Friday afternoon, so please wait a bit
before firing a reminder email.

To create a public/private key pair, use `ssh-keygen`. Here are some hints on
how to generate GHTorrent compatible SSH keys:

* **On Mac or Linux**: You can use the distribution provided `ssh-keygen`
  command and it should work fine.

* **On Windows:** Keys generated with the popular Putty program cannot be used
  by GHTorrent. Please use [CygWin](https://www.cygwin.com) or an equivalent
  environment to install OpenSSH and use the `ssh-keygen` command as provided by
  OpenSSH to generate a GHTorrent compatible key.

## Fair use

To address GitHub's growth and GHTorrent's growing demands in API calls and the
community's demand for better, more rich data, we need more GitHub API keys. We
therefore kindly ask you to [send us](mailto:gousiosg@gmail.com)
a GitHub API key (a “personal access token” as Github describes it).

The process to create a key is simple: First, go to the following URL (while
logged in):

[https://github.com/settings/tokens/new](https://github.com/settings/tokens/new)

deselect *all* checkboxes *except* from `public_repo`, set a token name and
click on "Generate Token".

Please note that it is possible to specify the maximum number of requests per
hour that you would like to donate to GHTorrent. By default, GHTorrent uses the
maximum allowed by GitHub (5k/hour), but if you are using the GitHub API for
other projects/services, you might want to restrict this. A typical service like
Travis only uses a few requests per hour, even on busy projects.

**If you do not want us to use your key any more, do let us know.** Do not
just delete your key from GitHub as this will create holes in the data
collection until we notice and remove your key. If this happens, we will also
ban you indefinetely from the services (2 users have already been banned).

At the moment, this is a request in kind. If demand continues to grow and supply
of keys is not enough to keep up, we might turn this into an obligatory step.

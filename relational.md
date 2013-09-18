---
layout: page
title: The relational DB schema 
tagline: 
---

<img width="20%" src="files/schema.png"/> 

[Download](files/schema.png) [Download PDF](files/schema.pdf)

## Entities and their relationships

#### users
Github users. 

* A user has a unique user name or email. May contain artificially generated user names, see [commits](relational.html#commits) below. 
* There are two `type`s of users, `USER`s and `ORG`anizations. The second type
defines a collection of users.

#### organization\_members
Users that are members of an organization.

* The `created_at` field is only filled in accurately for memberships for which
GHTorrent has recorded a corresponding event. Otherwise, it is filled in with the
latest date that the corresponding user or organization has been created.

#### projects
Information about repositories. A repository is always owned by a user.

* The `forked_from` field is empty unless the
project is a fork in which case it contains the `id` of the project the project
is forked from. 

* The `deleted` field means that the project has been deleted from Github. 

#### project\_members
Users that have commit access to the repository.

The `created_at` field is only filled in accurately for memberships for which
GHTorrent has recorded a corresponding event. Otherwise, it is filled in with the
latest date that the corresponding user or project has been created.

#### commits
Unique commits. 

* Each commit is identified globally through its `sha` field. If the author or
the committer has not configured his [Github email address](https://help.github.com/articles/setting-your-email-in-git), no resolution to
a User is possible. In that case, GHTorrent generates artificial users using
the provided email in the Git commit author or committer fields. If the user
then configures his Github account, GHTorrent will update the artificial user
accordingly.

* The `project_id` field contains a link to the project that this commit has
been first associated with. This might not be the project this commit was
initially pushed to, e.g. in case the fork is processed before the parent.
See [project\_commits](relational.html#project_commits).

#### commit\_parents
The parent commit(s) for each commit, as specified by Git. 

#### project\_commits
The commits belonging to the history of a project.

More than one projects can share the same commits if one is a fork of the other.

#### commit\_comments
Code review comments on commits.

These are comments on individual commits. If a commit is associated with a pull
request, then its comments are in the
[pull\_request\_comments](relational.html#pull_request_comments) table.

#### followers
A follower to a user.

The `created_at` field is only filled in accurately for followships for which
GHTorrent has recorded a corresponding event. Otherwise, it is filled in with the
latest date that the corresponding user or follower has been created.

#### watchers
Users that have starred (was [watched](https://github.com/blog/1204-notifications-stars)) a project

The `created_at` field is only filled in accurately for starrings for which
GHTorrent has recorded a corresponding event. Otherwise, it is filled in with the
latest date that the corresponding user or project has been created.

#### pull\_requests
A pull request initiated from `head_repo_id`:`head_commit_id` to `base_repo_id`:`base_commit_id`


* Pull requests can be in various states. The states are recorded in the
[pull\_request\_history](relational.html#pull_request_history) table.
* The `merged` field is TRUE if Github has detected a merge on the pull request.
Pull requests merged outside Github are not marked as merged here.
* The `pullreq_id` field is Github's pull request unique identifier
* The `intra_branch` field signifies that the head and base repositories are the
same
* If the head repository is NULL, this means that the corresponding project had been deleted when GHTorrent processed the pull request

#### pull\_request\_history
An event in the pull request lifetime

The `action` field can take the following values

* `opened`: When the pull request has been opened
* `closed`: When the pull request has been closed
* `merged`: When Github detected that the pull request has been merged. No merges
outside Github (i.e. Git based) are reported
* `reoponed`: When a pull request is opened after being closed
* `syncrhonized`: When new commits are added/removed to the head repository

#### pull\_request\_commits
A commit associated with a pull request

The list is additive. This means if a rebase with commit squashing takes place after the commits of a pull request have been processed, the old commits will not be deleted.

#### pull\_request\_comments
A code review comment on a commit associated with a pull request

The list is additive. If commits are squashed on the head repo, the comments
remain intact.

#### issues
An issue associated with a repository

* The `assignee` field is filed in with the user to which the issue was
assigned at the time the issue was processed.
* Issues have history recorded in the [issue\_events](relational.html#issue_events) table.
* For every pull request, GHTorrent creates a corresponding issue. The
`pull_request_id` field points to the associated pull request
* The `issue_id` field is the unique identifier given to the issue by Github.

#### issue\_events
An event on an issue

* The `action` field can have the following values: 
  * `subscribed`: When a user subscribes to receive notifications about the issue.
  * `mentioned`: When a user is mentioned by another user (@user notation)
  * `closed`: When the issue has been closed
  * `referenced`: The issue was referenced in a commit (using the 
   [fixes: conventions](https://github.com/blog/831-issues-2-0-the-next-generation))
  * `assigned`: When the issue has been assigned to an actor.
  * `reopened`: When a closed issue is reopened
  * `unsubscribed`: When a user unsubscribed from issue.
  * `merged`: When the pull request pointed by the issue has been merged.
  * `head_ref_cleaned`:  (Not documented) When 
  * `head_ref_deleted`: (Not documented) When the branch of the head repository has been deleted
  * `head_ref_restored`: (Not documented) When the head repository of a pull
  request has been restored (using the restore branch functionality).

* The `action_specific` field gets filled in with the 

#### issue\_comments
An entry to the issue discussion. This table is always filled in with pull
request (or issue) discussion comments, irrespective of whether the repo
has issues enabled or not.

#### repo\_labels
A label to be assigned to an issue affecting this repository.

#### issue\_labels
A label that has been assigned to an issue

## Example queries

#### List commits for a repository

{%highlight mysql%}
select * from foo
{%endhighlight%}

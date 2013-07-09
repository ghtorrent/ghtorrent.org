---
layout: page
title: Querying MongoDB 
tagline: 
---

While the GHTorrent project offers downloadable versions of the MongoDB raw
dataset, downloading and restoring them to MongoDB can be very time consuming.
For this reason, we have created a publicly available, almost live, version 
of the data as they are collected by our main MongoDB server. The only
prerequisite is to have the MongoDB client and SSH installed on your machine. 

1. [Send us your](mailto:gousiosg@gmail.com) public SSH key (usually in `.ssh/id_rsa.pub`)
2. When we contact you back, you will be able to setup an SSH tunnel with the
following command: `ssh -L 27107:dutiht.st.ewi.tudelft.nl:27017 ghtorrent@dutiht.st.ewi.tudelft.nl`. 
3. You will then be able to connect to our server using the command: `mongo
ghtorrent/github`. There is no password, and the login account offers
read-only access.
4. The MongoDB server you are querying is delayed replica set of our master
server. As per MongoDB requirements, you need to [permit slave queries](http://docs.mongodb.org/manual/reference/method/rs.slaveOk/) every time you connect
to it.

### Collections available in MongoDB

Here is a list of collections along with the Github API URL they cache data
from. All URLs need to be prefixed with `https://api.github.com/`

{%highlight bash%}
Collection name          Github API URL
----------------         --------------
commit_comments          repos/#{user}/#{repo}/commits/#{sha}/comments
commits                  repos/#{user}/#{repo}/commits
events                   events
followers                users/#{user}/followers
forks                    repos/#{user}/#{repo}/forks
issue_comments           repos/#{owner}/#{repo}/issues/comments/#{comment_id}
issue_events             repos/#{owner}/#{repo}/issues/events/#{event_id} 
issues                   repos/#{user}/#{repo}/issues
org_members              orgs/#{org}/members
pull_request_comments    repos/#{owner}/#{repo}/pulls/#{pullreq_id}/comments
pull_requests            repos/#{user}/#{repo}/pulls
repo_collaborators       repos/#{user}/#{repo}/collaborators
repo_labels              repos/#{owner}/#{repo}/issues/#{issue_id}/labels
repos                    repos/#{user}/#{repo}
users                    users/#{user}
watchers                 repos/#{user}/#{repo}/stargazers
{%endhighlight%}

### Things to keep in mind

1. The hosting machine, while powerful, is not capable of processing the data
very quickly. At the time of this writing, the data is more than 1.9TB.
2. Other people may be using the machine as well. Make sure that you do not run
very heavy queries.
3. At any time the machine may become unavailable.
4. Some data may be missing; if you are willing to provide workers to collect
them, please [contact us](mailto:gousiosg@gmail.com). 
5. The data is offered as is without any explicit or implicit quality or service guarantee from our part.


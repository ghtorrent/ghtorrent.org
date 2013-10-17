---
layout: page
title: Collections in MongoDB
tagline: 
---

Here is a list of collections along with the Github API URL they cache data
from. All URLs need to be prefixed with `https://api.github.com/`. In MongoDB,
each entity is by default indexed by the parameter fields in each corresponding
URL (see also the actual [default indexes](https://github.com/gousiosg/github-mirror/blob/master/lib/ghtorrent/adapters/mongo_persister.rb#L23)).

<table class="table table-hover table-condensed">
  <thead>
    <tr>
      <th>Collection name</th>
      <th>Github API URL</th>
      <th>Documentation URL</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>commit_comments</td>
      <td><tt>#{user}/#{repo}/commits/#{sha}/comments</tt></td>
      <td><a href="http://developer.github.com/v3/repos/comments/#list-comments-for-a-single-commit">commit comments</a></td>
    </tr>
    <tr>
      <td>commits</td>
      <td><tt>repos/#{user}/#{repo}/commits</tt></td>
      <td><a href="http://developer.github.com/v3/repos/commits/#list-commits-on-a-repository">commits</a></td>
    </tr>
    <tr>
      <td>events</td>
      <td><tt>events</tt></td>
      <td><a href="http://developer.github.com/v3/activity/events/">events</a></td>
    </tr>
    <tr>
      <td>followers</td>
      <td><tt>users/#{user}/followers</tt></td>
      <td><a href="http://developer.github.com/v3/users/followers/#list-followers-of-a-user">followers list</a></td>
    </tr>
    <tr>
      <td>forks</td>
      <td><tt>repos/#{user}/#{repo}/forks</tt></td>
      <td><a href="http://developer.github.com/v3/repos/forks/#list-forks">forks list</a></td>
    </tr>
    <tr>
      <td>issues</td>
      <td><tt>/repos/#{owner}/#{repo}/issues</tt></td>
      <td><a href="http://developer.github.com/v3/issues/#list-issues-for-a-repository">issues for a repo</a></td>
    </tr>
    <tr>
      <td>issue_comments</td>
      <td><tt>repos/#{owner}/#{repo}/issues/comments/#{comment_id}</tt></td>
      <td><a href="http://developer.github.com/v3/issues/comments/#list-comments-on-an-issue">issue comments</a></td>
    </tr>
    <tr>
      <td>issue_events</td>
      <td><tt>repos/#{owner}/#{repo}/issues/events/#{event_id}</tt></td>
      <td><a href="http://developer.github.com/v3/issues/events/">issue events</a></td>
    </tr>
    <tr>
      <td>org_members</td>
      <td><tt>orgs/#{org}/members</tt></td>
      <td><a href="http://developer.github.com/v3/orgs/members/">organization members</a></td>
    </tr>
    <tr>
      <td>pull_request_comments</td>
      <td><tt>repos/#{owner}/#{repo}/pulls/#{pullreq_id}/comments</tt></td>
      <td><a href=http://developer.github.com/v3/pulls/comments/">pull request review comments</a></td>
    </tr>
    <tr>
      <td>pull_requests</td>
      <td><tt>repos/#{user}/#{repo}/pulls</tt></td>
      <td><a href="http://developer.github.com/v3/pulls/">pull requests</a></td>
    </tr>
    <tr>
      <td>repo_collaborators</td>
      <td><tt>repos/#{user}/#{repo}/collaborators</tt></td>
      <td><a href="http://developer.github.com/v3/repos/collaborators/">repo collaborators</a></td>
    </tr>
    <tr>
      <td>repo_labels</td>
      <td><tt>repos/#{owner}/#{repo}/issues/#{issue_id}/labels</tt></td>
      <td><a href="http://developer.github.com/v3/issues/labels/#list-all-labels-for-this-repository">issue labels</a></td>
    </tr>
    <tr>
      <td>repos</td>
      <td><tt>repos/#{user}/#{repo}</tt></td>
      <td><a href="http://developer.github.com/v3/repos/#list-all-public-repositories">repositories</a></td>
    </tr>
    <tr>
      <td>users</td>
      <td><tt>users/#{user}</tt></td>
      <td><a href="http://developer.github.com/v3/users/#get-a-single-user">users</a></td>
    </tr>
    <tr>
      <td>watchers</td>
      <td><tt>repos/#{user}/#{repo}/stargazers</tt></td>
      <td><a href="http://developer.github.com/v3/activity/starring/#list-stargazers">stargazers</a></td>
    </tr>
  </tbody>
</table>

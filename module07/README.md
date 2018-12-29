# HTTP, REST and rest-client

Read:
* https://learn.onemonth.com/understanding-http-basics/
* https://flaviocopes.com/http-request/
* https://www.codecademy.com/articles/what-is-rest
* https://www.rubydoc.info/github/rest-client/rest-client
* https://www.rubydoc.info/github/rest-client/rest-client/RestClient


## Basics

**Protocol** is the official procedure or system of rules governing affairs
[of state or diplomatic occasions]. Technological protocols describe how
various technological components should work, not their implementation!

Protocols exist in real life as well!


* Client (computer) via its OS resolves the remote domain name and
  initiates a connection to the remove server
* Once connected the client sends requests and the server returns responses
* HTTP is stateless
* Modern clients/servers may keep the connection open for performance purposes
  but that is usually not our concern when working with the application layer
  (e.g. when performing tests)
* Responses have an integer status code, headers and a body
* HTTP is a text based protocol, however body payload may be binary (e.g. a picture)


**REST** is a widely adopted standard of how clients can communicate
with web based systems. The 3 basic REST components are:

- resources (identified by URL paths and object IDs usually)
- actions (identified by specific HTTP verbs, e.g. GET or DELETE)
- response code and/or response body

The combination of these 3 components describes the behavior of the
system.

Exercise: Design a REST API for Panda Social Network

- quickly identify a set of features that will be implemeted
- write:
  - what kinds of requests we would want to make
  - what responses the server should return
  - what the content-type of each response should be


## rest-client

[rest-client](https://github.com/rest-client/rest-client) is a simple HTTP and REST
client for Ruby. It can be used to send and receive HTTP requests, both in
production and in test code! If you need to test the REST API of the application under test
(as opposed to testing through the UI) you will need to be able to interact with
the API under test. This is where rest-api comes in!


Exercises:

For each of the following stories write a Cucumber feature and step definitions!
You will have to use rest-client to interact with GitHub's API.

API documentation is available at https://developer.github.com/v3/. All exercises
can be executed anonymously without logging in!

- https://api.github.com/zen will provide you with inspirational quotes
- User atodorov is marketing themselves as hireable
- User apetkova isn't advertising whether or not they are hireable
- User atodorov still lives in Sofia
- User atodorov is a member of the weldr organization
- Organization kiwitcms has at least 3 members
- Organization kiwitcms has a member named asankov
- Organization kiwitcms has a member named kiwi-bot
- Repository kiwitcms/Kiwi has more than 100 stargazers
- You yourself are a stargazer of kiwitcms/Kiwi repository (you will have to hit the
  Star button via the webUI to make the scenario pass)
- Trying to discover which repositories are stared by the user making the request
  is not available for anonymous users


## Homework

Finish the scenarios above and then implement them also with pure RSpec specs!

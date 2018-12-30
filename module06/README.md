# Module 06 - Introduction to Cucumber

Read:
* https://docs.cucumber.io/bdd/
* https://docs.cucumber.io/gherkin/
* https://docs.cucumber.io/installation/ruby/
* https://docs.cucumber.io/guides/ (Introduction, 10 Minute Tutorial, BDD Tutorial,
  Anti-patterns)
* https://docs.cucumber.io/cucumber/ (Step Definitions, Cucumber Reference,
  Cucumber Expressions, Checking Assertions, State)
* https://cucumber.io/blog/2015/12/08/example-mapping-introduction

## Summary

> Behaviour-Driven Development (BDD) is a set of practices that aim to reduce
> common wasteful activities in software development:
>
> Rework caused by misunderstood or vague requirements
> Technical debt caused by reluctance to refactor code
> Slow feedback cycles caused by silos and hand-overs
>
> BDD aims to narrow the communication gaps between team members,
> foster better understanding of the customer and promote continuous communication
> with real world examples.

BDD is often coupled with
*[Example Mapping](https://cucumber.io/blog/2015/12/08/example-mapping-introduction)*
sessions to discover what we know
and don't know about the desired behavior of the software we are building! This
is a thinking and communication exercise! Example Mapping produces stories,
rules and questions which are later used to describe the system behavior in a
formal language!

The three amigos (product owner, developer, tester) is a popular meeting format
which is used to transform the stories, rules and questions into concrete
examples! These examples are often described in a language called Gherkin.

Gherkin is the formal language used to describe software behavior specification.
It uses keywords, `Feature`, `Scenario`, `Given`, `When`, `Then`, to provide
structure and meaning to behavior specifications. Writing a Gherkin
document/specification is a documentation and mental exercise!

> Gherkin style writing puts the tester into a mind set where it is easier to
> see the big picture by visualizing different user roles and scenarios.
> It makes it easier to define explicit behavior and highlights missing details.
> It is easier for QA to join early in the planning process by defining roles
> and thinking about all the possible interactions with the SUT.
>
> Self-contained changes are easier to describe and test automatically.
>
> Bigger and complex features are harder to describe and even harder to automate in
> one piece. Divide and conqueror is our best friend here!
>
> from http://atodorov.org/blog/2016/03/11/qa-switch-from-waterfall-to-bdd/


Cucumber is a tool that supports Behaviour-Driven Development(BDD).
Cucumber reads executable specifications written in Gherkin language
and validates that the software does what those specifications say.
The specifications consists of multiple examples, or scenarios.

Each scenario is a list of steps for Cucumber to work through. Each step
is matched by its description. Steps are also defined as Ruby code
(usually a method) which make the specification hard-wired to the
implementation!

Cucumber verifies that the software conforms with the specification and
generates a report indicating success or failure for each scenario.

Automated tests are a by-product of Cucumber/BDD. However you may also
write features, scenarios and automated tests after the fact (after the
application has been created)! In any case having an automated test suite
is used by the engineering team to provide feedback and serve as a living
documentation of the software that the team is building.

Note: Cucumber is a DSL (domain specific language) which provides the
instrumentation to glue together plain text Gherkin documents with actual
code (test or production). Cucumber doesn't care what programming language
you use or what kind of testing framework!


## BDD + Gherkin exercise

The goal of this section is to **think** and produce Gherkin specifications.
First we are going to brainstorm about software features and later refine them
into a formal description.

**Note:** we need yello, blue, green and red sticky notes for this exercise,
see https://cucumber.io/blog/2015/12/08/example-mapping-introduction!

Rules:

* You have 30 minutes
* Work in groups of no more than 5 people
* You are designing a banking application (features are up to you)
* Application is implemented in `banking.rb` file, in class named `MyBank`


Exercise #1: generate as many as possible user-stories, acceptance rules,
examples and questions and classify them with colors: yello, blue, green and red!


Exercise #2: convert your user stories into Gherkin features and scenarios!


## Cucumber and Ruby exercise

The goal of this section is to glue your Gherkin specification to actual
Ruby code so that it can be used to validate system behavior!

Based on the features and scenarios identified in previous exercise
implement them in an executable specification with Cucumber. This means:

* Write `.feature` files containing scenarios
* Write step definition files (first pending ones, then having real actions and
  expectations)
* Write missing implementation so that Cucumber reports PASS for all scenarios


## Homework

Imagine you are the author of the popular *Exploding Kittens* game!

* Write plain text stories with rules and examples
* Convert your stories to formal feature descriptions with Gherkin
* Write the automated step definitions for Cucumber
* Create a small `ExplodingKittens` class that will satisfy the
  scenarios automated with Cucumber

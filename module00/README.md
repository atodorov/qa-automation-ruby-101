# Module 00 - Introduction to programming

In this module we establish the basic terms and what they mean,
how stuff works, etc. In particular:


## Programming languages

Read https://en.wikipedia.org/wiki/Programming_language.


Exercise: verbal programming

* Express how would you make yourself a coffee
* Express how would you start a car engine
* Express your morning routine as a program

Important items: input data, control flow, functions, return values, modules, programs!


## Compiler vs. interpreter

Read https://en.wikipedia.org/wiki/Programming_language_implementation
and https://en.wikipedia.org/wiki/Parsing#Computer_languages (mostly for info).

Compiler - translates the input program to another laguage.
Interpreter - translates the input program to another language and executes it
on the fly.

Exercise:
* Translate English text into written
* Live interpretation of English text


## Operating System

Read https://en.wikipedia.org/wiki/Operating_system,
https://en.wikipedia.org/wiki/Execution_(computing) and
https://en.wikipedia.org/wiki/Process_(computing) for more information.

Exercise:
* "Execute" the previously defined program for "making coffee"


## IDE vs. text editor

Read https://en.wikipedia.org/wiki/Text_editor and
https://en.wikipedia.org/wiki/Integrated_development_environment.


Exercise:
* Install RubyMine from https://www.jetbrains.com/ruby/
  and familiarize yourself with it


## Make and Rake

Read https://en.wikipedia.org/wiki/Make_(software) and
https://en.wikipedia.org/wiki/Rake_(software).


Exercise:
* Express a program for creating pancakes batter
* Express a program for cooking pancakes
* Express a program for serving pancakes
* Express a "make recipe" for having guest over for pancakes
* What about dependencies ?


## Libraries, frameworks, packages

Read:

- https://en.wikipedia.org/wiki/Library_(computing)
- https://en.wikipedia.org/wiki/Software_framework
- https://en.wikipedia.org/wiki/Package_manager

Exercise:
* Design a library of functions that may be used for cooking pancakes
* Let's use the library for cooking an omelette
* Try using the library for making a smoothie

* Design a framework for cooking pancakes;
  The framework may or may not utilize the library!
* Create programs using `awesome-pancakes-framework` to cook different
  variations of pancakes.
* Try preparing an omelette with the framework
* Try preparing a smoothie with the framework

* How do we "package" our library and framework ?


Important items: who controls the flow of execution and what degree of
freedom we have.


## Testing vs debugging

Read https://en.wikipedia.org/wiki/Software_testing and
https://en.wikipedia.org/wiki/Debugging.

Here's a good representation of what testing is by Ingo Philipp:
!['What is testing'](https://raw.githubusercontent.com/atodorov/qa-automation-ruby-101/master/module00/testing_knowledge_gap.png)

Full presentation
[here](https://assets.ctfassets.net/ut4a3ciohj8i/4ukPUn6tfiig8S4ASuaeoQ/670bba8e5498239a7fbbf404952beb08/Ingo_Philipp_Rediscover_Exploratory_Testing.pdf)


Exercise:
* How are you going to test your pancakes?
* What information do we need to provide about pancakes? To whom?
* Scenario: pancakes are burned to black. How do you debug this?
* Scenario: pancakes smell and taste bad but are cooked fine. How do you debug this?


## Why me? I am not a programmer, I am a tester?

Exercise:
* Write down objections as to why testers should be involved in programming
  or treated as programmers
* Think about the current state of affairs for you
* Give answers to the previous objections


## Homework

Answer the questions:

* What is a programming language?
* Why do we need a programming language?
* What is a programming language syntax?
* What is the difference between static and dynamic typed languages?
* What is a standard library?
* What is the difference between a script and a program?
* What are the advantages / disadvantages of compiled programs and interpreted programs?
* What program produces .exe files on Windows and executable binaries on Linux?
* What is UNIX?
* Why POSIX is important?
* Describe how an operating system will execute the `hello-world` program?
* What is plain text vs. rich text?
* How does an IDE help me over a plain text editor?
* Can I use a text editor for any kind of programming language?
* Why are make recipes needed?
* What are software packages? Why do we need them?
* How does debugging help testing?
* What are the things that a tester can debug?
* When does a tester need to debug?

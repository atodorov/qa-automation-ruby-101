# Module 01 - Introduction to Ruby

Read:
* About Ruby - https://www.ruby-lang.org/en/about/


Other useful documentation:
* Ruby's User Guide - http://www.rubyist.net/~slagell/ruby/index.html
* Ruby Essentials - https://www.techotopia.com/index.php/Ruby_Essentials
* Ruby core documentation - http://ruby-doc.org/core-2.5.3/
* Ruby standard library documentation - http://ruby-doc.org/stdlib-2.5.3/
* Ruby for Beginners - http://ruby-for-beginners.rubymonstas.org/index.html

## Environment check

* Everyone must have Ruby installed:

        $ ruby --version

* Everyone must have RubyMine IDE installed or another text editor they
feel comfotable with


## History of Ruby

See *About Ruby*!

Exercise:

* Try the examples from
  [Getting started](http://www.rubyist.net/~slagell/ruby/getstarted.html),
  [Simple examples](http://www.rubyist.net/~slagell/ruby/examples.html) and
  [Strings](http://www.rubyist.net/~slagell/ruby/strings.html)
* Try
  [Simple Ruby Examples](https://www.techotopia.com/index.php/Simple_Ruby_Examples)

## Starting Ruby programs

Any Ruby program can be started by passing the file name as argument to the
Ruby intepreter. In the terminal type:

    $ ruby myprogram.rb

## Program structure

Each Ruby program consists of several basic blocks:

- module imports (`require`, `include` and other keywords)
- statements
- method definitions
- class definitions
- an optional "main"-like block!

For example:

    require "my-library"
    include Math

    name = "John"

    def sayHello(who)
        puts "Hello #{who}"
    end

    class Person
    end

    if __FILE__ == $0
        sayHello(name)
        sayHello("Maria")
    end


## Variables

See:
* http://www.rubyist.net/~slagell/ruby/variables.html
* http://www.rubyist.net/~slagell/ruby/localvars.html
* http://www.rubyist.net/~slagell/ruby/globalvars.html
* https://www.techotopia.com/index.php/Understanding_Ruby_Variables

More info:
* https://www.techotopia.com/index.php/Ruby_Variable_Scope
* http://www.rubyist.net/~slagell/ruby/instancevars.html
* http://www.rubyist.net/~slagell/ruby/constants.html

For now we are concerned about local variables!


Variables are used to store data in the program. You can assign values to variables by
using the assignment operator (`=`) like so:

    name = "Ivan"
    puts "Hello " + name

    name = "Alex"
    puts "Good morning " + name

Exercise:
* Try this program in the interactive interpreter!
* Try the examples from the documentation


## Methods

See:

* https://www.techotopia.com/index.php/Ruby_Methods
* http://www.rubyist.net/~slagell/ruby/methods.html


Methods are sequence of operations which can be applied multiple times
onto different arguments. For example a method that can send email
will perform the exact same operations every time but the message and the
recipient can be controlled via arguments.

Methods are defined as follows:

    def name( arg1, arg2, arg3, ... )
       .. ruby code ..
       return value
    end

The method name and list of parameters is called a signature!

Methods return result via the `return <value>` statement. When `return`
is executed the method execution completes immediately.

For example a method to calculate the perimeter of a square will look like this:

    def perimeter_of_square(side)
        return 4 * side
    end

A method to calculate perimeter of triangle will look like this:

    def perimeter_of_triangle(a, b, c)
        return a + b + c
    end

In the example above the variables `a`, `b` and `c` are called parameters. Parameter
variables are accessible everywhere inside the function body. When we want to perform
a calculation for a particular triangle then we call(execute) the method like this:

    > perimeter_of_triangle(1, 2, 3)
    6
    > perimeter_of_triangle(2, 4, 6)
    12

The values `1`, `2`, `3` are called arguments! They are assigned to the parameter variables
when the method is executed.

Exercise:

* Try the examples from documentation and this README


## Comments

See:
* https://www.techotopia.com/index.php/Commenting_Ruby_Code


## Modules

See:
* http://www.rubyist.net/~slagell/ruby/modules.html

Important: `include` vs `require`:
https://rubyinrails.com/2013/09/01/ruby-difference-between-require-and-include/

Exercise:
* Try the examples from documentation
* Try the Math module


## "Main"-like block

A program may have an optional main-like block. It is defined as an if statement at the
top-most level:

    if __FILE__ == $0
        <body of the main block>
    end

Main blocks are executed only if the file is executed as a program,
e.g. `ruby myfile.py`. If the file is loaded as a module, e.g. `require "myfile"`
the main block is not executed.

The main block is optional. You can execute methods and assign to variables
at the top-most level as well. However this will have undesired effects if
your files are imported as modules!

Exercise:

* Try a program with and without a main-like block


## Debugging with print

Using the previously written program swap places with your peers and try to
understand what it does. Debug the flow of execution.

Exercise:
* Try using `puts` or `print` to trace the program execution
* Try using a step-by-step execution in the IDE and observe variable values
  and execution flow


## How to start the provided test suite

All chapters provide a test suite written with `RSpec`. This is one of the
standard testing libraries in Ruby. The test suite can be used to validate the
correctness of your solution. It can be started like so:

    $ bin/rspec --format doc
    $ ~/.rvm/gems/default/bin/rspec --format doc


For more information see http://rspec.info/


## Tasks & homework

* Create a program named `lib/solution.rb`
* Define a method with the following signature `def f_c(X)` which
  returns the constant 4 for any input parameter.
* Document what the method `f_c` does with comments
* Write a method `f_x(x, a, b)` which implements the formula `f(x) = a*x + b`!
* Write a method `sum(x)` which returns the sum of `f_x()` called 3 times with
  parameters `x, 1, 1`, `x, 2, 2`, `x, 3, 3`!

# Module 04 - Object Oriented Programming

Read:
* http://www.rubyist.net/~slagell/ruby/oothinking.html
* http://www.rubyist.net/~slagell/ruby/methods.html
* http://www.rubyist.net/~slagell/ruby/classes.html
* https://www.techotopia.com/index.php/Ruby_Object_Oriented_Programming

Object Oriented Programming is a programming paradigm, that's all about representing concepts with
objects, classes, methods and members.

Popular object oriented languages are C++, Java, Python and Ruby.


## The four principles of OOP

- Abstraction - wrapping common characteristics, states and functionality in abstract structures
- Encapsulation - hiding implementation details and accessing functionality through public interfaces
- Inheritance - reusing code while creating superstructures, also known as being DRY*
- Polymorphism - the provision of a single interface to entities of different types


## Glossary

The fancy words we're going to use.

* Class - an abstraction (ex. Person, Vehicle..)
* Object - an instance of class
* Member/field/attribute - a class variable
* Method - a class function
* DRY - Don't Repeat Yourself
* WET - We Enjoy Typing (opposite of DRY)


# Ruby OOP by example

## Creating a class (abstraction)

```ruby
class Panda
    def initialize(name, age, weight)
        @name = name
        @age = age
        @weight = weight
    end

    def age
        @age
    end

    def name
        @name
    end

    def weight
        @weight
    end

    def _get_buff()
        if @weight < 1000
            @weight += 1
        end
    end

    def eat_bamboo()
        _get_buff()
        return "Nomm nomm nomm!"
    end
end

dimcho = Panda.new("Dimcho", 10, 150)
puts dimcho.age # 10
puts dimcho.weight # 150
puts dimcho.eat_bamboo # "Nomm nomm nomm!"
puts dimcho.weight # 151
```

The key concepts here are:

* The initialiser (aka constructor) method for each class is called `initialize`
* **Everything is public here!** Ruby supports private methods as well.

## How to check if object is an instance of a class?

We can also check if an object is the instance of a class.

For example, let's say we have an object of the class Panda and we want to check
if it's instance (also subclass) of class Object.

```ruby
class Human
end

gosho = Human.new

gosho.is_a?(Human)  # true
gosho.is_a?(Object) # true
gosho.is_a?(Panda)  # false
```


## Magic methods

In Ruby, there are special methods which determine how the object behaves in
different scenarios, for example when compared with another object.
They give us flexibility and can be very powerful!

For example, if you want to print your objects then define the
`.to_s()` method inside the class. A list of methods can be found at:
https://ruby-doc.org/core-2.6/Object.html and
https://ruby-doc.org/core-2.6/BasicObject.html,
https://ruby-doc.org/core-2.6/Numeric.html#method-i-to_int

Some important methods are `.to_s`, `.==`, `.to_int`


* If we want to compare two instances of our class - `==(other) -> true or false`
* If we want to turn our instance into a string - `to_s -> string`
* If we want to turn our instance into an integer `.to_int -> integer`


## Tasks & homework

* Checkout the 3 tasks in this directory;
* Use the test suite in each directory to validate your solution is correct:

    $ bin/rspec --format doc
    $ ~/.rvm/gems/default/bin/rspec --format doc

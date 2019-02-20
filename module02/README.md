# Module 02 - Data types and data structures


Read:
* http://ruby-for-beginners.rubymonstas.org/built_in_classes.html
* https://www.techotopia.com/index.php/Ruby_Number_Classes_and_Conversions
* https://ruby-doc.org/core-2.5.3/Numeric.html


## Built-in data types

Data types represent values with common properties. For example `Integer` represents all
integer numbers. You can perform comparison and mathematical operations on numbers.

`String` is the type representing text values.

Other important data types are `Float`, boolean, `Array`, `Hash`, `Nil`!

Exercise:

* Try the exercises from http://ruby-for-beginners.rubymonstas.org/exercises_2.html


## DateTime types

The class `DateTime`, from the standard library, is designed to hold information
about dates and times. See https://ruby-doc.org/stdlib-2.5.3/libdoc/date/rdoc/DateTime.html


    2.5.3 :011 > require 'date'
     => true 
    2.5.3 :012 > DateTime.now()
     => #<DateTime: 2018-12-25T20:58:18+02:00 ((2458478j,68298s,801170940n),+7200s,2299161j)> 
    2.5.3 :013 > 
    2.5.3 :014 > 
    2.5.3 :015 > DateTime.now().strftime()
     => "2018-12-25T20:59:26+02:00" 
    2.5.3 :016 > 
    2.5.3 :017 > 
    2.5.3 :018 > DateTime.now().iso8601()
     => "2018-12-25T21:00:05+02:00" 
    
    2.5.3 :019 > DateTime.now().year
     => 2018 
    2.5.3 :020 > DateTime.now().month
     => 12 
    2.5.3 :021 > DateTime.now().day
     => 25 
    2.5.3 :022 > 
    2.5.3 :023 > DateTime.now().hour
     => 21 
    2.5.3 :024 > DateTime.now().minute
     => 1 
    2.5.3 :025 > DateTime.now().second
     => 6 

See also the `time_difference` gem - https://github.com/tmlee/time_difference/

Exercise:

* Experiment with date-time objects


## Tasks & homework

* Implement a method `num_add(a, b)` which adds two numbers together
* Implement a method `num_sub(a, b)` which subtracts two numbers
* Implement a method `num_mul(a, b)` which multiplies two numbers
* Implement a method `num_div(a, b)` which divides the two numbers
* Implement a method `num_floor(a, b)` which implements floor division
* Implement a method `num_rem(a, b)` which implements remainder division
* Define boolean constant `IS_TRUE`
* Define boolean constant `IS_FALSE`
* Define the `PANCAKE_INGREDIENTS` hash to include the following keys and values

        flour - 2
        eggs - 4
        milk - 200
        butter - false
        salt - 0.001

* Implement a method `ingredient_exists(ingr, hash)` which returns boolean if the
ingredient `ingr` exists in the hash `hash`
* Implement a method `fatten_pancakes(hash)` which returns a hash. The return
value contains the pancake ingredients where `eggs == 6` and `butter == true`.
**NOTE:** don't change the `PANCAKE_INGREDIENTS` constant! Use `hash.clone()` method!
* Implement a method `add_sugar(hash)` which adds 'sugar' to the list of ingredients
and returns a new hash
* Implement a method `remove_salt(hash)` which removes 'salt' from the list of
igredients and returns a new hash
* Define an array called `FIBONACCI_NUMBERS` which contains the first 12 Fibonacci numbers:

        1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144

* Implement a method `add_fibonacci(arr)` which extends the array of numbers with
the next [Fibonacci number](https://en.wikipedia.org/wiki/Fibonacci_number)
* Implement a method `fib_exists(arr, n)` which returns boolean. The method checks
if the number `n` exists in the Fibonacci sequence `arr`
* Implement a method `which_fib(arr, n)` which returns integer. This is the index
of the number `n` inside the sequence `arr` counting from 1.

**TIP:** Use the test suite to validate your solution is correct:

    $ bin/rspec --format doc
    $ ~/.rvm/gems/default/bin/rspec --format doc

## Extra exercises

https://github.com/HackBulgaria/Programming101-Ruby/tree/master/week01/2-List-and-Hashes

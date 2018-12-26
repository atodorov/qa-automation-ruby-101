# Module 03: Control flow: conditional statements and loops

Read:
* http://www.rubyist.net/~slagell/ruby/control.html
* https://www.techotopia.com/index.php/Ruby_Flow_Control
* https://www.techotopia.com/index.php/Ruby_While_and_Until_Loops
* https://www.techotopia.com/index.php/Looping_with_for_and_the_Ruby_Looping_Methods


## Control flow

In Ruby there are several statements that can be used to control program
execution! `if` and `while` statements are used to control program flow by
examining boolean conditions. Comparison & logical operators are described in
https://www.geeksforgeeks.org/ruby-operators/

The `for` statement is used to iterate over sequences.

If statements and for loops are the backbone of many programs and
are quite handy when writing tests. All tasks below require the usage of both.

Because Ruby allows for greater flexibility than other languages I suggest
using a single syntax for your `if` conditions and loops!



## Tasks & homework

* Implement all solutions into a file named `solution.rb`

### Sum of all digits of a number

* Given an integer, implement a method, called `sum_of_digits(n)` that calculates the sum of n's digits.
* If a negative number is given, our method should work as if it was positive.
* Keep in mind that in Ruby division between integer numbers returns an integer!

        2.5.3 :030 > 5 / 2
         => 2 
        2.5.3 :031 > 5.0 / 2
         => 2.5 
        2.5.3 :032 > 

* method signature

        def sum_of_digits(n)

### Turn a number into an array of digits

* Implement a method, called `to_digits(n)`, which takes an integer `n` and returns an array, containing the digits of `n`.
* Signature

        def to_digits(n)


### Turn a array of digits into a number

* Implement a method, called `to_number(digits)`, which takes an array of integers - digits and returns the number,
  containing those digits.
* Signature

        def to_number(digits)


### Vowels in a string

* Implement a method, called `count_vowels(str)`, which returns the count of all vowels in the string `str`.
**Count uppercase vowels as well!** The English vowels are `aeiouy`.
* Signature

        def count_vowels(str)


### Consonants in a string

* Implement a method, called `count_consonants(str)`, which returns the count of all consonants in the string `str`.
**Count uppercase consonants as well!** The English consonants are `bcdfghjklmnpqrstvwxz`.
* Signature

        def count_consonants(str)

### Prime Number

* Check if a given number is prime in `prime_number(number)` and return boolean result.
* For the purposes of this task consider 1 to be a prime number as well.
* Hint:

        2.5.3 :032 > 5 % 2
         => 1 
        2.5.3 :033 > 

* Signature

        def prime_number(n)

### Factorial Digits

* Implement a method `fact_digits(n)`, that takes an integer and returns the sum of the factorials of each digit of `n`.
* For example, if n = 145, we want 1! + 4! + 5!
* Signature

        def fact_digits(n)

* Hint - use the methods that you have defined previously. What other methods
do you need ?

### First nth members of Fibonacci

* Implement a method, called `fibonacci(n)` that returns an array with the first `n` members of the Fibonacci sequence.
* Signature

        def fibonacci(n)

### Fibonacci number

* Implement a method, called `fib_number(n)`, which takes an integer `n` and returns a number,
  which is formed by concatenating the first `n` Fibonacci numbers.
  For example, if `n = 3`, the result is `112`.
* Signature

        def fib_number(n)

* Hint - use the methods that you have defined previously. What other methods
  do you need?

### Palindrome

* Implement a method, called `palindrome(obj)`,
  which takes a number or a string and checks if it is a representation is a palindrome.
  For example, the integer `121` and the string `"kapak"` are palindromes. The method should work with both.
* Hint - check the built-in `.to_s()` method
* Signature

        def palindrome(n)

### Char Histogram

* Implement a funcion, called `char_histogram(string)`, which takes a string and returns a hash,
  where each key is a character from `string` and its value is the number of occurrences of that char in `string`.
* Signature

        def char_histogram(string)


**TIP:** Use the test suite to validate your solution is correct:

    $ bin/rspec --format doc
    $ ~/.rvm/gems/default/bin/rspec --format doc

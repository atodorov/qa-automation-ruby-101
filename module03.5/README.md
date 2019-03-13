# Module 03.5 - Blocks and procs

Read:
* http://ruby-for-beginners.rubymonstas.org/blocks.html

## Using blocks

You may have noticed that some methods are used like this:

```ruby
[1, 2, 3].select { |number| number.even? }
```

It may also be written as:
```ruby
[1, 2, 3].select do |number|
  number.even?
end
```

The part of the code between the curly braces (`{` and `}`) or between `do` and
`end` is called a block. Is a piece of a ruby code similar to a method. It may
receive parameters (`number` in the example above). So when blocks are used?

***They are used whenever a method accepts a block parameters***

That's right - the block is a special kind of a parameter. In some languages
you can pass a function to another function. In other you need to pass a pointer
to a method. Ruby has a data type to store executable code - `proc`

```ruby
even_numbers = proc { |number| number.even? }
[1, 2, 3].select(&proc)
```

## Accepting blocks in a method

You can create methods to accept block too. The block should be the last argument of
the method.

```ruby
def repeat(n, &block)
  while n > 0
    block.call
    n -= 1
  end
end
```

This function will just repeat `n` times whatever code we pass. Let's try it:

```
repeat(3) { puts "Hello!" }
```

## Passing arguments to a block

Let's look at another example. We will define a method that generates `n` fibonacci
numbers. Instead of returning them as an array, it will `yield` it one by one.

```ruby
def fibonacci(n, &block)
  block.call(1) if n >= 1 # first fibonacci number
  block.call(1) if n > 1 # second fibonacci number
  previous = 1
  current = 1
  while n > 2
    new_current = previous + current
    block.call(new_current)
    previous = current
    current = new_current
    n -= 1
  end
end

# now lets sum first 10 numbers
sum = 0
fibonacci(10) { |n| sum += n }
puts sum
```

Look how it doesn't need to generate array with all of the numbers - it just stores
the last 2 in order to calculate the next.

## Yield

In the previous section we said the methods `yield` the number. That's what calling
a block is.

```ruby
def repeat(n)
  while n > 0
    yield # same as block.call
    # if you want to call the block with an argument, as with fibonacci example,
    # just pass it to yield. E.g. `yield new_current` is the same as block.call(new_current)
    n -= 1
  end
end
```

## Blocks and loops

So what this have to do with loops?

When we write a `while` loop, we control the loop. This is called an `external iterator`.
There is also an internal iterator - one in which we are not in control of the loop.
Example of an internal operator is `each`.

```ruby
arr = [1, 2, 3, 4, 5, 6, 7]
arr.each { |n| puts n }
```

We do not tell `each` how many elements there are in the array. Array provides us
with a method that loops trough all of its elements. Array controls the loop, not we.

## Tasks & homework

* Implement a method `prime_numbers(n)` which generates the first `n` prime numbers.

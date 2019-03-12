# The Cash Desk Problem

We are going to train our OOP skill by implementing a few classes, which will represent a cash desk.

The cash desk will do the following things:

* Take money as single bills
* Take money as batches (пачки!)
* Keep a total count
* Tell us some information about the bills it has

## The Bill class

Create a class, called `Bill` which takes one parameter to its constructor - the `amount` of the bill - an integer.

The class should implement:

* `.to_s()`
* `.amount` - property
* `.==()`
* If amount is negative number, raise an `ArgumentError` error.
* If type of amount isn't `int`, raise an `ArgumentError` error.
* **HINT:** raising exceptions is done with `raise ErrorClass.new("message")`

Here is an example usage:

```ruby
require 'solution'

a = Bill.new(10)
b = Bill.new(5)
c = Bill.new(10)

a.amount # 10
a.to_s # "A 10$ bill"
puts   # A 10$ bill

a == b # false
a == c # true

money_holder = {}

money_holder[a] = 1 # We have one 10$ bill

if money_holder.key?(c)
    money_holder[c] += 1
end

puts money_holder # { "A 10$ bill": 2 }
```

Note: hashes don't use `.==` for comparison, they use `.eql?` so you need to implement this.
You also need to implement the [hash](https://ruby-doc.org/core-2.2.0/Object.html#method-i-hash) method.

## The BatchBill class

We are going to implement a class, which represents more than one bill. A `BatchBill`!

The class takes a list of `Bills` as the single constructor argument.

The class should have the following properties:

* `length` - returns the number of `Bills` in the batch
* `total` - returns the total amount of all `Bills` in the batch

We should be able to iterate the `BatchBill` class with a loop, see `.each` method:
https://ruby-doc.org/core-2.6/Array.html

Here is an example:

```ruby
require 'solution'

values = [10, 20, 50, 100]
bills = []
for value in values
    bills.push(Bill.new(value))
end

batch = BillBatch.new(bills)

for bill in batch
    puts bill
end

# A 10$ bill
# A 20$ bill
# A 50$ bill
# A 100$ bill
```

## The CashDesk class

Finally, implement a `CashDesk` class, which has the following methods:

* `take_money(money)`, where `money` can be either `Bill` or `BatchBill` class
* `total` - returns the total amount of money currently in the desk
* `inspect` - returns a hash representation of the money - for each bill, how many copies of it we have.

For example:

```ruby
require 'solution'

values = [10, 20, 50, 100, 100, 100]
bills = []
for value in values
    bills.push(Bill.new(value))
end

batch = BillBatch.new(bills)

desk = CashDesk.new()

desk.take_money(batch)
desk.take_money(Bill.new(10))

puts desk.total # 390
desk.inspect

# We have a total of 390$ in the desk
# We have the following count of bills, sorted in ascending order:
# 10$ bills - 2
# 20$ bills - 1
# 50$ bills - 1
# 100$ bills - 3

```

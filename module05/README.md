# Module 05 - Testing with RSpec

Read:
* http://rspec.info/documentation/ - API docs for rspec-core and rspec-expectations
* https://relishapp.com/rspec/ - documentation with examples
* https://relishapp.com/rspec/rspec-core/v/3-8/docs/example-groups/basic-structure-describe-it
* https://relishapp.com/rspec/rspec-core/v/3-8/docs/hooks/before-and-after-hooks
* https://relishapp.com/rspec/rspec-core/v/3-8/docs/helper-methods
* https://relishapp.com/rspec/rspec-core/v/3-8/docs/pending-and-skipped-examples
* https://relishapp.com/rspec/rspec-expectations/v/3-8/docs/built-in-matchers


In RSpec parlance a test is called a spec because it specifies behavior!
Files are usually named `spec/<module>_spec.rb`! Specs (modules with tests)
contain examples (small test scenarios) which use expectations to validate
that behavior is as defined.


The main RSpec components are:

* rspec-core: The spec runner, providing a rich command line program, flexible
  and customizable reporting, and an API to organize your code examples.
* rspec-expectations: Provides a readable API to express expected outcomes. During
  testing expectations (called asserts in other frameworks) will cause the
  spec to FAIL when the actual result doesn't match the expected!

Because RSpec is flexible use the keywords:
* `describe` - top level examples,
* `it` - specific example
* `expect().to <matcher>` - for validation


## Demonstration of before/after hooks and test execution

Execute `spec/before_after_spec.rb` to see the order of execution of before/after hooks
and examples:

    $ ~/.rvm/gems/default/bin/rspec spec/
    $ ~/.rvm/gems/default/bin/rspec --format doc spec/
    $ ~/.rvm/gems/default/bin/rspec --order random spec/


## Tasks & homework

* Examine the `lib/calculator.rb` program and
  * write tests for all of its methods
  * Modify `calculator.rb` to avoid executing the interactive commands when testing

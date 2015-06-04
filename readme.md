#Time to TDD a Dog class!

A `Dog` object should have a name, breed, age, and owner. The `owner` field should be optional.

There should be these methods:

- Accessors for all instance variables
- A `parse` class method that takes in a string of the above information and returns a Dog instance
- A `puppy?` method that returns `true` if the dog's age is <= 1 year
- A `birthday!` method that increases the dog' age by 1

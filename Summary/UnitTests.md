# Unit Tests

## Three Laws of TDD
- You may not write production code until you have written a failing unit test
- You may not write more of a unit test than is sufficient to fail
- You may not write more production code than is sufficient to pass the currently failing unit test

## Cleanliness of Test Code
Test Code has to be kept as clean as production code. Otherwise it will eventually become unmaintainable.


## Tests enable change
Test Code has to be taken as serious as production code, because it enables the developers to make improvements to the
production code without the constant fear of unknowingly introducing some sneaky bug somewhere. It makes changing production
code way easier, due to the important safety it provides.

## Clean Tests
- ### Readibility
  - clarity
  - simplicity
  - density of expression
  
- ### Domain-Specific Testing Language
  Build up specific functions and utilities that make writing and reading the test easier for yourself.
  This testing API is usually not designed upfront, but will evolve over time

- ### Asserts per test
  One assert per test is a good guideline. That way the test comes to only one conclusion.
  In general multiple asserts per test are possible but their number should be minimized.
- ### Single Concept per test
  In one test only one thing should be tested. Long testing functions, testing a bunch of stuff should be avoided.

## F.I.R.S.T
- ### Fast
  Tests should be fast. Otherwise you won't want to run them frequently

- ### Independent
  Tests should be independent from each other

- ### Repeatable
  Test should be repeatable in any environment. Otherwise you will have additional excuses as to why they fail.

- ### Self-validating
  Tests should either pass or fail. You should not have to manually determine whether a test passed.

- ### Timely
  Unit Tests should be written just before the production code that makes them pass
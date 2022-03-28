# Kent Beck's 4 Rules for simple design

## Rule 1: Runs all the tests
To run a bunch of tests on a system it needs to be testable. Good testability by itself leads to a design with small single purpose classes. Making sure a system is fully testable will help create better designs and embrace the OO goals of low coupling and high cohesion.

## Addition to Rule 1: Refactoring
Having a good suite of tests allows you to repeatedly refactor the code improving its quality and assuring nothing broke in the process. During this process all knowledge of good software design should be aplied. This is also where the final rules of simple design should be followed:
- Eliminate duplication
- Ensure Expressiveness
- Minimize number of classes and methods

## Rule 2: No Duplication
Duplication is the primary enemy of a well-designed system. It has to be eliminated.

## Rule 3: Expressiveness
The biggest cost of a software project is in long term maintenance. Therefore the code should be as clear and self-expressing as possible so that your future self and future developers having to look through your code can easily understand it. You can express youself more clearly like so:
- Choosing good names
- Keeping functions and classes small    
  small classes and functions are:
  - easier to write 
  - easier to name
  - easier to understand
- using standard nomenclature   
  When implementing Design Patterns for example using their known names in class names can be helpful for understanding
- well-written unit tests    
  Normally you should be able to get a good idea of what a class or function is doing just looking at its unit tests
- Take the time to refactor

## Rule 4: Minimal number of classes and methods
Concepts like explained above or like the SRP principle can be taken too far. Try to keep the overall system small while also keeping classes and function small. Important: This Rule is the leas important one of the 4 Rules.




# Classes

## Encapsulation
Try to keep variables and utility functions private

## Classes should be small
Small in this context means having only one responsibility. The class name should represent this responsibility.
If it is difficult to find a concise class name, the class might be to big.

## Number of instance variables
Classes should have a small number of instance variables. Aim for a class whose methods all use all of the the classes instance variables.
That means that the classes methods and instance variables hang together as a logical whole.

## Single Responsibility Principle
Having only one responsibility means that a class should have only one reason to change.

## Open Closed Principle(OCP)
Classes should be open for extension but closed for modification. Adding new functionality should be achieved via subclassing.

## Dependency Inversion Principle
Classes should depend upon abstractions not upon concrete details

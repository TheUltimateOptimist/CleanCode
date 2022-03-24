# Systems

## Seperation of concern
The startup logic that involves creating the objects that will later be used throughout the application should be seperated from the runtime logic. This works for example by handling the startup logic at the beginning of the main function. Objects that will have to be created during application use can be created with the AbstractFactory Pattern. Then the concrete factorys will be created at the start of the main function.
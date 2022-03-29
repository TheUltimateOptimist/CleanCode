# Concurrency

## What is concurrency
Concurrency is a decoupling startegy that lets you decouple what gets done from when it gets done.

## Advantage of concurrency
Decoupling what from when can improve the performance and structure of an application. The system then looks more like a collection of collaborating computers then like one big main loop. This can make it easier to understand.

## How to keep concurrent code clean:
- Seperate concurrency-related code from other code
- Try to limit the access of any data that may be shared
- Try to avoid shared data by for example using copied objects
- Try to partition data into independent subsets that can then be operated on by independent threads
- Avoid using more than one method on a shared object
- keep synchronized sections as small as possible
- think about shut-down early and get it working early   
  correct shut-down will be harder than you think
- do not ignore system failures as one-offs
- do not chase threading and non-threading bugs at the same time
  Make sure non-threaded code works first
- make thread-based code pluggable so that it can be run in various configurations
- allow number of threads to be easily tuned
- Stress test by running with more threads than processors, because some errors occur when switching between tasks is required
- run threaded code on all target platfroms frequently
- when testing specifically vary the threaded code's pathway to try and force failures
  
  
## Basic execution models:
- Producer-Consumer   
  One or more producer threads create some work and place it in a queue. One or more consumer threads aquire that work from the queue and complete it. Producers and Consumers need to be able to signal each other that the queue not empty or not full anymore so that each party can continue their work.
- Readers-Writers   
  When there is a shared ressource and reading and writing threads balancing those can be difficult. Optimizing throughput has to be done with great care.
- Dining Philosophers   
  When there are many processes competing for ressources you can experience deadlock, livelock, throughput and efficiency degradation. Such Systems need to be carefully designed.


  
  
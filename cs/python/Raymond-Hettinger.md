# Raymond Hettinger
    - `for`       loop, should be "for each"
    - `else`      in for loop, should be called "nobreak"
    - `lambda`    could be called "makefunction"

    - add <links> to source code files in documentation.
      Note: use `ipython foo??` to view source-code

    - use sphinx to generate talk slides

# concurrency
    - many of the concepts used in concurrency translate
      into the real world
    - eg. his wife is a programmer for satellite building
      and the design teams have over 100,000 tasks to build
      a satellite.
    - Two teams must finish before another task can start,
      two satellites cant be in the "shaker room" together
      etc.

    observation:
    1. single core: important, getting more powerful
    2. multi-core: less important, falls in 'no-mans land'
    3. distributed computing: more important - big data

    but! Raymond is going to talk about step 2(!)

    * if you add threading to a cpu bound application it
      goes slower!

    * thread _strength_: shared state - they can communicate
    very quickly

    * thread _weakness_: shared state - you're going to have
      race conditions

    * _process_ strength/weakness: they lack shared
      state(!), hence you must have inter-process
      communication etc

    * slight overstatement: _all_ multi-threaded
      applications have race conditions- because if it
      doesn't, you didn't really need threading to begin
      with (or you're not taking advantage of its strength)

    * check this: the GIL protects you from race conditions
      and stops you using multiple cores(?)

    * tip: write/debug all multi-threaded applicatons in
      a single thread first

    * simple thread _example_: race condition with the same
      global variable being incremented by all threads. Also
      potential race condition with print statement.
      BUT!!!!! this race condition with the global variable
      doesn't show up when you run the code.

      You may run many times and it won't show up!! You've
      got a "_Heisen-bug_". If you look at the code while
      executing, you won't see the bug - particularly if you
      run this code through the debugger!

      _solution_: add a '_fuzzer_'. This little function
      adds a little _sleep_ between each operation.

    * anecdote: flying in a cloud - if you're untrained
      you'll only last 30 seconds. Bit like multi-threading!

    * solutions:
        * locks
        * atomic message queues

    * dont use locks! They good for operating systems but
      not other applications. Very difficult to reason about

    * raymond rule1: all resources will be run in exactly
      one thread

    * raymond rule2: all communication with the thread shall
      be done in an atomic message queue

    * easiest way to make something _sequential_: put it in
      one thread!

    * whats a thread with an infinite loop thats never going
      to finish: a _daemon_ thread

    * when a daemonised thread is finished, it sends
      a _message_ back that its finished

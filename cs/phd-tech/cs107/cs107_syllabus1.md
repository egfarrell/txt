CS107 Introduction to Computer Science | Programming Paradigms
Instructor: Jerry Cain

### Lecture 1
    * languages and paradigms taught:
    * c++ vs. pure C
    * procedural vs. object-oriented paradigms
    * assembly
    * concurrent programming overview
    * example of data sharing issues with concurrent programming
    * Scheme - functional paradigm overview
    * python overview, benefits and common uses

### Lecture 2
    * c/c++ data types - interpretations, sizes
    * bits- how bytes are broken up into bits
    * breaking up a character's decimal value into its underlying bit structure
    * shorts - interpreting data that consists of more than one byte
    * representations of negative numbers
    * the sign bit
    * two's complement addition
    * converting between chars and shorts
    * how the bit representation is transferred
    * converting between ints and shorts
    * sign extending during conversion
    * floats, converting between integers and floats

### Lecture 3
    * converting between types of different sizes and bit
    * representations using pointers
    * little endian vs. big endian
    * structs: how the data of a struct is stored
    * accessing the data of a struct, arrays
    * pointer arithmetic on arrays
    * result of casting arrays to different types
    * layout in memory of structs
    * dynamically allocated strings in C vs. arrays of characters
    * modifying internal data of structs using strcpy
    * character arrays and cout
    * generic functions in C using memory and pointers

### Lecture 4
    * creating a generic swap function for data types of arbitrary size
    * void\* type for generic pointers
    * implementation of swap function using memcpy
    * client interface to generic swap function
    * pros and cons of C generics vs. c++ generics
    * errors resulting from improper use of C generic swap
    * function that compile, swapping pointers
    * pitfalls when swapping pointers using generics
    * implementing a generic linear search
    * using casts and pointer arithmetic
    * comparing memory blocks using memcmp or a comparison function

### Lecture 5
    * generic lsearch - prototype, comparison function
      implementation
    * casting void\*s to char\*s to compute byte offsets
    * client use of generic _lsearch_
    * example of a comparison function for integers
    * more complicated data types
    * lsearch example using c-strings
    * comparison function for two c-strings
    * with arguments that represent char\*\*s
    * comparison functions where the key is a different type
      than the second argument
    * using a pointer to a struct as a key in order to
      access additional data in a comparison function
    * functions vs. methods
    * C data structures - implementing a non-generic stack
      of integers
    * C stack interface, implementation
    * preallocating memory
    * client use of C stack
    * state of internal memory of the stack
    * growth of memory when stack becomes too large
    * implementation of stacknew
    * asserts

### Lecture 6
    * integer stack implementation - constructor and
      destructor
    * stackpush implementation
    * reallocation of memory when stack grows too big using
      realloc
    * how memory is copied using realloc
    * stackpop implementation
    * reimplementing the stack interface as a generic data
      structure
    * generic implementation of stacknew
    * generic implentation of stackpush using memcpy
    * stackgrow implementation
    * static (internal) functions
    * generic stackpop implementation using memcpy, where it
      is the responsibility of the caller to allocate the
      memory where the popped element is stored.

### Lecture 7
    * problems with ownership of memory
    * how default implementation of stackdispose does not
      free dynamically
    * allocated data, adding a free function to the stack
      implementation
    * rewriting stackdispose to incorporate it
    * writing a free function for a stack of c-strings
    * pitfalls when writing such functions
    * C library functions for assignment
    * memmove (memcpy that can copy using two regions that
      overlap)
    * example of rotate function
    * C qsort function
    * global layout of memory - stack segment, heap segment
    * how the heap manager allocates and frees memory on the
      heap
    * underlying linked list of free node information

### Lecture 8
    * heap management - how information about allocations
      are stored in the heap
    * result of freeing memory improperly, actual sizes of
      heap allocations - nearest power of 2
    * management of free blocks on the heap by storing
      addresses in the blocks of free memory
    * algorithms for choosing which free block to allocate
    * how the heap's free list can be updated when memory is
      freed
    * how adjacent free blocks are combined to avoid
      fragmentation
    * compacting the heap by using handles, stack segment
      layout
    * allocation of local variables on the stack by
      decrementing the stack pointer
    * activation records and state of the stack pointer
      during nested function calls
    * assembly code and the code segment
    * ram, registers, and the alu
    * example that demonstrates how an arithmetic expression
      is translated into register operations

### Lecture 9
    * how a code snippet is translated into assembly
      instructions
    * 'store', 'load', and 'alu' operations
    * assembly optimizations for 4-byte addresses
    * context-insensitive code translation
    * overriding the 4-byte default in assembly
      instructions
    * translating a for loop into assembly, using branch
      instructions and the pc register
    * pointer/array arithmetic in assembly
    * unconditional branch instructions (jumps)
    * how a 4-byte assembly instruction is encoded in memory

### Lecture 10
    * more detail about activation records - layout of
      memory during a function call
    * how the return address of a function is stored on the
      stack
    * example showing how an activation record is
      constructed on the stack
    * setting up function parameters on the stack
    * using the call instruction to jump to the function
    * cleaning up at the end of a function and using the ret
      instruction and the saved return address to return to
      the original function
    * general layout of an activation record
    * who sets up each part of the activation record
    * assembly code translation of the factorial function
    * how recursion translates into assembly
    * why registers need to be reloaded after other
      functions are called
    * animation demonstrating the assembly execution for the
      factorial function

### Lecture 11
    * moving from C code generation to c++ code generation:
      basic swap example
    * code generation for the pointer swap function
    * code generation for the c++ version of swap using
      references
    * which are treated as automatically dereferenced
      pointers
    * local variables declared as references, difference
    * between references and pointers
    * effect of declaring a class on memory in the stack
    * class methods, which take a "this"
    * pointer as an invisible first parameter
    * effect of the "this" pointer on the activation record
      for a class method
    * static class methods (standalone functions), which
      don't contain a "this" pointer
    * compilation and linking - \#define and the
      preprocessor

### Lecture 12
    * preprocessing commands - \#define as a glorified find
      and replace
    * preprocessing macros - preprocessor commands with
      arguments
    * example of macro usage in the vector assignment to
      calculate the address of the nth element
    * assert macro implementation
    * how asserts are stripped out for the final product
      using \#ifdef and \#define
    * C macro drawbacks when given more complex arguments
    * \#include as a search and replace operation
    * < > vs. " "
    * output to the compiler after preprocessing
    * how to view the output of the preprocessor using gcc
    * how to avoid circular #include loops using \#ifndef
      \#define, and \#endif
    * visual representation of the result of preprocessing
      (the translation unit) that is passed to the compiler
      to create a .o file
    * an example illustrating the preprocessing and
      compilation of a simple program

### Lecture 13
    * review of compilation process of a simple program into
      a '.o' file
    * effect of commenting out a C standard library .h
    * file on the resulting translation unit
    * how gcc infers a prototype when none is found and the
      .o file remains the same
    * how the gcc linker is able to link standard library
      files without an #include
    * the (similar) result when the .h file with malloc's
      prototype is not included
    * how commenting out assert.h creates different results
    * failing in the linker since assert is a macro as
      opposed to a function in the standard libraries
    * effect of calling 'strlen' with the wrong number of
      arguments on the compilation/linking process
    * effect of calling 'memcmp' with too few arguments on
      the compilation/linking process
    * how C++ disambiguates between different function
      prototypes to avoid the problems posed by the previous
      two examples
    * debugging information - seg faults (usually
      dereferencing a bad pointer) vs. _bus_ errors
      (dereferencing data that isn't correctly aligned)
    * debugging example where overflowing an integer array
      leads to an infinite loop
    * similar example with a short array that works
      differently on big-endian systems vs. little-endian
      systems
    * example where an array overflow overwrites the saved
      pc and leads to an infinite loop

### Lecture 14
    * example in which writing past the end of array causes
      the return address of the function to be overwritten
    * leading to an infinite loop
    * example in which data is incorrectly shared between
      two different functions but can still be printed out
      due to the structure of the activation record
      (channelling)
    * how printf's prototype uses "..."
    * which allows it to take a variable number of
      arguments
    * why parameters are pushed onto the stack from right to
      left
    * in the context of printf crawling up the stack and
      functions with a variable number of arguments
    * justification for structs' fields being laid out
      sequentially in memory
    * in terms of casting between different structs with
      similar internal structures
    * sequential programming vs. concurrent programming
    * example of many different processes running in
      separate virtual address spaces
    * each mapped to physical addresses by a central memory
      management unit
    * how concurrent programming (multiprocessing) allows
      mutiple processes to seemingly run at the same time
    * how multithreading allows multiple functions in run
      'simultaneously' within one process (e.g. the office
      assistant in microsoft office or downloading songs in
      itunes)
    * real-world situation that can be modeled using threads
      (10 ticket agents simultaneously selling 150 tickets)

### Lecture 15
    * transitioning from sequential programming to
      concurrent programming in the ticket sale example
    * problems with the sequential model
    * threading interface and rewriting the ticket example
      to use it
    * adding a randomized threadsleep call to the threads to
      make the time slices used by the different threads
      less uniform
    * sample output of our ticket threads
    * how a thread can be interrupted in the middle of
      a nonatomic operation
    * how multithreading can drastically speed up the RSS
      news reader by allowing some feeds to be loaded while
      the other feeds are blocked
    * allowing each of the ticket threads to access a global
      pool of tickets rather than allocating 15 tickets to
      each agent
    * how this can lead to problems when threads attempt to
      access the shared data simultaneously
    * how we can prevent this from happening by enclosing
      the critical region within a semaphore
    * the semaphorewait and semaphoresignal functions
    * modifying the selltickets function to use the
      semaphore to protect the shared data
    * how changing the initial value of the semaphore can
      create deadlock or allow too many threads to access
      the shared data at once

### Lecture 16
    * review of semaphore syntax
    * semaphoresignal and semaphorewait
    * semaphore usage in the multithreaded selltickets
      function (protecting a critical region)
    * example of a race conditions where two ticket agents
      sell the same ticket
    * how the stack and various registers are saved when the
      currently running thread is swapped
    * another example using semaphores that models the
      internet
    * implementations of a reader and writer thread
    * potential dangers when the two threads run without
      protection
    * using a fullbuffer semaphore and an emptybuffer
      semaphore to ensure that neither thread outpaces the
      other
    * different semaphore patterns - binary lock vs.
      rendezvous
    * effect of changing the starting values of the
      emptybuffers and fullbuffers semaphore
    * how to detect deadlock
    * changes in the thread synchornization when using
      multiple readers and writers
    * dining philosopher problem - modeling each philosopher
      as a thread
    * how deadlock can result
    * how the deadlock can be eliminated by limiting the
      number of philosophers that can eat at once

### Lecture 17
    * review of the dining philosopher problem modeling each
      philosopher as a thread
    * how deadlock can result
    * how deadlock can be eliminated by limiting the number
      of philosophers that eat at once using a semaphore
    * using a global variable and a binary lock to track
      a resource vs. using a semaphore
    * another threading example involving ftp downloads of
      multiple files at once where each file is assigned to
      a thread and the total number of bytes is returned
    * implementing a downloadhelper function that downloads
      a file and then uses a binary lock to safely update
      the total number of bytes downloaded
    * ensuring that the 'downloadallfiles' function does not
      return before all the files have been downloaded by
      the threads which it spawns by using a 'childrendone'
      semaphore
    * ensuring that the 'downloadallfiles' function does not
      return before all the files have been downloaded by
      the threads which it spawns by using a 'childrendone'
      semaphore
    * how the 'childrendone' semaphore ensures that the
      function returns at the correct time no matter how the
      various threads are interleaved
    * setting up the ice cream store concurrency example for
      next week


### Lecture 18
    * setup of the _ice cream store_ problem, with customer
      cashier, clerk, and manager threads
    * the different constraints on the various types of
      threads
    * writing the main function
    * spawning the various threads
    * handling the manager-clerk interaction using the
      inspection struct, which uses a semaphore to signal to
      the manager that the clerk is ready for inspection, as
      well as a semaphore that ensures that the clerk will
      wait for the inspection to finish
    * writing the manager function
    * which performs each of the inspections and signals
      when each one is finished
    * writing the clerk function, which makes cones until
      the manager inspects and approves one;
    * why an additional semaphore must be added that
      protects the manager function
    * why each of the semaphores introduced so far is
      needed
    * writing the customer thread's function, which spawns
      clerk threads to deliver its ice cream cones and then
      waits until they are all finished
    * creating and protecting the line struct, which is used
      to keep track of the customers waiting for the cashier
      in order
    * writing the cashier thread's function, which checks
      out each person waiting in line in order, waiting if
      needed

### Lecture 19
    * imperative/procedural paradigms (C) and
      object-oriented paradigm(C++)
    * introduction to the functional paradigm (_Scheme_)
      which is based on synthesizing the return values of
      functions
    * example of a Scheme function definition that converts
      celsius to fahrenheit
    * Scheme environment (kawa)
    * Scheme primitives
    * Scheme lists
    * expressing functions
    * and function calls as lists
    * function examples: <, >, and Scheme list operations:
      car and cdr
    * distinguishing between lists and functions with
      ' (quote)
    * origin of "car" and "cdr"
    * the cons function, which constructs a new list by
      prepending the first argument to the second element
      (which must be a list)
    * the append function, which concatenates two or more
      lists
    * defining our own add function
    * "define" as an operation in Scheme with side effects
    * run-time error checking in Scheme
    * writing a recursive function that sums all of the
      numbers in a list

### Lecture 20
    * car-cdr recursion problem that returns the sum of
      every element in a list of integers
    * how Scheme checks type during run-time rather than
      compilation
    * recursive implementation of the Fibonacci function in
      Scheme
    * example that illustrates runtime error/type checking
      vs. compile-time error/type checking
    * writing a recursive flatten function that removes all
      the intervening parentheses from a list, using a cond
      structure to branch over the various recursive cases
      in the flatten function
    * using the 'else' statement to make sure that cond
      always returns something
    * writing the sorted? function for a list of integers
    * using the 'or' function to handle the base case logic
      and cadr as shorthand for the second element
    * using < and <= with multiple arguments in Scheme
    * function pointers in Scheme
    * how function data is stored like a linked list in
      Scheme and function names are linked to code in
      a symbol table
    * generalizing the sorted? function by passing in
      a comparison function as the second parameter

### Lecture 21
    * introduction to the kawa development environment:
    * evaluation of expressions
    * loading function definitions from a .scm file
    * mapping arbitrary unary functions over lists in Scheme
      using the map operation
    * mapping list functions (car, cdr) over lists of lists
    * using mapping functions with more than one input by
      passing multiple lists into map
    * implementing the unary version of map using recursion
    * APPLY, which allows you to specify a function to be
      prepended to a
    * list of arguments and be evaluated
    * and EVAL, which evaluates a list as though it were
      typed into the commandline, using apply to implement
      an average function without recursion
    * how eval can be used to apply non-functions like 'and'
      and 'define' to a list, or to evaluate a complicated
      expression created while the program is running
    * revisiting flatten using map and apply
    * writing a flatten implementation that maps itself over
      each of its elements and appends each of the results
      together using apply
    * implementing a translate function, which shifts each
      point in a list of points by a certain delta
    * how a typical mapping function is not usable because
      of its need for client data
    * using the lambda function to define a nameless
      function on the fly, which can access the delta value
      since it is constructed within the translate function
    * defining functions within functions as an alternative
      to using lambda
    * how the DEFINE keyword implicitly uses the lambda
      keyword to associate a name with a function

### Lecture 22
    * writing a recursive power set function in Scheme
    * using a lambda mapping function that cons-es the car
      to every element in the power-set of the cdr to make
      the recursive step in the power-set function
    * using a let binding to cause power-set to only make
      one recursive call rather than two
    * structure of a let binding
    * how expressions within a let binding cannot depend on
      each other unless the let\* keyword is used
    * how a let binding is compiled to the evaluation of
      a lambda expression
    * writing a permute function, which prints out a list of
      all permutations of a given list
    * writing the overall algorithm for the permutation
      function
    * which maps a function over each element in the list
      that produces each permutation starting with that
      element
    * then appends the results together, writing the mapping
      function for the permute function
    * which maps another function (that simply conses the
      current element) to each permutation of the list of
      elements when the current element is removed
    * coding without side effects and immutability of lists
      in Scheme
    * memory allocation in Scheme and the read-eval-print
      loop
    * how integers, strings, and lists are laid out in
      memory when they are typed into the Scheme command
      line

### Lecture 23
    * Scheme memory model - how Scheme instructions
      synthesize linked lists behind the scenes and perform
      operations on them
    * two different ways of laying out a list in memory
    * one with memory aliasing and one without
    * the Scheme equivalent of "..." (functions with
      multiple arguments)
    * writing a generic map function
    * modifying the unary-map
    * function to handle multiple arguments by adding a . to
      the list of arguments
    * extending unary-map to an n-ary map implementation
      using .
    * sample trace of the n-ary map function
    * garbage collection in Scheme
    * how care must be taken when reclaiming global
      variables to ensure that they won't be needed later
    * high-level mechanics of garbage collection: reference
      counts, or sweeping through the data and marking all
      reachable data, then freeing the rest
    * other functional languages: Scheme, ML, Haskell
      Erlang

### Lecture 24
    * overarching features of python: scripting language
      imperative, object-oriented, functional
    * more python overview - dynamic typing, use of
      whitespace and tabs
    * python environment
    * execution of basic statements
    * calling methods using objects (and anonymous objects
      like string literals)
    * evaluating assignments
    * python strings, string methods, and lists/sublists
      (including index wrapping)
    * strings as lists of characters in python
    * replacing characters within a list
    * mutable lists vs. immutable lists
    * writing the gatherdivisors function, which lists all
      the divisors of the inputted
    * numbers: function/line syntax (incl. tabs)
    * FOR loop syntax and iterables
    * using and importing python modules
    * python dictionaries
    * adding and retrieving data from dictionaries
    * how heterogeneous data is allowed inside dictionaries
    * look ahead: python libraries, more about dictionaries

### Lecture 25
    * rewriting rsg to illustrate all three paradigms and
      lambdas in python
    * how objects are implemented in python
    * python dictionary implementation
    * writing an rsg grammar in python using a dictionary
      and lists
    * expanding the start terminal using all three paradigms
      at once
    * changing the expand function to a binary function
    * modifying the map to use a python lambda function as
      a result
    * python object model from a memory standpoint
    * how objects are passed by reference and how lists are
      copied
    * how to make a deeper copy of an object in python using
      copy or deepcopy
    * objects and classes in python
    * how they are stored as dictionaries
    * example of a class constructor and how it creates
      initializes the class's data
    * rest of the python lexicon implementation
    * python object interface
    * accessing the underlying dictionay of an object
    * inserting new values into an object's underlying
      dictionary

### Lecture 26
    * XML processing and python - two different XML
      processing models
    * example XML fragment
    * how an XML parser uses tag handlers to break up an XML
      stream
    * how python can parse XML streams using urlopen
    * make_parser and contenthandler
    * defining a 'listfeedtitles' function that takes in
      a url and parses it using a parser and an RSShandler
    * 'contenthandler' interface
    * implementing the 'RSShandler' class, which subclasses
      contenthandler, to fit the specific goals of the RSS
      feed reader
    * implements the RSShandler so that it only prints data
      that lies within a title tag
    * looking at an actual RSS feed in firefox and through
      telnet
    * looking at an XML document with a tree-based XML
      renderer rather than a stream-based parser
    * advantages of this approach

### Lecture 27
    * Haskell history
    * safeguards in Haskell that avoid runtime errors
    * expressive functions in Haskell
    * speed of Haskell
    * Haskell fibonacci sequence in one line using lazy
      evaluation
    * how lazy evaluation allows if statements
    * Haskell types
    * user-defined data types
    * representing the null type in Haskell
    * list types
    * strings as lists and recursive type definitions
    * list functions and pattern matching
    * type variables and functions
    * recursive map function
    * reasons for the lack of object-oriented code in
      Haskell
    * how to get a job using Haskell
    * three functions that are easier to write in Haskell

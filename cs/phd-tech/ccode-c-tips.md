

### Best books for learning C
    - https://news.ycombinator.com/item?id=33130533
    - Over the years, I have acquired most of what people call
      seminal C books, and after reading them, I recommend the
      following two books to people who already know programming:
    - Peter A. Darnell and Philip E. Margolis C - A Software
      Engineering Approach (3rd ed.)
    - David Hanson C Interfaces and Implementations: Techniques
      for Creating Reusable Software (!st ed.)
    - The first is clearly written and focuses on ANSI C (lexis,
      syntax and semantics), with a healthy dose of software
      engineering education along the way, which you may already
      have. (It does not yet cover the latest ISO changes.)
    - The second book is a true gem that teaches even seasoned
      programmers how to implement correct, clean and portable
      components as libraries in ISO C, with plenty of source
      code to show how the true masters of the language craft the
      finest code you can in C. Most books how fragments of
      linked list implementations, but only this book shows
      complete a whole range of important ADTs you cannot live
      without (e.g. List, Ring, Atom) in C portably, with strong
      typing, bullet-proof error handling etc. (Hanson is also
      the author of lcc, a portable C compiler.)
    - I'm actually surprised that these are both are so little
      known, and that the second one hasn't seen more editions. 

### Include differences
    - `#include "filename"` 
        - Preprocessor searches same folder as current file.
        - Normally used to include programmer-defined header
          files.

    - `#include <filename>` 
        - Preprocessor searches in implementation dependent manner, 
        - Normally in search directories pre-designated by the compiler/IDE. 
        - Normally used to include standard library header files.

### Difference single / double quotes
    - single quotes identify a single _character_, 
        - 'a' is a single a character literal, 
    - double quotes create a _string_ literal. 
        - "a" is a string literal containing an 'a' and a null terminator (that is a 2 char array).

### C program running
    - before you get to `main()` your C program runs some Lib
      C system code...
    -  and after your function finishes, more Lib C code is
       run...

### STATIC
    - whenever you want values to persist accross function
      invocations, declare the variable with STATIC

### EXTENSIONS
        .s:   aSSembly code
        .d:   dissassembled object file
        .o:   relocatable object file
        .a:   static library
        .so:  shared library


### C Standards: C11, C17, C18
    - Thoughts the C community had before shaping C11:
      http://www.open-std.org/JTC1/SC22/wg14/www/docs/n1250.pdf
    - C11 suffered from some serious defects. See here:
      http://www.open-std.org/jtc1/sc22/wg14/www/docs/n2244.htm
    - Seven years later, C18 was introduced, which came about to
      fix the defects found in C11.
        - Note: C18 is also informally referred to as "C17"
        - Note: C18 doesn't offer new features, just bug fixes.

### Strings
    - Strings are actually just arrays of characters. 
    - If we had a string `s`, each character can be accessed with
      `s[0]`, `s[1]`, and so on.
    - It turns out that a string ends with a special character,
      `\0`, or a byte with all bits set to 0.
    - This character is called the `null` character, or null
      terminating character. So we actually need _FOUR_ bytes to
      store our 3 character string "HI!"

### typedef
    - The typedef declaration in C provides a way of giving
      a name to a data type. The syntax for typedef is exactly
      like that of declaring a variable, except that it uses
      a type name rather than a variable name. For example, the
      declaration
      - ```
      - typedef int *int_pointer;
      - int_pointer ip;
      - ```
      - defines type `int_pointer` to be a pointer to an `int`,
        and declares a variable `ip` of this type. 
    - Alternatively, we could declare this variable directly as
        - `int *ip`

### Word size dependency
    - With the transition to 64-bit machines, many hidden word
      size dependencies have arisen as bugs in migrating legacy
      code to new machines.
    - Eg many programmers historically assumed an object declared
      as type `int` could be used to store a `pointer`. This works
      fine for most 32-bit programs, but leads to problems for
      64-bit programs.

### Flexible declaration
    - all these are the same:
        - unsigned long
        - unsigned long int
        - long unsigned
        - long unsigned int

### Signed or unsigned
    - Most data types encode `signed` values, unless prefixed by
      the keyword `unsigned` or using the specific unsigned
      declaration for fixed-size data types.
    - The exception is data type `char`. Although most compilers
      and machines treat these as _signed_ data, the C standard
      does not guarantee this.
    - Instead, as indicated by the square brackets, the
      programmer should use the declaration `signed char` to
      guarantee a 1-byte signed value. In many contexts the
      program’s behavior is insensitive to whether data type char
      is signed or unsigned.

### data type sizes
    - To avoid the vagaries of relying on “typical” sizes and
      different compiler set- tings, ISO C99 introduced a class
      of data types where the data sizes are fixed regardless of
      compiler and machine settings.
    - Among these are data types `int32_t` and `int64_t`, having
      exactly 4 and 8 bytes, respectively. Using fixed-size
      integer types is the best way for programmers to have close
      control over data represen- tations.

### 32-bit or 64-bit architecture
    - gcc -m32 prog.c
        - this program will run correctly on either a 32-bit or
          a 64-bit machine.
    - gcc -m64 prog.c
        - program will _only_ run on 64-bit machine
    - a 32-bit or 64-bit 'program' refers to how it was compiled

### Hex
    - In C, numeric constants starting with `0x` or `0X` are
      interpreted as hexadecimal.
    - The characters ‘A’ through ‘F’ may be written in either
      upper or lowercase.
    - We could write the number FA1D37B16 as 0xFA1D37B, as
      0xfa1d37b, or even mixing case (e.g., 0xFa1D37b).

### Gcc versions
    - C version        gcc command-line option
    - GNU 89           none, -std=gnu89
    - ANSI, ISO C90    -ansi, -std=c89
    - ISO C99          -std=c99
    - ISO C11          -std=c11

### Avoid null pointer access
    - p && *p

### Boolean
    - In the 'C' lang: `0` is 'False'
    - Anything nonzero     is 'True'

### memory, stack, frames  and heap
    - ./malan/00b-malan-stack-heap-pointers.md
    - https://www.youtube.com/watch?v=_8-ht2AKyH4
    -   |--------------------|
    -   |                    |  - FIXED size (calcuated at compile-time, (local function variables go on the stack)
    -   |   Stack            |  - set rule for allocation/deallocation (functions pushed/popped onto stack)
    -   |                    |  - accessed directly (local function variables)
    -   |                    |  - $MY_IMAGES/cs/mem-01-stack.jpg
    -   |                    |  - $MY_IMAGES/cs/mem-03-stack.jpg
    -   |--------------------|
    -   |            ▲       |  - size can vary (free memory pool, can GROW as long as you don't run out)
    -   |            ▲       |  - DYNAMIC memory allocation: no set rule
    -   |            ▲       |  - accessed INDIRECTLY (via pointers)
    -   |   Heap             |  - C: malloc, calloc, realloc, free.  C++: new, delete
    -   |                    |  - dont forget to FREE any allocated heap memory!
    -   |                    |  - $MY_IMAGES/cs/mem-02-heap.jpg
    -   | -------------------|
    -   |  Static/Global     | - global variables (lifetime of application)
    -   | -------------------|
    -   |  Code (text)       |
    -   | -------------------|


### x86-64 64 bit
    - AMD64 was created as an alternative to the radically
      different 'IA-64' architecture (designed by Intel and HP).
    - Introduced in 2000, the AMD64 architecture was positioned
      as an _evolutionary_ way to add 64-bit computing
      capabilities to the existing 32-bit x86 architecture. (As
      opposed to Intel's approach of creating an entirely new
      64-bit architecture with IA-64)
    - Eventually Intel abanded IA-64 and introduced EM64T
      extension to IA-32. Now called 'Intel 64', similar to
      'AMD64'
    - Differences between AMD64 and Intel 64: Although nearly
      identical, there are some semantic differences between the
      two instruction sets for a few seldom used machine
      instructions (or situations), mainly in system programming.
      Compilers generally produce executables (i.e. machine code)
      that avoid any differences.


### Null
    - Remember NULL and NUL are different.
    - NULL is used as a special pointer and is typically defined
      as `((void*)0).`
    - NUL is a char and is defined as '\0'. They should not be
      used interchangeably.

### Read pointer definitions BACKWARDS
    - `const int *pci;`
        - pci is a variable
        - pci is a pointer variable
        - pci is a pointer variable to an integer
        - pci is a pointer variable to an constant integer

### Nice defintiion
    - "A pointer is an integer that indicates a position in the
      RAM."
    - Thus, if a pointer "p" indicates a position in memory, then
      "p+1" is a pointer that indicates the next position in the
      memory.
    - The value on that cell of memory is often written as p[1].

### Declaring pointers (but don't get the last comment)
    - We call this operator the dereference operator [1].
    - It looks like a star `*`
    - That's the one.
    - That's the dereference operator.
    - As you know. It's also the multiplication operator.
    - One of the confusing things is that when you declare
      a pointer, you ALSO use a `*`
    - Eg:
        - `int *a;`
        - `int * a;`
        - `int* a;`
    - In those 3 examples, the * is not a dereference operator.
      It simply indicates that it is a pointer. In this case we
      have an int pointer.
    - I always like to view it as: we have an int! And this is
      how many times we're allowed to use the dereference
      operator: one time
    - How many times are you allowed to use it on this pointer?
    - `int *****super_pointer`
    - Thats right, 5 times! (?????)
        - (Another way to think of pointer declarations)
        > In those 3 examples, the `*` is not a dereference
        > operator, it simply indicates that it is a pointer
        - In actuality, C declarations are meant to mirror the
          use of the variable. You could think of the asterisk in
          declarations as the same unary operator:
            - `int *a; // dereferencing "a" gives you type "int"`

### handy resources
    - ./valgrind.md
    - learn c and build a lisp http://www.buildyourownlisp.com
    - 21st Century C:          https://www.amazon.com/21st-Century-Tips-New-School/dp/1491903899
    - Pointers!                https://www.amazon.com/Understanding-Using-Pointers-Techniques-Management/dp/1449344186

### learning C: (basic concepts)
    - Problem: Many students learning low-level C don't know
      assembly programming
    - Instead of visualizing a 'Von Neumann machine', they only
      know the syntax, and they see programming as finding
      a magic piece of code online to copy/paste.
    - The simple ideas of
        * stack frames,
        * heaps,
        * registers,
        * pointers are completely foreign to them

    - Other viewpoint: Despite the fact that C implements its own
      semantics, those semantics are downright bizarre and hard
      to gain intuition about unless you have a mental model of
      the machine.

    - E.g. these things confused me when I first learned C:
        * why isn't there an actual string data type? (just
          `char*`)
        * why do some people use "char" to store numbers?
        * whats the deal with pointers?
        * why are pointers and arrays sorta interchangeable?

        - Until I learned how things work at the assembly
          language level, I couldnt gain an intuitive
          understanding for why C works the way it does.

### C and C++ compiler
    is "two pass"

### memory
                          Scope                                        Lifetime
                          -----                                        --------
    - GLOBAL              Entire file                                  Lifetime of application
    - STATIC              inside Function its declared in              Lifetime of _application_
    - AUTOMATIC (local)   inside Function its declared in              While function executing
    - DYNAMIC             Determined by pointers that reference it     Until memory freed

    - Note: Local variables are also called 'automatic' variables.
            They are always allocated to a stack frame.

### pointers
    - an asterisk declares a variable as a pointer. Its an
      _overloaded_ symbol as it also used for multiplication and
      dereferencing a pointer.
    - pointers and integers are not the same. They may both be
      stored with the same number of bytes (on most machines),
      but theyre not the same.
    - However its possible to cast an integer to a pointer to an
      integer: `pi = (int *)num;` (This will not generate
      a syntax error, but when executed, the program may
      terminate abnormally when it attempts to dereference the
      value at address zero)
    - Note: when doing "printf" on pointers, the address
      displayed may be a virtual memory address and not a real
      physical memory address.
    - dereferencing using the 'Indirection' operator:

      ```
      int num = 5;
      int *pi = &num;
      printf("%p", *pi) // displays "5"
      ```

    - dereferencing note: We can use the result of the
      dereference operator as an '_lvalue_'.
    - An 'lvalue' is the operand found on the left side of the
      assignment operator. All 'lvalues' must be modifiable since
      they are being assigned a value:

      ```
      *pi = 200;
      printf("%p", *pi) // now displays "200"
      ```

# stack frame consists of:
    - Return address
        - The program address where the function is to return
          upon completion

    - Storage for local data
        - Memory allocated for local variables

    - Storage for parameters
        - Memory allocated for the function’s parameters

    - Stack and base pointers
        - Pointers used by the RUN-TIME SYSTEM to manage the stack

        - The typical C programmer will not be concerned about
          the stack and base pointers. However, understanding
          what they are provides a more in-depth understanding of
          the program stack.

        - A stack pointer usually points to the top of the stack.

        - A stack base pointer (frame pointer) is often present
          and points to an address within the stack frame, such
          as the return address.

        - This pointer assists in accessing the stack frame’s
          elements.

        - Neither of these pointers are C pointers. They are
          addresses used by the RUN-TIME SYSTEM to manage the
          program stack. If the runtime system is implemented in
          C, then these pointers may be real C pointers.


### Passing data
    - If data needs to be _modified_ in a function, it needs to
      be passed by pointer.
    - But we can prevent it from being modified: pass the data as
      a pointer to a _constant_.

### Compile
    `cc ex1.c -o ex1`
    - 'cc' and 'gcc' are same on Ubuntu
    - show all warnings "-Wall"
    - valgrind
    - splint
    - gcov

### C DEBUGGERS
    - gdb:   GNU,   gcc,    1986,  mature, stop a single thread at a breakpoint
    - lldb:  LLVM,  clang,  2007,  better license, better c++ support
    - "gcc" = GNU C Compiler

### HN Beej's Guide to C Programming (2007)
    - https://news.ycombinator.com/item?id=15198093
    - Beej's Guide to C Programming http://beej.us/guide/bgc/
    - A Tutorial on Pointers and Arrays in C: http://home.netcom.com/%7Etjensen/ptr/pointers.htm
    - Right-left Rule: http://ieng9.ucsd.edu/~cs30x/rt_lt.rule.html (via HN)
    - More free C stuff: https://github.com/EbookFoundation/free-programming-books/blob/master/free-programming-books.md#c

    - More HN about Beej: (talk about network programming)
    https://news.ycombinator.com/item?id=13983212

    - I had to go through lots of stuff to finally find resources
      that explain things in a way that I can understand.
    - Once its explained to me in a certain way, 'C' suddenly
      feels a lot less cryptic and I feel a lot less
      hopeless/useless.

### main method
    - every program must have one
    - all programs return an integer
    - if no explicit return statement then a default of 0 (success) is
      returned

    `int argc`
        - (integer) count of number of arguments passed

    `char* argv[]`
        - array of strings passed as arguments
        - argv[0] is the name of the prog

### Hiding variable and function names with 'static'
    - C programmers use the static attribute to hide variable and
      function declarations inside modules, much as you would use
      _public_ and _private_ declarations in Java and C++.
    - C source files play the role of modules.

    - Any global variable or function declared with the static
      attribute is _private_ to that module.

    - Similarly, any global variable or function declared
      _without the static_ attribute is _public_ and can be
      accessed by any other module.

    - It is good programming practice to protect your
      variables and functions with the static attribute
      wherever possible.

### HN article tips
    - linux dev tip: Head First C by Griffiths & Griffiths
    - linux dev tip: Expert C Programming:... van der Linden
    - How I program C Eskil Steenberg
      https://www.youtube.com/watch?v=443UNeGrFoM
    - I've written many tens of thousands of lines of C, but
      retired 15 years ago. The two best books I know are:
        - 1. C: A Reference Manual, by Harbison and Steele.
          https://www.amazon.com/Reference-Manual-Samuel-P-Harbison/dp...
        - 2. The C Puzzle Book, by Alan Fueur.
          https://www.amazon.com/Puzzle-Book-Alan-R-Feuer/dp/020160461...
        - Harbison and Steele has much better explanations than
          K&R. The Fueur book taught me a lot about
          C declarations. _Declarations_ are that part of
          C language that is them most unnecessarily difficult.

    - You asked about a slightly different question, best
      practices. But in the real world you'll run into a lot of
      code that practices below that level. 


### Links
    - Reilly course, numerical c computing   https://github.com/bwkeller/high_performance_computing.git
    - HN discussion GCC                      https://news.ycombinator.com/item?id=24234183
    - GCC blog post                          http://hubicka.blogspot.com/2019/05/gcc-9-link-time-and-inter-procedural.html
    - Interesting C printf warnings          https://news.ycombinator.com/item?id=24302428
    - List of C compilers                    https://en.wikipedia.org/wiki/List_of_compilers#C_compilers
    - HN: C++ doesnt need a preprocessor     https://news.ycombinator.com/item?id=25322891
    - HN: Right way to learn C               https://news.ycombinator.com/item?id=22519876
    - HN: Getting started with C             https://news.ycombinator.com/item?id=25442165
    - HN: Nice analogy pointers              https://news.ycombinator.com/item?id=26911399
    - Vim C syntax highlighting              https://news.ycombinator.com/item?id=28201652
    - Course: Advanced C systems programming https://news.ycombinator.com/item?id=33140795

malan tips - pointers etc

### how big are pointers?
    - on a 32-bit machine, pointer addresses are 4 bytes long
      (`4*8`)

### stack, frames  and heap
    - STACK
        - hardware managed?
        - block of memory holding frames
        - much more efficient!
    - FRAMES
        - hold local variables for a function,
        - but this memory deleted once function ends
    - HEAP 
        - software managed?
        - dynamically allocated memory (new, malloc)
        - chunk of memory not used for/by functions, but for
          longer term memory. not as efficient! (have to search
          around the heap to see what/where the pointer is
          referencing)
    - SEG FAULT but the stack can run into the heap! e.g
      recursive program,
        - blow through the heap
        - then the memory segment
        - hence seg fault!

### pointers
    - declare a pointer
        `int* ptr`
    - get an address and store it in a pointer
        `int x = 50`
        `ptr = &x`
    - go to an address and get its value
    `*ptr` is equivalent to x
        `printf("%i\n", *ptr)`

### dereference
    `*x = 42`
    store the VALUE 42
    at the pointer address x

### passing pointers
    pass values
        `swap(int a, int b)`

    pass pointer addresses
        `swap(int* a, int* b)`
        `swap(int *a, int *b)`

### `pointer*`
    the ASTERISK denotes a pointer
    pointers mean "go to" this address

### `char*` terminator?
    \0
    NULL character!

### compare strings
    strcmp(s,t)
    returns 0 if 's' and 't' equal

### malloc!
    - malloc actually returns the _ADDRESS_ of the first byte in
      the chunk of memory it allocates

### malloc!
    `char* s = get_string()`
    `char* t = malloc((strlen(s) + 1) * sizeof(char));`
        'char' is usually one bite,
            but sizeof makes this code portable

        the '+ 1'
            is for the null terminating character

        garbage
            the 6 bytes of 't' allocated by malloc
            actually storage unitialised garbage values.
            you must assign the 's' values into 't'

### pointer arithmetic
     inside loop
        `t[i] = s[i];`
     is syntatic sugar for
        `*(t + i) = *(s + i);`

### hex numbers
    start with 0x

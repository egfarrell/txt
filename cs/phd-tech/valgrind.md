valgrind

### valgrind memory leak (from Malan course)
    problem
        if keep asking for memory with 'malloc'
        but dont hand it back
    valgrind
        call 'valgrind --leak-check=full'
        and see the 'heap summary', 'in use at exit'
    solution?
        free(myvar)
    other problem
        `int* x = malloc(10 * sizeof(int))`
        `x[11] = 50`
        aaah youve gone over the bounds of the array
        valgrind will find it


### bad calls to free
    e.g. mistakenly include 'free' inside a loop
    valgrind msg: total heap usage 1 alloc, 4 frees

### still reachable
    heap allocated memory which STILL HAS a pointer at exit
    usually a global variable
    option: still-reachable=yes

### memory leak
    definitely lost: 16 bytes in 1 blocks
        in cs50 example, the pointer wasn't
        in scope when the program exited

### pointer not initialised
   conditional jump or move depends on uninitialised values

### for mesa
    So I use valgrind as
    valgrind --tool=callgrind --dump-instr=yes --simulate-cache=yes --collect-jumps=yes ./star

    to profile the code then use _kcachegrind_ to visualize
    the output (this gets a lot of info out plus has nice
    graphics to see where the slow points are)


    then there's also
    valgrind --tool=massif ./star
    to profile the memory usage and _Massif-Visualizer_ to
    view the output

    and finally
    valgrind ./star
    if you just want to look for memory leaks

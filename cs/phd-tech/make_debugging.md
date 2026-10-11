make debugging 

You mean a different 'make' program? 

There's nothing wrong with 'make' here; the R binary "crashed": 


```
$ printf '#include<stdlib.h>\nint main(){abort();}' | gcc -o dump_core -x c - 
```

    dump_core created


```
$ printf 'all:\n\t@echo | ./dump_core' | make -f - SHELL=/bin/bash
```

    /bin/bash: line 1: 25600 Done                    echo 
        25601 Aborted                 | ./dump_core 
    make: [all] Error 134 

`$ ulimit -c unlimited` 

`$ printf 'all:\n\t@echo | ./dump_core' | make -f
- SHELL=/bin/bash` 

    /bin/bash: line 1: 25607 Done                    echo 
        25608 Aborted                 (core dumped) | ./dump_core 
    make:  [all] Error 134 


> I see at the bottom 

> there is a core dump but no justification. 

Could be a memory addressing 
Memory addressing errors usually give _SIGSEGV_.  

The justification for dumping a core file is _SIGABRT_, 
since that's the default action for it. 

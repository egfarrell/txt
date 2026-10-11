### call expressions
    - when theres a  big call expression you must use an expression tree
    - assignment: binds   a name to  a  value
    - functions:  bind    a name to  an expression
    - every expression is evaluated in the context of an environment

### environment
    so far, the current environment is either
    - the global frame alone
    - a local frame, followed by the global frame

    an environment is
        - a sequence of _frames_
        - a name evaluates to the value bound to that frame, in
          the earliest frame of the current environment in which
          that name is found

    non pure function
        like a leaky pipe

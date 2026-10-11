py tuples lists

Python has two seemingly similar sequence types:
    -  tuples and lists.

### Compare
    Tuples                            lists
    ------                            -----
    * immutable                       * mutable
    * parentheses                     * square brackets
    * are heterogeneous               * are homogeneous
    * have __structure__              * have __order__.
    * not just constant lists

### important:
    - the index in a **tuple** has an implied __semantic__.
    - The point of a tuple is that the i-th slot means something
      specific.
    - In other words, it's a index-based (rather than name based)
      datastructure.


### Tuples
    - (generally) are sequences of different kinds of stuff, and
      you deal with the tuple as a coherent unit.

### Lists
    - (generally) are sequences of the same kind of stuff, and
      you deal with the items individually.


Consider the following 2 data structures:

### tuple example
    >>> import time
    >>> time.localtime()
        (2008, 2, 5, 11, 55, 34, 1, 36, 0)

    - This is a sequence in which position has semantic value.
    - The first position is always a year.
    - This tuple functions as a 'lightweight record' or 'struct'.


### list example
    >>> range(10)
        [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

    - This is a sequence where we may care about order, but where
      the individual values are functionally equivalent.


### comment
    It's easy to imagine adding or removing items from the second
    example (the list) without breaking code that handles it or
    creating something undefined; for the first one, not so much.


### relational algebra
    This notion of 'tuple' is very important in relational algebra (as
    Phillip also points out) and so I've been thinking about it in the
    context of relational python too.

### relational python
    - When I started playing around with relational python (which
      I need to get back to blogging about), it occurred to me
      that it might be useful to have the notion of a tuple whose
      slots could additionally be named and then accessed via
      name. 
    - I implemented it that way in _Basic Class for Relations_.

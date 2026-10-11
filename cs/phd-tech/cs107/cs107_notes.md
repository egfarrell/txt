
# lecture 02

### What datatypes have you seen before?
    * _bool_ - technically could be mapped to a single bit
      in memory but its not practical to do that.

    * _char_ - theres 256 of them, but we only use about 75.
      1 byte

    * _short_ (2 bytes)

    * _int_ (2 - 4 bytes) we'll assume _4_ for this course

    * _long_ (4 bytes) [another type: "long long" - gives
      8 bytes for really large decimal numbers]

    * _float_ (4 bytes) It somehow tries to take 4 bytes of
      memory and represent an arbitraily precise number, to
      the degree it can. Remember its using a finite amount
      of memory to represent a number that sometimes needs
      an infinite amount of precision.

    * _double_ (8 bytes) sometimes 10 or 12 bytes either.

### bits
    is a very small unit of memory that can distinguish
    between _2 different values_. (Engineers think of it in
    terms of high and low voltages!)

    Bits are more interesting when they're taken in _groups_.

    Single byte in memory:
    --------------------------------------------------------
    |_0/1_| _0/1_| _0/1_| _0/1_| _0/1_| _0/1_| _0/1_| _0/1_|
    --------------------------------------------------------

    Now as we look at the byte above, we see theres
    8 independent choices for each of the bits.

    That means this byte as a grouping can take `2^8 = 256`
    different values.

### Convert decimal -> binary
    "perfect powers of two"
    'A' = 65
        = 64 + 1
        = 2^6 + 2^0
        = 0 1 0 0 0 0 0 1
        =   |           |
            |           |
            V           V
            2^6         2^0

### Short
    its made from two bytes
    so we've got `2^16` different possible __patterns__,
    i.e.`2^16` different possible numbers

    Now think about this two byte number:
    01111111 11111111
    |
    |
    V
    "position 1"

    * Its just one less than `2^15`, which is what a "1" in
      "position 1" would mean.
    * almost you had a decimal number like `0.9999999`
    * So we can store numbers up to `2^15 - 1`

### left-most sign bit
    we could make the left-most "first" bit represent the
    sign. But in practise we dont because we want addition
    and subtraction to follow simple rules for the hardware
    to follow.
    (this is called "ones complement"?)

### twos complement
        how to subtract 15?
        "invert all the bits and add one to it"

     _15_      00000000 00001111
    _-15_      11111111 11110000
     ---------------------------
               11111111111111111
                               1  <-- causes "binary ripple"
                                   and "one" will "overflow" 
                                   and disappear
      _0_      00000000000000000

### negative numbers
    important: a negative number in bits is just some
    representation that when you add its positive version
    to it, you get all zeros?

    e.g. short my_short = -1;
    11111111 11111111 
    why?
    cos if you __add 1__ to that you get
    00000000 00000000 

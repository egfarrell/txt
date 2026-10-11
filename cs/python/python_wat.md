### Python wat explanation

This page provides explanations for the details behind the
Python wats.

### The undocumented converse implication operator

    >>> False ** False == True
    True
    >>> False ** True == False
    True
    >>> True ** False == True
    True
    >>> True ** True == True
    True

    This is not actually an undocumented feature. ** is simply
    the exponent operator, and False and True are simply the
    numbers 0 and 1. In mathematics, 0^0 = 1, 0^1 = 0, etc. It
    just happens to work out that the truth table is the same as
    for the converse implication operator.


### Mixing numerical types

    >>> x = (1 << 53) + 1
    >>> x + 1.0 < x
    True

    The value of x can be exactly represented by a Python int,
    but not by a Python float, which has 52 bits of precision.
    When x is converted from int to a float, it needs to be
    rounded to a nearby value. According to the rounding rules,
    that nearby value is x - 1, which can be represented by
    a float.

    When x + 1.0 is evaluated, x is first converted to a float
    in order to perform the addition. This makes its value
    x - 1. Then 1.0 is added. This brings the value back up to
    x, but since the result is a float, it is again rounded down
    to x - 1.

    Next the comparison happens. This is where Python differs
    from many other languages. In C, for instance, if a double
    is compared to an int, the int is first converted to
    a double. In this case, that would mean the right-hand side
    would also be rounded to x - 1, the two sides would be
    equal, and the < comparison would be false. Python, however,
    has special logic to handle comparison between floats and
    ints, and it's able to correctly determine that a float with
    a value of x - 1 is less than an int with a value of x.

### Operator precedence?

    >>> False == False in [False]
    True

    Neither the '==' nor the 'in' happens first. They're both
    comparison operators, with the same precedence, so they're
    chained. The line is equivalent to 
    >>> False == False and False in [False]
    which is True.

### Fun with iterators

    >>> a = 2, 1, 3
    >>> sorted(a) == sorted(a)
    True
    >>> reversed(a) == reversed(a)
    False

    Unlike sorted which returns a list, reversed returns an
    iterator. Iterators compare equal to themselves, but not to
    other iterators that contain the same values.

    >>> b = reversed(a)
    >>> sorted(b) == sorted(b)
    False

    The iterator b is consumed by the first sorted call. Calling
    sorted(b) once b is consumed simply returns [].

### extend vs +=

    >>> a = ([],)
    >>> a[0].extend([1])
    >>> a[0]
    [1]
    >>> a[0] += [2]
    Traceback (most recent call last):
    File "<stdin>", line 1, in <module>
    TypeError: 'tuple' object does not support item assignment
    >>> a[0]
    [1, 2]

    Explanation from the Python FAQ.
    all and emptiness

    >>> all([])
    True
    >>> all([[]])
    False
    >>> all([[[]]])
    True

    When converted too a bool, [] becomes False (since it's
    empty), and [[]] becomes True (since it's not empty).
    Therefore all([[]]) is equivalent to all([False]), and
    all([[[]]]) is equivalent to all([True]). The first case
    all([]) is trivially True.

### NaN-related wats

    >>> x = float("nan")
    >>> len({x, x, float(x), float(x), float("nan"), float("nan")})
    3
    >>> len({x, float(x), float("nan")})
    2

    For the purpose of set membership, two objects x and y are
    considered equivalent if x is y or x == y. For two NaNs,
    this will be true whenever they're the same object. So {x,x}
    will have length 1. Every separately-defined NaN is
    a different object, so x is 0\*1e400 is False, and
    {x,0\*1e400} will have length 2. Finally, float called on
    a NaN will return the same object, so x is float(x) is True,
    and {x, float(x)} will have length 1.

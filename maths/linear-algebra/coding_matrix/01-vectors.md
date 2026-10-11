matrix week 1


### became clear to me in the discussion forum:
    "F^d is notation for set of __functions__ from {1, 2, ... d-1} to the F". 

    i.e.
    "F^d is notation for set of __vectors__   from {1, 2, ... d-1} to the F". 
    each vector __is__ a separate function
    Note: 'F' is the co-domain


### Examples of Vectors:
    1. Documents             _->_ {word:count...}
    2. Binary string         _->_ GF2^5 (5 bit binary strings)
    3. Collection Attributes _->_ senate voting records, properties cancer cells
    4. State of a Sytem      _->_ population distribution of the world, states of lights out game
    5. Probability Dist.     _->_ {1:1/6, 2:1/6, 3:1/6, 4:1/6, 5:1/6, 6:1/6}

    6. An image!
        {(coord1, coord2): intensity }

        {(0,0):456, (0,1):22, (0,2):78, ...
        (1,0):456, (1,1):22, (1,2):78, ...
        ...,       ...,      ...,      ...}

    7. Points in space:
        This was one of the original applications of
        vectors. Complex numbers were convenient for
        geometric operations.
        Now vectors will be __points__ in a plane, 3D,
        points in higher-dimension space.


### complex numbers (2D)
    ... are so convenient for applying _geometric
    transformations_, like rotation, scaling and
    translations in __2 dimensions__ . Now you'd like to
    find something similar for higher dimensions.


### vectors
    are a way to generalise complex number to higher
    dimensions. Hamilton had been thinking about how to
    generalise complex numbers beyond 2 dimensions and he
    thought he had done it -> with _Octonians_ but Gibbs
    vector analysis became more popular.

### a vector
    __is a function from some domain D to a field__
    interesting! what is the domain for ordinary 2D plane
    vectors? answer: domain: e1 and e2?

### 4 Vectors
    This is a _4-vector_ over Reals R:
        [2.122, 3, 4.6, -1]

    The set of all 4-vectors over R is:
        R^4

    This is reminiscent of the __set__ of all
    __functions__ from the set "D" to the Reals:
        R^D

# Functions!
    Think of vectors as __functions__! 
    The 4-vector [2.122, 3, 4.6, -1] is a 
    function that maps:
        _0_ -> 2.122
        _1_ -> 3
        _2_ -> 4.6
        _3_ -> -1

    I think this course uses 0-based indexing
    because of Python. the domain would 
    normally be {1,2,3,4}

# important notation:
    F^d is notation for the _set of functions_
    from {1,2,3,...d-1} to F

# forum
    At 3:20 it is said that "Fd is notation for set of functions
    from {1, 2, ... d-1} to F". I am struggling with
    understanding  this sentence. Is F the __domain__ of
    functions? 

    answer:
    The _domain_ of all the functions is the set {1, 2, 3,
    ..., d-1}.  F is the _codomain_ for all of them.  The
    function definition language is always "from Domain to
    Codomain"

### bag of words
    a document is represented by a __function__:
    f: WORDS -> R 

### sparse
    when representing a function with a python dictionary,
    {key:value} pairs with a value=0 are omitted.
    So if you can't find a key, a value of 0 is implied.

    A vector who has mainly value=0 is a sparse vector.
    "k-sparse": _no more_ than k entries are nonzero.
    "k-sparse": any entries > k are zero (clearer ??)

    space requirements:
    a "k-sparse" vector can be represented using space
    proportional to k.

### forum - "no more than"
    "Lets say there are 5 non zero entries. Lets say k=10.
    According to definition, I can claim that the vector is
    10-sparse"

    I would say you can.  If there are no more than five
    then there are also no more than 10.  A vector that is
    __5-sparse would have to also be 6-sparse__ (n-sparse
    for n>= 5) I would think.

### Artificial Sparseness
    Suppress some of the information to achieve Sparseness.
    e.g. lossy compression.

### field elements  
    are scalers (i.e. of the underlying field)

### line segment
    allow a scalar to range over a set of values
    and multiply a base vector by that scalar

### affine combination      
    scalars α and β sum to one,
    (but α and β can take __any__ values)
    the _infinite line_ through _u_ and _v_ consists 
    of all affine combinations of α and β.

    extra note:
    Wildberger showed how to represent a point
    between the line segment 'v' and 'u', as an
    affine combination:  `2/3*v + 1/3*u`

### convex combination
    scalars α and β sum to one,
    and are __non-negative__!!
    the _line segement_ through u and v consists of all
    convex combinations of alpha and beta.
                        
### Forum
    I noticed that the scalars in convex combinations are
    limited to _non-negative numbers less than 1_ while those in
    affine combinations are not. Even though in both cases, the
    scalars have to _sum to 1_.

    The convex combinations were used in lecture to describe
    _line segments_ while affine combinations were used to
    describe _lines_.

    So to me, this would make convex combinations a _special type_
    of affine combinations.


### audio needle
    in a haystack, do the dot product on different segments
    of audio thats a lot of dot products, but the FFT
    provides a more efficient way!

### algebraic properties dot product
    "homogeneity": `(alpha*u).v = alpha*(u.v)`
    i.e. you can take a scalar _in_ or _out_ 

### forum question:
    I'm curious about the choice of __data structure__
    (dictionary) in the specification for the Vec class.
    A dictionary is an _unordered_ data structure, but
    __order__ is very important in vector and matrix
    operations. The contents of vectors are almost always
    referred to by _position_, and they are rarely labelled.


    answer 1:
        In traditional linear algebra, the domain is
        always _{1, 2, 3, ..., n}_. This course extends
        the domain to _arbitrary domain_. With arbitrary
        domain, you can represent many things in vector
        form. For example, `Vec({(0, 0), (0, 1), ...,
        (m, n)}, {...})` could represent a picture with
        m * n pixels, where _(i, j):k_ is the intensity
        of pix (i,j)

    answer 2:
        The benefit over a list is that a list can't be
        _sparse_. We could simulate a _sparse_ list with
        a list of tuples, (domain, codomain), but then
        looking up an arbitrary tuple would be O(log n).
        With a dict, lookup is O(1)

### lights out:
    reduced problem 
        of "finding _sequence_ of button presses"
        which result in blank screen,

    to the problem of:
        "which _set_ of GF2 vectors result in
        blank the vector s"

    don't need sequence of button presses 
    because vectors are commutative, and
    applying the same vector twice is like
    cancelling a button press.


### remember:
    in GF2, adding one to a bit 
    is the same as _flipping_ the bit.


### example of linear system:
    current being drawn off 4 sensors.
        `domain   = {radio, sensor, memory, cpu}`
        `rate     = {radio:500mA, sensor:250mA, memory:100mA, cpu:300mA}`

    have a mini test:
        `duration = {radio:0.2s,  sensor:0.5s,  memory:1.0s,  cpu:1.0s}`

    total energy (coulombs) consumed:
    use dot product:
        `duration * rate`

    We can only measure the _total_ current drawn, not
    how much is drawn by each _individual_ component.
    How can we measure each component?

    run many tests
        `duration1 = {radio:0.2s,  sensor:0.5s,  memory:1.0s,  cpu:1.0s}`
        `duration1 = {radio:0.1s,  sensor:0.6s,  memory:0.8s,  cpu:1.1s}`
        `duration1 = {radio:0.3s,  sensor:0.1s,  memory:1.7s,  cpu:1.0s}`

    setup a linear system!
        `A * x = b`

    in this case:
        `duration_i * rate = b_i`

    where _rate_ is a vector of variables

    questions:

    1. can we find numbers for rate, such 
       that the equations hold? (solve it!)

    2. if we do solve it, does it guarantee that we have
       calculated the correct current draw for each
       component?
       (or maybe theres multiple solutions!)

    3. what if the data is inaccurate
 
 
### more linear system questions:
    * Is there an _algorithm_ for solving linear equations?
    * How do we know is there only one _solution_?
    * What if the _data_ is slightly inaccurate?


### random point about the domain:
    What's the purpose of domain in the Vec initializer?

    (I don't understand the use of domain elements ’B’,’C’ in
    "`Vec({’A’,’B’,’C’}, {’A’:1})`" unless the function is later
    expanded to encompass them.)

    answer:
        The function is __sparse__ so keys in the domain but
        not in the function are assumed to have the value 0.
        So your example is really 
        `Vec({’A’,’B’,’C’}, {’A’:1, 'B':0, 'C':0})`


### impoverished
    if you think a vector is a long linear thing, and a matrix
    is a square thing then think again. Its not wrong,
    but its impoverished.

    You can represent image pixels as a __vector__
        {(coord1, coord2): intensity }

        {(0,0):456, (0,1):22, (0,2):78, ...
        (1,0):456, (1,1):22, (1,2):78, ...
        ...,       ...,      ...,      ...} 

    The domain of this vector (function) is 
    pixel coordinates (its a cartesian product
    of 0 to 7, with 0 to 3)

    So elements of the domain can be _structured_
    objects.


### linear equation
    this is my definition of a linear equation:

    (a vector) * (a vector of _variables_) = (a scalar)

        a      ∙        x                  = β



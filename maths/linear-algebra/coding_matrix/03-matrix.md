### 2 ways for vector-[matrix] multiplication
---------------------------------------------

    1. [_MATRIX_]-vector multiplication
        * define in terms of _linear combinations_
        * define in terms of _dot products_


    2. _vector-_[MATRIX] multiplication
        * define in terms of _linear combinations_
        * define in terms of _dot products_

    3. Theres also __[MATRIX]-[MATRIX]__ multiplication!


    later insight:
        _matrix/vector/matrix_ multiplication
        are all special instances of
        __matrix-matrix __multiplication!!

    linear combinations
        - scale vectors first,
        - then _add_ vectors

    dot product
        - all vectors are implicitly combined into one,
        - then scaled


###  [_MATRIX_]-vector multiplication
-------------------------------------

    __linear combination__
      (add many little column vectors)

    (matrix * vector) gives you
    * a linear combination
    * of the _columns_ of the matrix,
    * where the coefficients come from the vector.

    If v is a "C-vector"

    `M * v  =  ∑  v[c] * (column c of M)`
            `c ∈ cols`

    (But to make this multiplication really work,
    'v' is actually a __column__ vector,
    even though when written as a Python
    list it looks like a 'row' vector.

    Actually he kind of says that, by
    saying that `If v is a "C-vector"...`)

    insight:
        a 'column vector' is really a single
        column MATRIX!!

    insight:
        first thought:
            I was thinking [n x m][m x p] = [n x p] for the
            above example of matrix-vector multiplication so
            thought that the vector must be a column vector.

            But actually [n x m][m x p] = [n x p] really
            applies to _matrix-matrix_ multiplication which
            is later in this module.

        Later clarification:
            matrix-_vector_ multiplication is actually
            matrix-_matrix_ multiplication!

        another thought:
            in the early matrix-vector multiplication
            examples, I thought the vector had to be
            a column vector but actually its more generic
            than that. Just the _column labels_ of the
            matrix have to match the _domain labels_ of the
            vector. Just think about labels, rather than
            columns or dimensions.


### [_matrix_]-VECTOR multiplication
------------------------------------

    - Visualisation 1:
        - 2019: _linear combination_   of the `COLUMNS` of the matrix!
            - 3 little vectors, then add.
        - 2020: Notice the two "domains" match: "@ # £"

       _@   #   £_                       col            col            col
    _a_[1   2   3 ]  * [_@_:7,       =    |1 | * _7_ +  |2 | * _0_  +  |3 | * _4_
    _b_[10  20  30]     _#_:0,            |10|          |20|           |30|
                        _£_:4]
                                    =    |7 |        +  |0 |        +  |12 |          <--------- add 3 vectors
                                         |70|           |0 |           |120|

                                    = _a_|19 |
                                      _b_|190|


    - Visualisation 2:
        - _dot product_ (one output vector, add components)

       _@   #   £_
    _a_[1   2   3 ] * [_@_: 7]    =  [ |1, 2, 3 | ∙ _|7,0,4|_
    _b_[10  20  30]   [_#_: 0]         |10,20,30| ∙ _|7,0,4|_ ]
                      [_£_: 4]
                                =  [ (1  * _7_)  +  (2  * _0_)  +  (3  * _4_)
                                     (10 * _7_)  +  (20 * _0_)  +  (30 * _4_) ]

                                =  [ 7  + 0 + 12
                                    70  + 0 + 120 ]

                                =  _a_[19
                                   _b_ 190]



    - Visualisation 3: ordinary definition
        - `v[r] = ∑   M[r, c] * u[c]`
        -   (just explicit component-by-component
        -   definition of dot product really)
        -   (but easier to exploit sparsity of matrix)

       _@   #   £_
    _a_[1   2   3 ] * [_@_: 7]    =   [ M[0,0]\*_u[0]_ +  M[0,1]\*_u[1]_ +  M[0,2]\*_u[2]_]
    _b_[10  20  30]   [_#_: 0]        [ M[1,0]\*_u[0]_ +  M[1,1]\*_u[1]_ +  M[2,2]\*_u[2]_]
                      [_£_: 4]
                                  =   [ (1     * _7_)  +  (2     * _0_)  +  (3     * _4_) ]
                                      [ (10    * _7_)  +  (20    * _0_)  +  (30    * _4_) ]

                                  =   [ 7  + 0 + 12  ]
                                      [ 70 + 0 + 120 ]

                              =_a_[19 ]
                               _b_[190]


### [_matrix_]-vector multiplication
------------------------------------

    `ordinary definition` formula
     (easier to exploit the _sparsity_ of the matrix)

    M   = (R x C) matrix
        = (2 x 3) matrix

    ⇒ r = 2
    ⇒ c = 3

    `v[r] = ∑   M[r, c] * u[c]` <------ look "u" is referenced simply by array [`element`]
       ^   c∈C    ^  |      |           (doesnt matter if its a 'row' or 'col' vector)
       |          |  |      |
       |          |  |      |
       |          |  |      |
       |          |  |      |
        -fix row--   |      |
                      ----> ------->  multiply & add each column in turn


###  [_matrix_]-vector multiplication
-------------------------------------

    (another example)
    _dot product_

    [1   2]  * [ 3]   =   [ [1, 2] ∙_[3,-1]_]
    [3   4]    [-1]       [ [3, 4] ∙_[3,-1]_]
    [10  0]               [ [10,0] ∙_[3,-1]_]

                      =   [ (1  * _3_)  +  (2 * _-1_)]
                          [ (3  * _3_)  +  (4 * _-1_)]
                          [ (10 * _3_)  +  (0 * _-1_)]

                      =   [ 3  - 2]
                          [ 9  - 4]
                          [ 30 + 0]

                      =   [ 1 ]
                          [ 5 ]
                          [ 30]


### [_matrix_]-vector multiplication
------------------------------------

    Linear Combination - Lights out example:

       _A_ * x = _b_
        |    |     |
        |    |     ----> final _state_ (configuration)
        |    |           of lights out gameboard
        |    |
        |    |
        |    -----> coefficients (_vector_)
        |          (how many button presses
        |           of each button)
        |
        ----> _matrix_ of button vectors
              (each column vector represents
              different button press)





### [_matrix_]-vector multiplication
------------------------------------

    _dot product_
    When would you use this version?

    1. To _downsample_ pixels in an image:

    * each low resolution pixel represents a grid of
      pixels in the high-res image.

    * The intensity value of the low-res pixel, is the
      _average_ of the intensity values of the
      (corresponding) high-res pixel.

    * Averaging can be calculated as a _dot-product_. We
      want to compute a _dot-product_ for each low-res
      pixel.

    * Thats a lot of dot-products, but this can be
      expressed as a _single_ matrix-vector
      multiplication.


    2. _Blurring_

    * replace each face pixel with an average of pixel
      intensities in its neighborhood.


### [_matrix_]-vector multiplication
------------------------------------
    _ordinary definition_

    - Why do we need it?
    - I mean we already have:
        * the linear combination way and
        * the dot-product way

    - Well the ordinary definition makes it easier to exploit the
      _sparsity_ of the matrix.

    * Obvious method:
        If `M` is an (R × C) matrix
        and `u` is a C-vector then
        `M * u` is the R-vector such that,
        for each r ∈ R:

            v[r] = ∑ M[r,c] u[c]
                c∈C

    * But to exploit sparsity:
        a. initialise v to zero vector
        b. for each pair (r, c) in sparse representation
        c. v[r] = v[r] + M[r, c] u[c]



### _vector_-[matrix] multiplication
------------------------------------

    _linear combination_
      (add 3 row vectors)

    w * M = ∑ w[r] * (row r of M)
           r∈Rows


_1  2  3_         _a b c_
[1, 8, 0]  *  _1_[ 1 1 1]
              _2_[ 2 2 2]            _a b c_           _a b c_           _a b c_
              _3_[ 3 3 3]    = _1_ * [1,1,1]  +  _8_ * [2,2,2]  +  _0_ * [3,3,3]


                             = [(_1_ * 1),  (_1_ * 1), (_1_ * 1)] +
                               [(_8_ * 2),  (_8_ * 2), (_8_ * 2)] +
                               [(_0_ * 3),  (_0_ * 3), (_0_ * 3)]

                               _a  b  c_      _a  b  c_     _a  b  c_
  add 3 row vecs ------>     = [0, 2, 0]  +  [-8, 0, 0]  +  [0, 0, 0]

                                  _a        b      c_
                             = [0+(-8)+0, 2+0+0, 0+0+0]

                                _a  b  c_
                             = [-8, 2, 0]



### _vector_-[matrix] multiplication
------------------------------------

    when would you use it?

    `M = `
                _metal   concrete  plastic   water   electricity_
    _gnome_      0       1           0.1     0.8     0.4
    _hoop_       0       1           0.5     0.7     0.2
    _slinky_     2       0           0.4     0.8     0.4
    _putter_     0       1           0.5     0.3     0.1
    _shooter_    4       1.1         0.6     0.9     0.5

    Now already know:
        `total_resources` and `M`
    We want to findout:
        how many of each product are made


    (_known_)           = _unknown_  * (_known_)
    total resources     =   row vector * matrix
        b               =      u   *   A
        b               =   `[α_gnome, α_hoop, α_slinky, α_putter, α_shooter]   *   A`
                                        |
                                        |
                                        |
                                        ------->  we are looking for
                                                  this (row) vector

# MATRIX-MATRIX multiplication
------------------------------

    (_VECTOR_-matrix) approach

    row r of `AB` = (row r of `A`) * matrix `B`


    `AB` = |1 0 0|   | 111 |
           |2 1 0|   | 222 |
           |0 0 1|   | 333 |

         = |1 0 0|   |     |
           |2 1 0|   |  B  |
           |0 0 1|   |     |


           |_[1 0 0]_ * B|
         = |_[2 1 0]_ * B|
           |_[0 0 1]_ * B|



    now we have 3 vector-matrix products
    and use the "_linear combinations_" of rows approach

        _[1 0 0]_ * B    =   _|1 0 0|_ |111,
                               _       _  222,
                               _       _  333|   =  [ 111 ]

        _[2 1 0]_ * B    =   _|2 1 0|_ |111,
                               _       _  222,
                               _       _  333|   =  [ 2 * ( 111 ) + 222 ]

        _[0 0 1]_ * B    =   _|0 0 1|_ |111,
             |        |                     222,
             |        |                     333|   =  [ 333 ]
             V        |
             vector   V
                      matrix

    Therefore:

             |1 0 0| |     |         |_[1 0 0]_  * B |         |    111            |
    `AB`  =  |2 1 0| |  B  |      =  |_[2 1 0]_  * B |      =  | 2 * ( 111 ) + 222 |
             |0 0 1| |     |         |_[0 0 1]_  * B |         |    333            |


    Now really it just left Matrix B, rows b1 and b3
    _unchanged_, and changed the 2nd row to be a simple
    combination of twice row 1 + row 2 of matrix B.

    So we call the matrix A:
    an elementary _row-addtion_ matrix.

    [1 0 0]
    [2 1 0]   <---- elementary row addition matrix
    [0 0 1]



# MATRIX-MATRIX multiplication
------------------------------

    (_MATRIX_-vector) approach

    column s of `AB`   =  `A` * (column s of `B`)


    `AB` = |  A  |  *  | 1 2 3 |
           |     |     | 1 2 3 |


           _A_ *  | 1 |  =    _| 1  2|_ * | 1 |  =    | 3 |
                    | 1 |       _|-1  1|_   | 1 |       | 0 |

           _A_ *  | 2 |  =    _| 1  2|_ * | 2 |  =    | 6 |
                    | 2 |       _|-1  1|_   | 2 |       | 0 |

           _A_ *  | 3 |  =    _| 1  2|_ * | 3 |  =    | 9 |
                    | 3 |       _|-1  1|_   | 3 |       | 0 |



     `AB` =_|  A  |_ *  | 1 2 3 |     =   | 3  6  9 |
           _|     |_    | 1 2 3 |         | 0  0  0 |



# MATRIX-MATRIX multiplication
------------------------------

    (_dot product_) approach

    ah you know this one,
    its the normal way from the BSc

    1111   a,b       [ (1111_∙_aaaa),  (1111_∙_bbbb) ]       [_x_, _x_]
    2222 * a,b   =   [ (2222_∙_aaaa),  (2222_∙_bbbb) ]   =   [_x_, _x_]
    3333   a,b       [ (3333_∙_aaaa),  (3333_∙_bbbb) ]       [_x_, _x_]
           a,b


### matrix-matrix transpose

    `(AB)^T = B^T A^T`
    remember strang, and the order of putting on and talking
    off your shoes and socks

### treat MATRIX as a VECTOR
    You can treat an entire matrix as
    a multidimensional  _vector_.

    An _R x S_ matrix
    * is a _function_
    * from (R x S) -> _F_


### Matrix basic definition
    For 2 finite sets R and C,
    an (R x C) matrix over _F_
    is a function from: (R x C) --> _F_

    i.e. the cartesian product from R and C

    e.g.
    if R = {a, b}
    if C = {@, #, ?}

    matrix
         _@   #   ?_
          ---------
   _a_|   1   2   3
   _b_|  10  20  30

    The matrix is a _mapping_ of
    (pairs of, tuples) to F:
        (a, @) _->_ 1
        (b, @) _->_ 10
        (a, #) _->_ 2
        (b, #) _->_ 20
        (a, ?) _->_ 3
        (b, ?) _->_ 30


### How can we view a matrix row?

          @   #   ?
       ------------
  _a_|_1   2   3_
    b  | 10  20  30

    the row '_a_'
    is the name of a _vector_ :

        that maps the column labels
        to Field elements.
        Vec({@, #, ?}, {@:_1_, #:_2_, ?:_3_})

    i.e.
        the Domain of row vector '_a_' is {_@, #, ?_}


### How can we view a matrix column?

         _@_ #   ?
        ------------
     a | _1_ 2   3
     b |_10_20  30


    the column '_@_'
    is the name of a _vector_ :

        Vec({a, b}, {a: _1_, b: _10_})

    i.e.
        the Domain of column vector '@' is {_a, b_}


### How can we view a matrix?

    one way,
    a dictionary of _row vectors_:
        {
            'a' : Vec({@, #, ?}, {_@_:1,  _#_:2,  _?_:3}),
            'b' : Vec({@, #, ?}, {_@_:10, _#_:20, _?_:30})
        }

    another way,
    a dictionary of _column vectors_:
        {
            '@' : Vec({a, b}, {_a_:1, _b_:10})
            '#' : Vec({a, b}, {_a_:2, _b_:20})
            '?' : Vec({a, b}, {_a_:3, _b_:30})
        }


### note: two vector spaces (think of Lanczos!)
    There's 2 vector spaces
    associated with a matrix 'M'

    _column space_ of M = Span {columns of M}
    _row space_    of M = Span {rows of M}


      the _column space_ of:
            [1    2    3 ]
            [10   20   30]

        is the _Span_ _{_[1,10], [2, 20], [3, 30]_}_ which in this case is
               _Span_ _{_[1,10]_}_


      the _row space_ of:
            [1    2    3 ]
            [10   20   30]

        is _Span_ _{_[1,2,3], [10, 20, 30]_}_ which just happens to be
           _Span_ _{_[1,2,3]_}_




### Note: numerical stability
    solver only has floating point precision.
    So to check your solution: _square the residual_.
    So to check your solution: _dot product your residual_.
    What does that mean?


    solve:
    `Au = b`

    (in an ideal machine this would be 0!)
    `residual = b - Au`

    Dot the residual with itself,
    should be tiny number
    `(residual) * (residual)`
    0.24564565656   <-------------- not great!



### Null Space
    The null space of a _Matrix 'M'_ is the set of vectors
    which when multiplied by _'M'_ = the _zero vector_.

    `M * {null space vectors} = zero_vector`

    The null space is itself a _vector space_.

    (because the null space is the solution set to
    a homogeneous linear system which we saw
    before was a vector space)


### Random Question
    (For a vector over GF(2), taking the dot-product of the
    vector with itself is not a good way to see whether the
    vector is zero—why?)


### Solution SPACE of a matrix-vector equation

    * In vector space language:

        If `u1` is the solution
        to the linear system:
        `a1 ∙ x = β1
         a2 ∙ x = β2
         ...
         am ∙ x = βm`

        then the solution set is
        _u1 + V_
               |
               |
               -------> is 'V' trivial?

        where 'V' is the solution
        to the corresponding homogeneous linear system:
        `a1 ∙ x = 0
         a2 ∙ x = 0
         ...
         am ∙ x = 0`

        Thats just like my lboro course and the differential
        equations course! (Tony Croft)

    * Or the same thing in Matrix language:

        If `u1` is a solution to
            `A * x = b`
        then the solution set is
        _u1 + V_

        where 'V' is the
        null space of A
        `V = Null A`


    Now listen, this is good:

        * If `V` is a trivial vector space,
        then `u1` is the _only_ solution.

        * If `V` is not trivial,
        then `u1` is _not_ the only solution.

        Corollary:
            `A * x = b`
            has at most _one_ solution
            iff
            `Null A = {trivial vector space}`

### matrix functions

### which FUNCTIONS can be expressed as a matrix-vector product?

    answer: linear functions


### misc
    Method to _derive a matrix_ from some given function.
    (This is useful for quantum mechanics?)

    A linear function maps the _zero vector_ to the _zero vector_.

    * null space of a matrix 'M'
    * kernel of a linear function 'f'


    A linear function is one-to-one
    iff its kernel is a trival vector space.

    If `Ker f(x) = Ax` is trivial, (i.e. Null A is trivial)
    then vector b is the image under f of
    at _most one_ vector.
    i.e.
        `Ax = b`
        has at most one _solution_.

### vector as a matrix
    a vector can be represented as a matrix
    in 2 different ways.

    By _default_ a vector as a matrix is?
    * a column vector.

    To get a row vector from a column vector?
    * Take the transpose.


### dot product
---------------
     one way to multiply VECTORS,
    _interpreted as_ matrices
    (see outer product for another way)

    If we interpret two (column) vectors as matrices,
    then the matrix matrix product `(u^T)v` is:

    (row vector)   * (column vector)
    (1 row matrix) * (1 column matrix)

    `(u^T)v`

    [1,2,3][3,
            2,
            1]
               = [10]    <---- one element "matrix"


    At a stretch, you could interpret this 1 element matrix
    as a _scalar_. "A little bit of a mathematical pun"

    So we can interpret this matrix product as the _dot
    product_.

    So the dot-product of 2 vectors can be expressed as
    a _matrix-matrix_ product.

    Note:
        the column domain of the row vector,
        must match
        the row domain of the column vector.

    We might be tempted to call this an _inner-product_ but
    we won't because we'll use inner-product for something
    else.


### OUTER PRODUCT
-----------------
    "a second way to multiply VECTORS,
    _interpreted as_ matrices"

    `u * (v^T)`
    (column vector)   * (row vector)
    '1 column' matrix * '1 row' matrix


    |u1| * |a1 a2 a3 a4|       [ _u1_.a1,   _u1_.a2,   _u1_.a3,   _u1_.a4 ]
    |u2|                   =   [ _u2_.a1,   _u2_.a2,   _u2_.a3,   _u2_.a4 ]
    |u3|                       [ _u3_.a1,   _u3_.a2,   _u3_.a3,   _u3_.a4 ]


### fill out these notes

    outer product used in filters, kernels
    you can take a matrix and make a function out of it.
    matrix-multiplication function composition
    matrix-multiplication lemma f∘g = h
    matrix-multiplication whenever you multiply 2 matrices, thats the same as function composition
    matrix-multiplication is associative... because function composition is associative!

    how do you know if 'f' and 'g' are functional _inverses_?
        f∘g  = identity
        g∘f  = identity
        (this only applies to functions derived this way from matrices)

    so the same thing for matrices
    also: if A and B are inverses of each other,
    we say they are _invertible_ matrices.
    A matrix has _at most_ one inverse.

    matrix not invertible:  singular matrix
    matrix is invertible:   _nonsingular_ matrix


### _1_. Invertible matrices - why do we care?
    related to existance and uniqueness of solutions to
    matrix-vector equations.

    example:
        function: f(x) = Ax
        If A is invertible,
        the equation `Ax = b` has exactly _one_ solution.
        (comes from _one-to-one_ and _onto_)


    then went to 2 old problems:
    have we only one solution to:

        `M = `
                    _metal   concrete  plastic   water   electricity_
        _gnome_      0       1           0.1     0.8     0.4
        _hoop_       0       1           0.5     0.7     0.2
        _slinky_     2       0           0.4     0.8     0.4
        _putter_     0       1           0.5     0.3     0.1
        _shooter_    4       1.1         0.6     0.9     0.5

        Well depends if matrix `M` above is invertible or not.

    and have we only one solution to:
    run many tests??
        `duration1 = {radio:0.2s,  sensor:0.5s,  memory:1.0s,  cpu:1.0s}`
        `duration1 = {radio:0.1s,  sensor:0.6s,  memory:0.8s,  cpu:1.1s}`
        `duration1 = {radio:0.3s,  sensor:0.1s,  memory:1.7s,  cpu:1.0s}`

        Well depends if matrix above is invertible or not.

        but another problem with this duration one:
            what if the measurements aren't 100% accurate.
            Hard to measure electricity rates...
            Answer later in the course.


### _2_. Invertible matrices - why do we care?

    Makes for easier computational algorithms if we know
    the matrix is invertible.


### interesting conjecture:
    If AB is the identity matrix,
    can we automatically conclude that A and B are
    inverses...?

    FALSE!
    this conjecture is false. He gave a counter-example

    corollory:
        A and B are inverses of each other
        _iff_
        AB = identity matrix
        BA = identity matrix

### linear combination
    - What is a linear combination of v1, v2, ... , vn ?

    `α1*(v1) + α2*(v2) ... + αn*(vn)`


### linear combination (scalars)
    - What is the name for the _scalars_ multiplying the vectors
      in a linear combination?

      Answer:  "coefficients"


### affine combination
    - When is a linear combination `α1 v1 + · · · + αn vn`
      also an affine combination?

        When `α1 + α2 + ... + αn = 1`


### What conditions ensure _V_ is a VECTOR SPACE?

    1. V contains the _zero_ vector,
       (really that it has an origin? no! - an affine space
       has an origin, a point [0,0,...0] aswell but in the
       affine space this zero vector has no significance)

    2. For every vector `v`,
       if 'V' contains `v`
       then it
       * contains `αv` for every scalar `α`,
       * and is _closed_ under scalar-vector multiplication

    3. For every pair `u` and `v` of vectors,
        if 'V' contains _u_ and _v_
       then it contains _(u + v)_


### What is an AFFINE space?
    * The set `{ū + V}` where
    * `V` is a vector space.


### matrix-vector multiplication
    - Give the names of _3 deﬁnitions_ of matrix-vector
      multiplication and vector-matrix multiplication?

        1. the linear-combinations deﬁnition,
        2. the dot-product deﬁnition
        3. the “ordinary” deﬁnition.

[MATRIX] * (vector ->)
----------------------

    - resultant (M ∗ v) is
        - a _linear combination_ of the _columns_ of `M`
        - where each coefficient is an entry of `v`.

    [1 2 3]  * [_v1_]        1            2            3                  [_x_]
    [1 2 3]    [_v2_]   =    1 _v1_  +    2 _v2_  +    3 _v3_          =  [_x_]
    [1 2 3]    [_v3_]        1            2            3                  [_x_]

    * row `r` of resultant (M ∗ v)
        * is the _dot-product_ of (row `r` of `M`) with `v`.

    [1 1 1]  * [_v1_]       (1 • _v1_)  +    (1 • _v2_)   +    (1 • _v3_)       [_x_]
    [2 2 2]    [_v2_]   =   (2 • _v1_)  +    (2 • _v2_)   +    (2 • _v3_)    =  [_x_]
    [3 3 3]    [_v3_]       (3 • _v1_)  +    (3 • _v2_)   +    (3 • _v3_)       [_x_]

(vector ->) * [MATRIX]
----------------------

    * resultant (v ∗ M) is
        * a _linear combination_ of the _rows_ of M
        * where each coefficient is an entry from v.

    _v1 v2 v3_ *  1 1 1    = _v1_[1 1 1] + _v2_[2 2 2] + _v3_[3 3 3]
                  2 2 2    =  [_x_, _x_, _x_]
                  3 3 3

    * column c of resultant (v ∗ M)
    * is the _dot-product_ of v with (column c of M).

    _v1 v2 v3_ *  1 1 1     =  [`(v1 ∙ 1) + (v2 ∙ 2) + (v3 ∙ 3)`,
                  2 2 2             `(v1 ∙ 1) + (v2 ∙ 2) + (v3 ∙ 3)`,
                  3 3 3                 `(v1 ∙ 1) + (v2 ∙ 2) + (v3 ∙ 3)`]
                            =  [_x_, _x_, _x_]


### 3 deﬁnitions of matrix-matrix multiplication?

    * The matrix-vector deﬁnition
    * the vector-matrix deﬁnition
    * the dot-product deﬁnition

    - What is the vector-matrix deﬁnition of matrix-matrix
      multiplication?

        * AB
        * For each row-label r of A,
        * row r of AB = (row r of A) ∗ B

    - What is the vector-matrix deﬁnition of matrix-matrix
      multiplication?

        * Row r of A times B
        * equals
        * (row r of A) times B.

### What is a linear function?

    * A function `f : U → V`
    * whose {domain} and {codomain}
    * are Vector Spaces, such that:

        - L1: For any vector `u` in the domain of `f`
            - and any scalar `α` in `f`,
            - `f (αū) = α f(ū)`

        - L2: For any two vectors `u` and `v`
            - in the domain of `f` ,
            - `f (ū + ṽ) = f (ū) + f (ṽ)`


### Outer product of `u` and `v` is ... ?

    [   ]
    [ u ] * [   v^T  ]
    [   ]

    * The s, t element of `u * v^T`
    * is `u[s] * v[t]`


### Matrix-vector multiplication
    - What are _matrix-vector_ deﬁnitions of matrix-matrix
      multiplication?

        * For each column-label s of B,
        * column s of AB = A ∗ (column s of B)

    - (mistake here?) What are _matrix-vector_ deﬁnitions of
      matrix-matrix multiplication?

        * Column c of A times B
        * equals
        * A times column c of B.

    - What is the _dot-product_ deﬁnition of matrix-matrix
      multiplication?

        * Entry rc of AB is the
        * dot-product of row r of A
        * with column c of B.


### Transpose of AB is ... ?

    * `AB^T = (B^T)(A^T)`


### NULL space?

    * The Null space of a Matrix A is `{x : A ∗ x = 0}`

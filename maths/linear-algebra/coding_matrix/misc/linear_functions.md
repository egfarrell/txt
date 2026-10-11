
### Question:
    Ive learnt that if a function _can be_ expressed as
    matrix-vector product, then it is a _linear function_.

    I want to know whether all linear functions can be
    expressed as matrix-vector product? Some theoretical
    arguments will be helpful. 


### Answer:
    Any linear function between finite dimensional vector
    spaces can be represented as a matrix, given a choice of
    basis in each of the spaces.

    That's kind of abstract, so as a concrete example,
    suppose you have a linear function _M_ from _F^3_ to
    _F^4_ for some field F and you're using the standard
    bases.

    Consider what the function M does to a particular vector
    (x1, x2, x3):

    `M (x1, x2, x3) = M [x1*(1,0,0) + 
                         x2*(0,1,0) + 
                         x3*(0,0,1)] 

                    = x1 * M(1,0,0) + 
                      x2 * M(0,1,0) + 
                      x3 * M(0,0,1)`  
    (by linearity of M).

    Now, since M maps to F^4, there are `m_i_j` such that:

    `
    M(1,0,0) = (m11, m21, m31, m41)
    M(0,1,0) = (m12, m22, m32, m42)
    M(0,0,1) = (m13, m23, m33, m43)
    `

    Substituting...

    `
    M (x1, x2, x3) = x1 * (m11, m21, m31, m41) + 
                     x2 * (m12, m22, m32, m42) + 
                     x3 * (m13, m23, m33, m43)

                   = ((m11 * x1) + (m12 * x2) + (m13 * x3),
                      (m21 * x1) + (m22 * x2) + (m23 * x3),
                      (m31 * x1) + (m32 * x2) + (m33 * x3),
                      (m41 * x1) + (m42 * x2) + (m43 * x3))
    `

    which is just the definition of matrix-vector multiplication
    for a 4 x 3 matrix with entries `m_i_j`.

    You can do the same type of proof more generally for any
    finite dimensional vector spaces, but you need to build up
    some mathematical machinery to get there. 

    For example, you need:
    1. an abstract definition of a vector space, 
    2. a definition of what it means to be finite-dimensional, 
    3. to show every finite-dimensional vector space has at least one basis
    4. and every basis for it is of the same length, etc.

    A good book to go through for an abstract proof-based
    approach is "_Linear Algebra Done Right_" by Axler.

    Note that there are _infinite dimensional_ vector spaces, too,
    whose linear functions are too big to be represented by
    matrices, like the space of all polynomials, but again you
    need an abstract definition of a vector space to see that
    polynomials can be seen as vectors.


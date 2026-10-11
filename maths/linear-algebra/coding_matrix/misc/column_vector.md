
### Question:
    If v is not a C-vector then:
    `M * v = ERROR!`

    * Why don't we first transpose the _Matrix 'M'_ and then
      perform the multiplication? 
    * What's the difference between looking at the matrix as
      a list of column vectors or a list of row vectors?

### answer: (Instructor)

    I think you're saying that 
        `M * v `
    is mathematically equivalent to 
        `v * M.transpose().  `

    That's true in our implementation. There is a difference
    in traditional mathematical notation.  Recall from the
    lecture "The Matrix: Matrix-matrix multiplication",
    starting around 6:38, that the traditional
    interpretation of v is usually as a column vector.

    Using this convention, 
    `Mv` is a column vector, 
    but `(v^T)(M^T)` is a row vector.  

    Note also the need to transpose `v` in the latter
    expression. These are notational differences, not
    fundamental mathematical differences.  It is important,
    though, that we can view a matrix as consisting of
    _either_ rows or columns, and that we have _two ways_ of
    multiplying a vector and a matrix.  

    Part of the power of matrices is in this _duality_.
    It's a great question; I don't have a ready example for
    how that duality is useful but I hope you will watch for
    examples as the course proceeds---and I will think about
    it.

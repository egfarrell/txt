### Week 0 Argh! It's an imaginary number!

    - I see some people panicking about complex numbers and
      imaginary numbers.

    - Don't panic! A few reasons I discuss complex numbers now:

        - just as another example of a field because operations
          such as scaling and rotation that are "easy" with
          complex numbers come up later when we do vectors.

        - because complex numbers are needed for advanced
          material like Fourier transforms and eigenvectors
          - (we dont cover them in this course but I plan to
            cover in a follow-on course).

    - If complex numbers make sense to you, great! The ideas will
      lead into vectors.

    - If complex numbers don't make sense don't worry! We won't
      work with them later in this course.

### The Function
    * What does the notation `f:A → B` mean?
    * What are the criteria for `f` to be an invertible function?
    * What is associativity of functional composition?
    * What criteria makes a function a probability function?
    * What is the Fundamental Principle of Probability Theory?
    * If the input to an invertible function is chosen randomly
      according to the uniform distribution, whats the
      distribution of the output?

### The Field
    * Name three fields.
    * Whats the conjugate of a complex number?
    * What does it have to do with the absolute value of
      a complex number?
    * How does complex-number addition work?
    * How does complex-number multiplication work?
    * How can translation be defined in terms of complex numbers?
    * How can scaling be defined in terms of complex numbers?
    * How can rotation by 180 degrees be defined in terms of
      complex numbers?
    * How can rotation by 90 degrees be defined in terms of
      complex numbers?
    * How does addition of GF(2) values work?
    * How does multiplication of GF(2) values work?

### The Vector
    * What is vector addition?
    * What is the geometric interpretation of vector addition?
    * What is scalar-vector multiplication?
    * What is the distributive property that involves
      scalar-vector multiplication but not vector addition?
    * What is the distributive property that involves both
      scalar-vector multiplication and vector addition?
    * How is scalar-vector multiplication used to represent the
      line through the origin and a given point?
    * How are scalar-vector multiplication and vector addition
      used to represent the line through a pair of given points?
    * What is dot-product?
    * What is the homogeneity property that relates dot-product
      to scalar-vector multiplication?
    * What is the distributive property property that relates
      dot-product to vector addition?
    * What is a linear equation (expressed using dot-product)?
    * What is a linear system?
    * What is an upper-triangular linear system?
    * How can one solve an upper-triangular linear system?

### The Vector Space
    * What is a linear combination?
    * What are coefficients?
    * What is the span of vectors?
    * What are standard generators?
    * What are examples of flats?
    * What is a homogeneous linear equation?
    * What is a homogeneous linear system?
    * What are the two kinds of representations of flats
      containing the origin?
    * What is a vector space?
    * What is a subspace?
    * What is an affine combination?
    * What is the affine hull of vectors?
    * What is an affine space?
    * What are the two representations of flats not containing
      the ORIGIN?
    * Is the solution set of a linear system ALWAYS an affine
      space?

### The Matrix
    * What is a linear function?
    * What is the transpose of a matrix?
    * What is the sparsity of a matrix and why is it important in
      computation?
    * What is the linear-combination definition of matrix-vector
      multiplication?
    * What is the linear-combinations definition of vector-matrix
      multiplication?
    * What is the dot-product definition of matrix-vector
      multiplication?
    * What is the dot-product definition of vector-matrix
      multiplication?
    * What is an identity matrix?
    * What is an upper-triangular matrix?
    * What is a diagonal matrix?
    * What is a linear function?
    * What are two ways that a linear function f:F^n → F^m can be
      represented by a matrix?
    * What are the kernel and image of a linear function?
    * What are the null space, column space, and row space of
      a matrix?
    * What is the matrix-vector definition of matrix-matrix
      multiplication?
    * What is the vector-matrix definition of matrix-matrix
      multiplication?
    * What is the dot-product definition of matrix-matrix
      multiplication?
    * What is associativity of matrix-matrix multiplication?
    * How can matrix-vector and vector-matrix multiplication be
      represented using matrix0matrix multiplication?
    * What is an outer product?
    * How can dot-product be represented using matrix-matrix
      multiplication?
    * What is the inverse of a matrix?
    * What is one criterion for whether two matrices are inverses
      of each other?

### The Basis
    * What is coordinate representation?
    * How can you express conversion between a vector and its
      coordinate representation using matrices?
    * What is linear dependence?
    * How would you prove a set of vectors are linearly
      independent?
    * What is the Grow algorithm?
    * What is the Shrink algorithm?
    * How do the concepts of linear dependence and spanning apply
      to subsets of edges of graphs?
    * Why is the output of the growing algorithm a set of
      linearly independent vectors?
    * Why is the output of the shrinking algorithm a set of
      linearly independent vectors?
    * What is a basis?
    * What is unique representation?
    * What is change of basis?
    * What is the Exchange Lemma?

### The Dimension
    * Can a vector space have bases of different sizes?
    * What is the rank of a set of vectors?
    * What is the rank of a matrix?
    * What is the difference between dimension and rank?
    * How do dimension and rank apply to graphs?
    * What is the Rank Theorem?
    * What is the Dimension Principle?
    * When can two vector spaces form a direct sum?
    * How does the dimension of a direct sum of two vector spaces
      relate to their dimension?
    * How can dimension be used in a criterion for a linear
      function to be invertible?
    * What is the Kernel-Image Theorem?
    * What is the Rank-Nullity Theorem?
    * How can dimension be used to give a criterion for matrix
      invertibility?
    * What is the annihilator of a vector space?
    * What is the Annihilator Theorem?

### Gaussian Elimination
    * What is echelon form?
    * What can we learn about the rank of a matrix in echelon
      form?
    * How can a matrix be converted into echelon form by
      multiplication by an invertible matrix?
    * How can Gaussian elimination be used to find a basis for
      the null space of a matrix?
    * How can Gaussian elimination be used to solve
      a matrix-vector equation when the matrix is invertible?

### The Inner Product
    * What is an inner product for vectors over R?
    * How is norm defined in terms of dot-product?
    * What does it mean for two vectors to be orthogonal?
    * What is the Pythagorean Theorem for vectors?
    * What is parallel-perpendicular decomposition of a vector?
    * How does one find the projection of a vector b orthogonal
      to another vector v?
    * How can linear algebra help in optimizing a nonlinear
      function?

### Orthogonalization
    * What does it mean to normalize a vector?
    * What does it mean for several vectors to be mutually
      orthogonal?
    * What are orthonormal vectors? What is an orthonormal basis?
    * How can one find the vector in Span {v1,…,vn} closest to b?
    * How does one find the projection of a vector b orthogonal
      to several mutually orthogonal vectors v1,…,vn?
    * How does one find vectors that (i) span the same space as
      v1,…,vn and that (ii) are mutually orthogonal?
    * What is a column-orthogonal matrix? An orthogonal matrix?
    * What is the inverse of an orthogonal matrix?
    * How can you use matrix-vector multiplication to find the
      coordinate representation of a vector in terms of an
      orthonormal basis?
    * What is the QR factorization of a matrix?
    * How can the QR factorization be used to solve a matrix
      equation?
    * How can the QR factorization be computed?
    * How can the QR factorization be used to solve
      a least-squares problem?
    * How can solving a least-squares problem help in fitting
      data to a line or a quadratic?
    * How can solving a least-squares problem help to get more
      accurate output?
    * What is the orthogonal complement?
    * What is the connection between orthogonal complement and
      direct sum?

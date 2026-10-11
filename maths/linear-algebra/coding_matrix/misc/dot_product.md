
# (INNER product)  v  (DOT product)

### question
    - In one of the lectures this week, the professor mentioned
      that you could use a different kind of inner product (I
      forget the exact context) -- so I am wondering if someone
      could give me an example of another kind of inner product.

    - I have always assumed that inner product and dot product
      are synonymous.


### answer 1
    http://en.wikipedia.org/wiki/Inner_product_space#Definition

    - The primary variation mentioned in this article is to
      define it with linearity in the second argument instead of
      the first.

    - (Reading this gives me some idea of why the lecture didn't
      go deeper into the question.)


### answer 2
    - I get the impression that what he was talking about relates
      to the __Kernel Trick__.

    - However, my attempts to follow descriptions of the subject
      led ever deeper down the rabbit hole into new layers of
      linear algebra that we haven't covered.

    - I guess that at least gives me some idea of what things
      I ought to be trying to learn.


### answer 3
    Sheldon Axler's 'Linear Algebra Done Right' has a couple of
    examples.

    - One is to apply a constant scalar to each element of the
      vector, effectively defining

    `<u, v> = M * u * v`

    where M is a diagonal matrix 
    (e.g. [[3 0 0] 
           [0 2 0] 
           [0 0 4]]).

    Another relates to vectors that represent the
    _coefficients of a polynomial_. 

    For such a vector space, you can define the inner product of
    two polynomials 
    `<p, q>`
    as the integral over the interval [0, 1] of `p(t)q(t)dt`.

    With respect to machine learning, the idea is to to define
    the dot product as some appropriate non-linear function in
    order to get a non-linear decision boundary.

    Here you can see some examples of kernel function
    supported by scikit:

    http://scikit-learn.org/stable/modules/svm.html#svm-kernels



- Defining the vector as a function is just a mathematical
  formalism, one of the several possible rigorous ways to define
  it: 

- The ordered list 
    - `x=(x_1,... ,x_n) ` of scalars in a field F 
    - can be defined as the _function_:
    - `x:{1, ..., n} → F`

For example, 
    the _vector x_=(5,6,7) is 
    the _function x_ from the 
    _index set_ {1,2,3} to the real numbers R,
    specifically, the real numbers 5, 6, and 7. 

We have 
    `x(1) = 5 = x_1, `
    `x(2) = 6 = x_2, `
    `x(3) = 7 = x_3. `

key point:
    The ordered list of values that you usually think of as
    a vector is really a _set of elements in the codomain_ of
    the function that defines the vector. 

The _order_ of the ordered list comes from the order of
the  _underlying_ natural numbers in the domain.

Of course, we aren't limited to using the natural numbers as
the _index set_. We can use pretty much an arbitrary set.

For example, what if we want a vector with an element that
is the number of pages in a book and with another element
that is the book's weight in kilograms? Then for the book
b we have a function b:{pages,weight}→R, with b(pages)= 670
and b(weight)=2.3. In Python, this defines the vector

b = {'pages': 650, 'weight': 2.3}


- This is just a mathematical formalism, and is usually only used
  in graduate treatments of algebra. 

- Other possible definitions of vectors: 
    - include them being just _elements of vector spaces_ 
    - (which we would then have to study first, axiomatically)
      and via indexing families (as in Bourbaki's definition of
      the matrix in Algebra I: Chapters 1–3).


- different discussion:
    - A vector can be considered a function, by its _index_, in
      that the there is a domain (the indices) and a co-domain
      (the values in the vector that map to those indices).  

    - So if you have a vector F, then the first element is F[0],
      which you can think of as being like f(x) where x is 0.
      But I don't really think of a vector as a true map, because
      a map can generally have any kind of values, and the
      key-value pairs are not ordered.

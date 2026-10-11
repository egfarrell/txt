
matrix multiplication lemma

    composition of functions corresponds to
    multiplication of matrics

    f(ṽ) = A * ṽ
    g(ṽ) = B * ṽ
    h(ṽ) = (AB) * ṽ

    f ∘ g = h

function composition is commutative
    (AB)C = A(BC)

basis
    decartes fly wall, express position in 2 numbers
    he realised: he could express geometry with algebra.
    walls   = axis
    numbers = coordinates

coordinate representation
    represent `ṽ` in terms of other vectors `ã_1, ã_2, ... ã_n`

    The coordinate representation of ṽ is:
        ṽ = _α1_ã + _α2_ã + ... _αn_ã

    where the _α_ are the coefficients

    follow up:
    look how you can represent [1,3,5,3] as [1,2,3] !!


coordinate representation
    can be expressed in terms of a matrix-vector equation!

    `Au = v`

    where 
    _A_ = coordinate vectors (in columns)
    _u_ = is the coordinate representation (i.e. the coefficients?)
    _v_ = the vector in its full representation

    ie "rep to vec"

    but sometimes we want to go in the opposite direction
    "vec to rep"

    so we have to solve the equation:
    `Ax = v`
    and the solution `x` is the coordinate representation

why use coordinate representation?
    * image lossy compression

    * select a set of generator vectors `ṽ1 ... ṽn`

    * express each image vector as a coordinate
      representation in terms of ṽ1 ... ṽn

    * but for this to work, we have to make sure every image
      vector can actually be represented as a linear
      combination of `ṽ1 ... ṽn`

    so questions:

    1. can we tell if every vector in F^D can be expressed
       in terms of some set of vectors?

    2. what is the _minimum_ number of vectors that will
       express every other vector in F^D?
       (because to save space, we want the number of
       generator vectors to be much smaller than the number
       of pixels)


question
    how do we ensure each point in a vector space has only
    one coordinate representation?

    make sure the generators form a basis!

basis in a graph
    is a spanning forest

basis
    transform one coordinate system to another.
    transformation represented by matrix H.
    how do we find H?

### simplified exchange lemma
    need tool to transform one set of generators into
    another

    inject vector _z_ into a set _S_ of vectors,
    without changing the _span_ of S.

    (note: z is in the span of S)

    `Span {S ∪ {z} - {w}} = Span S`

    i.e. theres always a _w_ in S that you can remove, while
    adding _z_, and the span will be _unaffected_.


### dimension
    __key fact__: 
    all bases for a vector space have the same size

    __morphing lemma__: 
    any basis set is _≤_ any generating set

    what good is the morphing lemma?
    you can use it to prove that any basis for V
    is a smallest generating set for V

    consequence of previous paragraph?
    All bases have the same size. why?
    because they're all the _smallest_ generating sets.

    prove the morhping lemma
    use the exchange lemma

### dimension (of a VECTOR SPACE)
    we define the dimension of a __vector space__ to be
    the _size of a basis_ for that vector space

### rank (of a MATRIX)
    we define the rank of a __set__ S of vectors as the
    _dimension of Span_ S

    row rank
    column rank
    and they're always equal (Rank  Theorem)

### question
    how do we predict the dimensionality of the span
    of some vevctors?

    answer: compute the rank of the set of vectors

### subspaces contain basis
    For finite D, every subspace F^D contains a basis!

### direct sum
    if vector space _U_ and vector space _V_ share a common
    vector... then you cannot form the direct sum U⊕V???

    so both vector spaces must be disjoint!? not quite

    oh yes, he said it later, U and V can only
    share the zero vector for the direct sum to be defined.

* ... complementary subspaces

* extracting an invertible function from a linear function

* kernel image theorem
    for any linear function f: V -> W
    dim ker f + dim Im f = dim V   <---- the domain

* "nullity" of a matrix A is `dim Null A`

* analog of kernel image theorem for matrices
    Rank nullity theorm
        apply kernel-image theorem to function f(x) = Ax
        Ker f = Null A
        dim Im f = _dim Col A = rank A_   (!!!)

        for any n-column matrix A:
        `nullity A + rank A = n`


annihilator of a vector space
    the _set_ of vectors {u} such that ū ∙ ṽ = 0 for every
    vector ṽ in V is called the annihilator of V. written:
    V^0

inner product
    theres some flexibility in defining the inner product.
    (this is handy for machine learning)
    but for this course he decided to define the inner
    product as the dot product.
    `<ū, ṽ> = ū ∙ ṽ`

    interesting:
    inner product is linear in the _first argument_ (only?)
    (see ./dot_product.md)

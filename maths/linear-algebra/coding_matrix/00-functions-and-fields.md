
# main concept:
    - INVERTIBLE FUNCTIONS!

# prove 2 sets are equal
    prove A ⊆ B
    prove B ⊆ A
    thats it!

# set definition
    we often don't specify the real numbers.
    Its just assumed. These are the equivalent:

    ``
    {(x,y) ∈ ℝ x ℝ : y = x^2}
    {(x,y)         : y = x^2}
    ``

# whats a function?
    For each input element in a _set_ A,
    a function assigns,
    a single output element from a _set_ B

    set A:  domain      (input)
    set B:  co-domain   (output)

    Formally, a function is a **set** of **pairs**
    (a,b), no two of which have the same first element

### function example:
    The function with domain {1,2,3,...}
    that doubles its input, is the **set**:
    `{(1,2), (2,4), (3,6), (4,8), ...}`

# image (of an input)
    The output of a given input is called the **image** of that input.
    The image of _q_ under a function _f_ is _f(q)_

# image & co-domain and range (of a function)
    image of a function `Im f` is the _set_
    - of all images
    - from all inputs

    But image of a function is not
    neccessarily the same as the co-domain.
    E.g. it could be **smaller**
    than the co-domain:

    `cos: ℝ → ℝ`
    but the image of cos(x), `Im cos`
    is
    `{x ∈ ℝ: -1 ≤ x ≤ 1}`
    which is smaller!

    **Range**: an important point:
    some people use "range" to mean co-domain.
    some people use "range" to mean image.
    ⇒ the lecturer doesnt like to use "range"

# co-domain
    we can have elements in the co-domain that
    arent images of anything in the domain

# set of functions
    For sets **F** and **D**,
    `F^D`
    denotes all functions
    - from D to F
    - D → F
    (never saw that terminology before)

# composition of functions
    are **associative**!
    never knew that
    `h ∘ (g ∘ f) = (h ∘ g) ∘ f `

# functional inverses
    functions f and g are functional *inverses* if:
    * _(g ∘ f)_ and _(f ∘ g)_ are defined
    * and are identity functions

    quesiton:
    i.e. (f ∘ g) is an identity function?

# one-to-one
    if f(x) = f(y) implies x=y
    i.e. no two inputs in the domain
    have the **same image**

    example:
        capital_city(_country1_) = capital_city(_country2_)
        ⇒ country1 = country2.
        In other words,
        countries with the same capital
        must be the same country.

# onto
    for a function ``f: D -> F``
    for every _z_ ∈ F,
    there exists _a_
    such that f(_a_) = _z_
    basically the whole co-domain is covered.

# invertible functions
    A function with an *inverse* function
    is an *invertible* function.

    and invertible functions are *both*
    * one-to-one
    * onto

    proof:
    assume an invertible function _f_ is _not_ one-to-one.
    assume an invertible function _f_ is _not_ onto.

# terminology!
    use the name "functions" for the _mathematical_ object,
    and the term "procedure" for Python modules/code
    (that we would normally call a python "function")

# probability distribution (function)
    Its a special kind of function.
    Maps:
    [experiment outcome] *->* [relative likelihood (probability)]
    also:
    the probabilities of all possible outcomes
    must sum to 1

# python dictionaries
    can use to model a function with a *finite* domain.

# uniform distribution
    The function assigns the same probability to each outcome.

# composition of functions (be careful!)
    Let `f : ℝ → ℝ` where `f(x) = abs(x)`. Is there a choice
    of domain and co-domain for the function g(x) with rule
    ``g(x) = sqrt(x)`` such that `(g o f)` is defined?

    If so, specify it. If not, explain why not.
    Could you change domain and/or codomain of _f_ or _g_ so
    that _(g o f)_ will be defined?

    I thought:
        no problem, f=abs(x) always outputs a positive > 0, which
        feeds in nicely to g(x) which only takes the square root of
        positive numbers. (But that was sloppy thinking)

    Forum answer 1:
        I think this question is supposed to point out, that the
        domain of g(x) is {x in ℝ : **x >= 0**}, but co-domain of f(x)
        is specified as ℝ, so we can't **technically** say that
        (g o f) is defined because they _don't match_.

        But, we can change the co-domain of f(x) to be {x in ℝ : x >=
        0} cause this is _Im f_, and after we do that, we can say that
        (g o f) is defined.

    Moral:
        Look at the **full** function definition! I mixed up the image
        and co-domain of f. I was already told in the definition that
        the co-domain of f is: `Let f : ℝ → ℝ ...`

    Forum answer 2: (more clarification)
        Again, it points out the difference between _codomain_ and _image_.
        **We're burdened by what we know** - abs can only return
        non-negative.  However, that's the image, and not the codomain.
        The codomain of f(x) was specified to be ℝ, and that does not work
        with g(x).  ...

        ... key point...
        > the (full) codomain of the first function, even if it's not
        > in the image (D on the slide) has to be handled by the
        > domain of the second function.

# main concept
    A _field_ is a collection of values
    * with a _plus_ operation
    * and a _times_ operation.

# Intro
    `def solve(a, b, c):
        return ( c - b) / a`

    this procedure will work for
    * real numbers
    * __and__
    * complex numbers.

    why???

    because its based on a few simple algebraic facts:
    * / is the inverse of *
    * - is the inverse of +
    * commutativity: a + b = b + a
    * associative:   (a × b) × c  =  a × (b × c)
    * distributive:  a × (b + c)  =  a × b  +  a × c
    * etc

    so you can plug in any kind of _"numbers"_ which
    satisfy these properties and much of linear
    algebra will hold

# the punchline
    a collection of "numbers" satisfying the properties
    above is called a __FIELD__

    Different fields are like different _classes_
    obeying the same _interface_ in programming

# complex numbers
    are the intellectual ancestors of _vectors_

# ADDING a complex number
    is like doing a _translation_
    define
        `z0 = 2 + 1j`
    then
        `f(z) = z + z0`
    will move/translate _z_ to a new position
    * 2 units to the right
    * 1 unit up

# represent functional composition
    * by adding arrows
    * (i.e. by adding complex numbers)
    * so the '+' sign in the composition

    `f1(z)        = z + z1`
    `f2(z)        = z + z2`
    `(f1 ∘ f2)(z) = z + z1 + z2`

# rotate by 90 degrees
    we need
        (x + yj) _-->_ (-y + xj)
    (a bit like James Curry's trick with
    the Hamiltonian?!)

    using the property that _j^2 = -1_
    we define a rotation function as:
    `f(z) = j * z`
    i.e. just multiply by "j"!

# euler
    z = e^{_θ_i}
    is the point on the unit circle
    with argument _θ_

# GF2 encryption - one-time pad
    transmit a single bit! (XOR gate)

    `P  Key  Cipher`
    `--------------`
    `0  0    0`
    `0  1    1`
    `1  0    1`
    `1  1    0`

    Perfect secrecy!
        the probability distribution of the cipher
        doesn't reflect the plaintext
        if the key is chosen _randomly_
        (with prob=0.5, e.g. flipping a coin)

    one-time pad
        if each bit
        is encrypted with
        its own one-bit key
        the cryptosystem is unbreakable


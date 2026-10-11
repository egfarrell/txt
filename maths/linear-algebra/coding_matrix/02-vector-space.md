### span (Netherlands consultant)
    - The set of all linear combinations of some vectors `v1, ...
      ,vn` is called the span of these vectors and always
      _contains the origin_.

    - Example: Let V = _Span_{[0, 0, 1],
                              [2, 0, 1],
                              [4, 1, 2]}.

    - A vector belongs to `V` when you can write it as a linear
      combination of the generators of `V`.


### how do you get an affine space
    - "affine spaces derive from a vector space by adding some
      systemic vector"
    - can a vector space be empty?
        - no - zero vector
    - can a affine space be empty?
        - no - because (zero vector) + (systemic vector)


### linear combination
    - many problems can be reformulated as the question:
    - how do we express a vector as a linear combination of
    other vectors?
    - e.g. S = lights out state vector
         - B = button press vector (many different B vectors)

         - S = _(?)_B1 + _(?)_B2 + _(?)_B3 + _(?)_B4

         - where _(?)_ are the cofficients we're looking for

### span
    - the _set_ of all _linear combinations_ of v1 and v2 is
      called the _span_ {v1, v2}

    - note: a span is a SET!
    - span of the empty set {} is just the zero vector

    - In linear algebra or more generally functional analysis,
      the linear span (also called the _linear hull_) of a _set_
      of vectors in a vector space is the intersection of all
      subspaces containing that _set_. 
        - The linear span of a set of vectors is therefore
          a vector space.


### 2 kinds of objects (really a vector space)

    There are _two kinds_ of mathematical objects that arise
    in many applications:

    1. One kind of object is the _span_ of some vectors.

    2. Another is the _solution_ set to some homogeneous
       linear equations.

    It is interesting and useful to know that these two
    kinds of objects are really _one kind_ of object. That
    object is called a _vector space_.  Why useful?

    1. Mathematically useful:
        - Instead of proving properties about each kind of object
          separately, we prove properties about vector spaces.
          Sort of a _two-for-one_.  This is a way abstraction
          gives us more for less effort in doing mathematics
          (i.e. in proving things).

    2. Algorithmically useful:
        - Recognizing that these two apparently different kinds
          of objects are just two representations of a single
          kind of object has algorithmic advantages.  You can use
          whichever _representation_ better suits the task at
          hand.  If you have a conversion procedure, you can
          reuse algorithms designed for one representation as
          subroutines for the other representation.


### translations
    - If you _translate_ a vector space, you get an _affine
      space_. The affine hull of some vectors is an affine space.
    - The solution set of a linear system is an affine space (if
      it is not empty).  
    - Over the real numbers, affine spaces are sometimes called
      _flats_.  Examples of flats are: lines, planes, and so on
      (in higher dimension).


### Example 1: line ∩ plane
    - Here's a simple example.  It is a stand-in for more
      complicated, higher-dimensional problems.  How would you
      find the intersection of a line with a plane in three
      dimensions?  Maybe the plane is represented as the solution
      set of an _equation_, and maybe the line is represented as
      the solution set of a linear system consisting of a pair of
      _equations_.  In this case, the intersection is just the
      solution of the linear system consisting of all three
      equations.  This case is easy: to find the intersection,
      you solve the linear system.


### Example 2: line ∩ plane
    - But what if the plane is represented instead by three
      _points_ on that plane?  And the line is represented
      instead by the two _points_ on the line?  
    - How would you proceed in this case? Here's one way: convert
      each representation into the linear-systems representation,
      and use the previous approach.


There are also problems in which you want to convert in the
other direction.

### Now, what's a vector space?
    - The now-standard way of defining a kind of mathematical
      object is with _axioms_. I defined vector space in that
      way: a set of vectors satisfying some axioms (that is a set
      of vectors with certain properties).  
    - This is convenient: suppose I come up with another kind of
      mathematical object, and I suspect that it is a vector
      space.  To verify that, I just have to verify that my new
      kind of mathematical object satisfies the axioms.

### no vector spaces?
    - What if there were no vector spaces?  I will interpret this
      to mean: what if we didn't have the concept of vector
      space? In a broader sense, recognizing commonalities is
      a key aspect of intellectual progress. 
    - Recognizing that two symptoms come from the same underlying
      disease is clearly useful; stuff we learn about treating
      people with one symptom can help in treating people with
      the other symptom.


### standard generators for ℝ^3:
    - e_1: [1, 0, 0]
    - e_2: [0, 1, 0]
    - e_3: [0, 0, 1]


### a PLANE in 3 dimensions
    - { (x,y,z) : ax + by + cz    = 0}
    - { [x,y,z] : [a,b,c]∙[x,y,z] = 0}

    - but notice! the right-hand-side is zero!!


### Vector spaces! (subset!)

    1. the _span_ of some (finite set of) vectors.
       `Span {v1, ..., vn}`

    2. the _solution set_ to homogeneous linear equations.
       (homogeneous means RHS = 0)
        `{ x : a_1 ∙ x = 0,
               a_2 ∙ x = 0,
               ...
               a_m ∙ x = 0}`

    - Whats common between them? Both are _vector spaces_!

    - A vector space is a subset of `F^D` which satisfies
      3 properties:

    1. Subset contains the _zero_ vector
    2. If subset contains V, it contains _αV_ for every scalar α
    3. If subset contains U and V, it also contains _U + V_


    Why is this solution set a vector space?
    `{ [x] :    a_1∙x = 0}
                a_2∙x = 0
                ...   = 0
                a_m∙x = 0`

    * Property 1:
        Each of the linear equations have rhs = 0, so
        (x=zero vector) satisfies these equations,
        which means zero vector is in the solution set,
        which means zero vector is in the vector space.

    * Property 2:
        say 'V' satisfies:
            a_1∙V = 0
            a_2∙V = 0
            a_m∙V = 0

        then replace 'V' by '_αV_'
            a_1∙(αV) = 0
            a_2∙(αV) = 0
            a_m∙(αV) = 0

        and rewrite:
            α(a_1∙V) = 0
            α(a_2∙V) = 0
            α(a_m∙V) = 0

        which will give 0, so all ok.


### Subspace
    any _subspace of F^D_ can be written in both forms:
    1. as a span of some set of vectors
    2. as the solution set to some homogeneous linear equations


### lines NOT in the origin - translate!
    * start with a line in the origin
    * we know the points in such a line form a vector space
    * translate the vector space by adding vector _c_ to every point
    * we end up with a line through _c_

    { c + v: v ∈ V } or abbreviated: (c + V)

    i.e a (fixed vector) + some (vector space)

    i.e. affine spaces!

### plane (affine space) from 3 points
    we want a plane containing
    * u1 = [3,0,0]
    * u2 = [-3,1,-1]
    * u3 = [1,-1,1]

    answer:
        u1 + Span {some 2 vectors}
        u1 + Span {u2_- u1_, u3_- u1_}

    we take of the '_- u1_' cos we want
    u2 and u3 to be in the plane

    but _u1_ seems 'special' in this setup.

    Lets write it a more 'neutral' way:

    u1 + Span {u2_- u1_, u3_- u1_}
    = {u1 + α(u2-u1) + β(u3-u1)   : α, β ∈ ℝ}
    = {u1 + αu2 - αu1 + βu3 - βu1 : α, β ∈ ℝ}
    = {(1 - α - β)u1 + αu2 + βu3  : α, β ∈ ℝ}
    = {_γ_u1 + _α_u2 + _β_u3      : (α+β+γ=1) ∈ ℝ}

    and this is a much nicer symmetric formulation,
    doesn't treat u1,u2,u3 any different.


### affine combination
    when all the coefficients sum to 1
    e.g. (α+β+γ=1) ∈ ℝ

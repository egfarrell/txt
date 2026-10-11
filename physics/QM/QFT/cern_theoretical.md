CERN Summer course
Part 1: what is mechancis
Part 2: what is field theory

### Why HEP?
    to find the laws of nature!
    in order words: what is the _Lagrangian_ of Nature!
    Here is all of physics:
    `L = ?`

### What is mechanics
    want to answer the question: whats `x(t)`
    and if we have many degrees of freedom,
    ie the x,y,z axis, then we solve:
    `ū(t) = u1(t), u2(t) ...`

    But __general coordinates__: solving for
    `q1 = x1 + x2`
    `q2 = x1 - x2`
    is the same thing as solving for `x1` and `x2`
    "this statement is so deep!?"

### How do we find x(t)?
    Well we use the axiom that:
    "x minimises something!"
    x minimises the _action_!

    Theres only _one_ action for the whole system,
    which is very different from `f=ma`

    With `f=ma` you have many many forces
    all over the place, but with the
    other method theres only one action!

    So we just have to find the minimum of this action!

### Lagrangian "L"
    The langrangian only depends on `x` and `x-dot`.
    Why doesnt it depend on `x-double-dot` too?

    We just assume it doesnt depend on `x-double-dot`!
    Theres no deeper principle.
    If we assume `x-double-dot` we dont get a correct
    description of nature!

    (But later in particle physics, we do get a deeper
    reason for this axiom)

### difference algebraic & differential equations?
    for a differential equation we need initial conditions!
    
### Lagrangian "L"
    You _start_ with the Euler Lagrange and 
    _end up_ with Newtons F = ma

    But what is "L"? How do you find it?
        L is the most general one that is invariant under
        some symmetries. 

    So we rephrase the quesion:
        We ask what are the _symmetries_ of the system
        (Nature). Then when we know the symmetries we write
        the most general Lagrangian we can find.

    
    input: symmetries -> Lagrangian -> solve Euler-Lagrange ->
    output: solution
    
### Imposing Symmetries
    What symmetries give:
        `L = T - V`
          `= mv^2/2 - V(x)`

    Now, what can we say about `V(x)` if we impose certain
    symmetries? (or how is the lagrangian constrained if we
    impose certain symmetries)

    In 1D, if we require `x -> -x` is invariant, what can
    we say about `V(x)`?
        Well then we know that `V(x)` is an even power of
        `x`!

    In 3D, if we require that rotational invariance, what 
    can we say about `V(x)`?
        We know that `V(x)` is a function of `r` only.
        (something else about theta and c)

    In 1D, with 2 particles we require the potential
    (lagrangian) is invariant under:
    `x1 -> x1 + C`
    `x2 -> x2 + C`
    What can we say?
        Well in that case, the Lagrangian has to be
        a function of the _difference_ between x1 and x2.
        i.e. the lagrangian is a function of the generalised
        coordinate: `q2 = x1 - x2` (this is a translational
        symmetry?)

    Kinetic term: what symmetry can we impose on the
    kinetic term so that its `mv^2/2`?

    answer 1: 
        translational symmetry is not enough. If it were
        enough then you could have a KE term with `v^4`
        or `v^6`. (side note: actually in relativity you
        get `v^4`)

    answer 2:
        we impose an axiom that theres no absolute velocity.
        i.e. _Galilean_ invariance. and that's how you end up
        with KE of `mv^2/2`.


### What is field theory?
    A scalar field is something that has a _number_ at each
    point: `φ(x, t)`

    Is "density of people" a field?
    At large _scale_ it is:     e.g. per mile^2
    At small _scale_ its not:   e.g. 1 micron^2

    _Remember_ this example! (comes up again in lecture 5)
    We'll be asking, when we define a field is it always
    correct? Or maybe we're too small, and a field is not
    a good description any more.

### field source
    In physics, a field USED to be associated with a source.
    i.e. an electric charge "generates a field" around it.

    We _USED_ to think of a field like a shadow. Can you
    have a shadow without a "source" of a shadow. (Peter Pan
    is an example of a shadow without a source!)

    Then came Maxwell and he showed that the EM field can
    "live" without a source! He showed the field is as
    _fundamental_ as the source.

    Nowadays we think everything is made from the field,
    even the sources? (! like Faraday)

### how do we solve EM?
    We consider only the electric field E(x, t), and we
    assume as our starting point that it obeys a _wave
    equation_:

        ```
        d^2 E   =   c^2 d^2 E
        -----           -----
        dt^2             dx^2
        ```
        
    
    The solution is some function of `cos` and we get
    `ω = ck`

### Implications of the EM solutions:

    1. each mode has its own _amplitude_ i.e. from the sun,
       green/yellow has a much higher amplitude than UV
       light.

    2. The energy in each `ω` is conserved.

    3. The superposition principle: each wave says "dont
       bother me!" i.e. if two waves cross each other,
       nothing happens, they don't feel each other.

    Are these 3 statements _exact_ or _approximate_?

    Actually they are approximate! 

    * That the energy in each mode is conserved - thats an
      approximation!

    * The superposition principle, thats an approximation
      too! The two waves `do` feel each other a tiny bit but
      we neglect it (because we are physicists)

### generic field theories
    In general, we have to solve `φ(x, t)`, where `φ(x, t)`
    has an infinite number of DOFS. (or it can be an
    approximation for many but finite number of DOFS)

    Remember when we solved plain classical mechanics, we
    solved `x(t)` - or any linear combination of the `x's`
    which we called `q's` the generalised coordinates.

    But now in field theory, we have to solve `φ(x, t)`
    where `x` and `t` are treated the same (nice!). So `φ`
    is my generalised coordinate, and `x` and `t` are the
    parameters i want to solve for.

    - Side note:
        - Why is it a nice property that `x` and `t` are treated
          the same? 
        - Because at the end of the day we know we want to do
          some relativity, and in relativity `x` and `t` are the
          "same".

    - Side side note:
        - In QM this is a big problem because, `x` is an operator
          and `t` is a number! 
        - So how can we even do relativity if `x` and `t` are two
          different things? 
        - Well here already is a hint - we want to go somewhere
          where `x` and `t` are the "same" (what does the same
          mean here?) i.e. in a field.

### Moving from mechanics to fields
    Now we need to minimise
       `∫  L dx dt`
    that is
       `∫  L [ φ(x,t), φ'(x,t), φ-dot(x,t) ]`

    So kind of like what we did for the Lagrangian in
    mechanics that depended on `x` and `x-dot`.

    So how did we solve field theory? Its just like how we
    solved mechanics. We had `x(t)` and `L` in mechanics,
    and now we have `φ(x,t)` and `L` in the field.

### Homework
    see how the KE term `1/2 mv^2` comes from Galilean
    invariance.

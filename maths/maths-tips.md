
### Hard to understand others!
    - https://www.math.columbia.edu/~woit/wordpress/?p=15672#comments
    - I like this tough by Daniel Litt on X (your link) : ”I
      think you start getting back answers, and then to continue,
      you have to UNDERSTAND them. And the dirty little secret of
      mathematics is that it’s impossible to understand what
      anyone else is saying. Conveying one’s mathematical
      intuition is incredibly hard: at least for me, the
      experience of acquiring understanding from someone else’s
      work is nearly identical to that of discovering it on my
      own.”

### The Gradient
    - $MY_NOTES/maths/Vector-Calculus/Gradient.txt
    - The gradient is NOT a generic vector — it is
      a `vector-valued differential operator` from calculus. 
    - It depends on:
        - partial derivatives
        - multivariable functions
        - tangent spaces
        - rates of change
        - directional derivatives
    - The gradient requires machinery (`∂/∂x`, smooth `f: ℝⁿ
      → ℝ`, tangent vectors) that isn't part of linear algebra
      proper.

### Mathematics-for-Physicists: Vector example
    - $MY_BOOKS/Physics/Maths/Mathematical-Physics/Maths-for-Physicists-Good-Introductory-Concepts.pdf
    - But knowing computational methods alone will not get you
      through the physics curriculum: one must understand the
      mathematical _concepts_ behind the machinery.
    - Eg, the methodological knowledge that the derivative of
      `x^2` equals `2x` remains hollow, unless the conceptual
      meaning of that `2x` as a local linear approximation of
      a parabola is fully appreciated.
    - We already mentioned that we put emphasis on the general
      understanding of vectors. Students conditioned to “seeing
      vectors everywhere” have no difficulties in understanding
      the concept of spherical harmonics as a complete set of
      functions on the sphere, interpreting the Fourier transform
      as a basis change in function space, or thinking of a Green
      function as the _inverse_ of a linear operator.
    - On a related note, the physics community has the habit of
      regarding every object comprising components as either
      a vector or a matrix. However, only a fraction of the
      index-carrying objects encountered in physics are genuine
      vectors or matrices.
        - A magnetic field "vector" does not change sign under
          a reflection of space. It therefore cannot be a true
          vector, which always causes confusion in teaching.
    - Equally important are dual vectors, bilinear forms,
      alternating forms, or tensors. Depending on the field one
      is working in, the “everything-is-a-vector” attitude can be
      tolerable or a notorious source of confusion.
    - One of the less conventional aspects of this text is the
      use of covariant notation (indices of vector components
      upstairs, those of vectors downstairs). Covariant notation
      has numerous pedagogical advantages, both pragmatic and
      conceptual. For instance, it is very efficient as an error
      tracking device. Consistent summations extend over pairs of
      contravariant superscript and covariant subscript indices,
      and violations of this rule either indicate an error (a
      useful consistency check) or the hidden presence of
      “non-vectorial structures” (the latter occurring in
      connection with, e.g., the cross product).

### todo:
    - Diffusion models explained https://news.ycombinator.com/item?id=44029435

### The real use of Linear Algebra?
    - Hubbard: linear algebra is more a convenient language for
      multivariate calculus than a subject in its own right(!)
    - $MY_NOTES/maths/linear-algebra/Hubbard-Vector-Calculus.txt

### (Linear) Transformations
    - Transformations are essentially functions
    - Why not say 'function'? 
        - Because 'transformation' suggests movement.
    - Also executing a transformation on a vector is the same
      thing as doing a dot product on that vector. 
        - (vector is 'dotted' with the transformation 'vector'?)
        - $MY_NOTES/maths/linear-algebra/3b1b-3Blue1Brown-Linear-Algebra.txt

### Complex circles
    - In the world of real numbers:
        - `circles` are two-dimensional
    - In the imaginary world of complex numbers:
        - `circles` are only one dimension.
    - (from 'Deep Down Things')
        - $MY_NOTES/maths/analysis/complex-analysis.txt

### Infinite precision Reals are a problem?
    - The idea that real numbers form a continuous line, most
      with infinitely many digits after the decimal point, is now
      broadly accepted. But in the early 20th century this was
      deeply controversial and sparked fierce debates.
    - The great David Hilbert, espoused the now-standard view
      that real numbers exist and can be manipulated as completed
      entities.
    - Opposed to this were mathematical “intuitionists” led by
      Dutch topologist LEJ. Brouwer, who saw mathematics as
      a construct.
    - Brouwer insisted that numbers must be constructible, their
      digits calculated or chosen or randomly determined one at
      a time.
    - Numbers are finite, said Brouwer, and they’re also
      `processes`: 
        - They can become ever more exact as more digits reveal
          themselves in what he called a `choice sequence`,
          a function for producing values with greater and
          greater precision.
        - $MY_NOTES/physics/metaphysics/intuitionist-time-flow.txt

### Another viewpoint on Hamiltonian
    - $MY_NOTES/maths/analysis/Calculus-of-Variations-Variational.txt
    - They make no mention of the `Hamiltonian` as the convex
      conjugate functional of the Lagrangian.

### invariance: Stokes theorem and 1-forms
    - Many mathematicians studied invariants and differential
      forms in the late 19th century, including Enrico Betti—
      Ricci's former math professor at Pisa—who generalised
      Stokes' theorem to `n` dimensions.
    - We've seen that the original 3D version of this theorem
      relates a surface integral to a line integral. 
        - It was first published in the 1854 Smith’s Prize exam,
          which Maxwell sat. 
    - The key thing is it does this in an INVARIANT WAY; you
      should get the same surface AREA no matter which
      coordinates used. 
    - So Betti’s work is an example mathematicians interested in
      coordinate transformations and invariance.

### Operators / Functional analysis
    - Cauchy sequences
    - Norms
    - See: $MY_NOTES/maths/functional-analysis-operator-theory.txt


### equivalence classes.
    - `A` = {Set of all relatives}
    - `R`: equivalence criteron = "is female"
    - then: Mae `~` Teece
    - Also: "`Quotient A/R`":
        - ------------------------------------------------
        - `A/R` = {[Benny], [Mae]} `-` {[Males], [Females] }
        - ------------------------------------------------
        - why the minus `-` above???
        - April 2026: 
            - Ah the minus is wrong? 
            - Should be equals `=`? See below

    - GPT has it better:
        - You've a set of relatives:
            - `A = {Mae, Teece, Benny, ...}` 
            - (possibly more relatives)
        - Define an equivalence relation `R` based on gender:
            - `x R y` iff `x` and `y` are both female (or both male).
        - This partitions the set `A` into equivalence classes:
            - One class contains all females: `{Mae, Teece, ...}`
            - Another contains all males:     `{Benny, ...}`
        - The quotient set (`A/R`) is the set of these
          equivalence classes:
            - `A/R = { [Females], [Males] } = { {Mae,Teece}, {Benny} } `
        - where:
            - [Males]   = { Benny, ... }
            - [Females] = { Mae, Teece, ... }


### Important: Derivative of an exponential
    - $MY_NOTES/maths/analysis/3b1b-3Blue1brown-Calculus.txt
    - derivative of `2^t `.... is `2^t * (0.69...)`
        - ie `itself * constant`
    - All exponential functions are proportional to their own
      derivative, but `e` is the special function where the
      constant of proportionality is `1`
        - Ah Seth has a great video about that.
        - $MY_NOTES/maths/analysis/Seth-Calculus.txt
    - also: the exponential function always outputs a POSITIVE
      real number! `e^x > 0` always

### origin of first-order, second-order etc
    - key: Taylor series
    - $MY_NOTES/maths/first-order-effects.txt

### "P is a function of E"
    - (gosh I had this wrong for years, I thought: `P(E)`)
    - When we say that “something is a function of something
      else” e.g. `P` is a function of `E` we mean that there is
      some function `f` such that `f(E) = P`
    - Or equivalently, there is a function `f` that takes in `E`
      objects and produces `P` objects.
    - We might also think of this as meaning that `P` is defined
      as whatever results when we apply the function `f` to `E`
    - Later:
    - Ah maybe my original intuition was right?
        - Lagrange embraced Euler’s approach to calculus. Johann
          Bernoulli was probably the first to use anything
          approaching our modern function notation, writing `φ x`
          to denote `φ` as a function of `x`. But this was not
          common until Lagrange, who came up with the idea of
          using parentheses, `φ(x)`.
        - Lagrange also introduced the use of accent marks to
          denote the derived functions, `f′(x)`, `f′′(x)`, . . .

### wow: deep explanation of forms, cohomology etc
    - The derivative isn't what you think it is.
        - https://www.youtube.com/watch?v=2ptFnIj71SM
    - Channel: Aleph 0
    - Need to watch this a few hundred times
    - dispels a lot of common myths, like if the derivative of
      a function = 0 then the function is constant. Not true! If
      you have a hole at zero or something
    - Point 1:
        - The rules of Geometry and calculus fail over weird
          spaces. The extent to which they fail measure the
          number of `holes` in your space.
    - Point 2:
        - measuring holes: Geometry -> Homology
        - measuring holes: Calculus -> Cohomology
        - (But both disciplines measure the same holes! cf De
          Rahms theorem)

### Compound interest
    - https://www.youtube.com/watch?v=3B6FymMv8b4
    - interest on interest

### Polynomials
    - Polynomials are fundamental objects in mathematics,
      algebra, and much of science and engineering, characterized
      by an expression consisting of variables and coefficients,
      brought together through the operations of addition,
      subtraction, multiplication, and non-negative integer
      exponents of variables.
    - The term "polynomial" comes from the Greek words "poly,"
      meaning "many," and "nomial," from "nomen," meaning "name"
      or "_term_". Thus, "polynomial" translates to "many terms."
    - 'Degree' of a polynomial
        - The word "degree" comes from the Latin word "gradus,"
          meaning a step or a grade, indicating a level or
          a scale of measurement.
        - In the context of polynomials it has its origins in the
          early history of algebra, where mathematical
          terminology evolved from GEOMETRIC concepts
        - In medieval Latin, mathematicians used the term
          "gradus" to refer to the powers of an algebraic term,
          which metaphorically represented steps or levels of
          intensity or complexity in an equation.
            - The use of "degree" to denote the highest power of
              a variable in a polynomial is a direct continuation
              of this tradition.

### dot product: another way
    - a code version of the dot product
    - seems more intuitive somehow
    - $MY_IMAGES/maths/code-dot-product.jpg

### Brilliant: Clifford multivectors
    - $MY_NOTES/maths/geometry/Clifford-Multivectors-Adelaide.txt
    - "... Clifford's multivectors best fulfills the goal of
      describing vectorial quantities in 3D and providing
      a unified vector system for science."

### What is 'smooth'?
    - A map between two mathematical objects each supporting
      a differential structure is said to be 'smooth' if it is
      _differentiable_ arbitrarily many times.
    - In particular, a smooth map and all its derivatives must be
      continuous.


### Smooth Infinitesmal Analysis (SIA)
    - Intuitively, 'smooth infinitesimal analysis' can be
      interpreted as describing a world where lines are made from
      infinitesimally small `segments`, not out of points.
    - These segments can be thought of as being long enough to
      have a definite direction, but not long enough to be
      _curved_.
    - The construction of discontinuous functions fails because
      a function is identified with a curve, and the curve cannot
      be constructed pointwise.
    - Note: IVT fails in a 'Smooth World'.
    - We can imagine the intermediate value theorem's failure as
      resulting from the ability of an infinitesimal segment to
      straddle a line. Similarly, the Banach–Tarski paradox fails
      because a volume cannot be taken apart into points.

### Comeback of the Infinitesimals
    - $MY_NOTES/maths/analysis/Bell-Primer-Infinitesimal-Calculus.txt
    - key:
        - New math field: 'smooth infinitesimal analysis'
        - also: nilsquare and nonpunctiform infinitesimals
    - In recent years, the concept of the infinitesimal has been
      refounded on a solid basis.
    - First, in the 1960s Abraham Robinson, using methods of
      mathematical logic, created `nonstandard analysis`, in
      which Leibniz’s infinitesimals, conceived essentially as
      infinitely small but nonzero real numbers, were finally
      incorporated into the real number system without violating
      the usual rules of arithemetic (see Robinson, 1966).
    - And in the 1970s startling new developments in _category
      theory_ led to the creation of `smooth infinitesimal
      analysis`, a rigorous axiomatic theory of _nilsquare and
      nonpunctiform_ infinitesimals.
    - As we show, within smooth infinitesimal analysis, basic
      calculus and differential geometry can be developed along
      traditional ‘infinitesimal’ lines – with full rigour using
      straightforward calculations with infinitesimals in place
      of 'limits'.

### Difference: Mapping v Function?
    - $MY_BOOKS/Physics/Spacetime/GR-Modern-Guiry-Good.pdf
    - A mapping is a GENERALIZATION of a function.
    - For example, `f (x) = x^2` is a map that associates the
      real number `x` with the real number `x^2` .
    - In this example the mapping is from a space to the same
      space (from real numbers to real numbers).
    - More generally the mapping can be between different spaces,
      such as from vectors to real numbers.
    - Extra research:
        - A function is a special type of mapping: a mapping from
          a set, into the set of NUMBERS, i.e. into `R`, or `C`,
          or into a `field K`. (Serge Lang, Linear Algebra)
        - Although in most cases "function" and "mapping" can be
          used interchangeably, in parts of mathematics there is
          a difference in emphasis, especially in analysis and
          differential geometry.
            - First, especially in differential geometry,
              "mapping" is the universal word, and "function" is
              used for mappings that map to `R` or `C`. Thus
              a mapping which maps to `R^n` for instance would
              not be called a function.
            - This convention is not always honoured (you might
              occasionally read about "vector-valued functions"),
              but this is the usual interpretation.
            - Second, especially in analysis, it is not uncommon
              to call members of `L^p` "functions", even though
              they are actually equivalence classes of mappings.
                - Again the idea is that functions should assign
                  numbers to some objects (e.g. points in some
                  space) in a suitable sense.
                - Thus functions are thought of being objects
                  studied in analysis, whereas "mapping" is
                  thought of being a term from set theory.



### Intuition on Logs
    - https://news.ycombinator.com/item?id=37362740
    - Logs are _linearized exponents_ so all the laws of
      exponents are the log laws: `log(xy) is logx + logy`.
    - Logs are also a way to _scale_ which is what they were
      originally used for to do large multiplication without
      electronic assistants. We log scale graph axis/plots all
      the time today.
    - They also describe the shape of some processes hence come
      up in compsci like tree algos. If you have a logarithmic
      process and work increases by a million new inputs then
      actual work is only 6x increase. So log is also the number
      of zeros in a number
    - There's a book called Calculus Reordered by Bressoud that
      describes Napier logs/natural ln(x) too

### Morphism
    - Mathematicians use the term 'morphism' for a function, not
      necessarily invertible, which preserves attributes of
      a particular mathematical structure.

### Good strategy (Vista)
    - $MY_BOOKS/Physics/Metaphysics/Rickles/Lie-Groups-Problem-Oriented-Harriet.pdf
    - One of my favorite books is 'Introduction to Affine Group
      Schemes' by William Waterhouse. One thing I admire about it
      is the author sometimes includes a "_vista_" that puts the
      text in a larger context.
    - I've adopted this strategy with a section at the end of
      every chapter called "A broader view".
        - Sometimes the context is mathematical and sometimes
          historical (or both). These sections are not detailed,
          but I hope they give a flavor of the terrain.

### Lie Theory
    - $MY_BOOKS/Physics/Maths/Linear-Algebra/Stillwell-Naive-Lie-Theory.pdf
    - It seems undergraduate mathematics today rests on two
      foundations: calculus and linear algebra.
    - These may not be the best foundations for, say, number
      theory or combinatorics, but they serve quite well for
      undergraduate analysis and several varieties of undergradu-
      ate algebra and geometry.
    - The really perfect sequel to calculus and linear algebra,
      however, would be a BLEND of the two: a subject in which
      calculus throws light on linear algebra and vice versa.
    - Look no further! This perfect blend of calculus and linear
      algebra is Lie theory (named to honor the Norwegian
      mathematician Sophus Lie—pronounced “Lee ”).
    - The classical groups are introduced via a study of
      rotations in two, three, and four dimensions, which is also
      an appropriate place to bring in complex numbers and
      quaternions.
        - From there it is only a short step to studying
          rotations in real, complex, and quaternion spaces of
          any dimension.
        - In so doing, one has introduced the classical simple
          Lie groups, in their most geometric form, using only
          basic linear algebra.
        - Then _calculus intervenes_ to find the `tangent spaces`
          of the classical groups (their Lie algebras) and to
          move back and forth between the group and its algebra
          via the log and exponential functions.
        - The basics suffice: single-variable differentiation and
          the Taylor series for `e^x` and `log(1+x)`.


### Log Scale
    - https://news.ycombinator.com/item?id=37304626
    > Log scale. It's worth noting that hard, good quests are
    > significantly more consequential than easy, good quests.
    - literally log scale means this. but I guess he is
      explaining that to people who don't know log scale doesn't
      LINEARLY scale.


### Duality (Calculus)
    - YT comment: My favorite example of duality is how
      integration represents both the anti-derivative and an
      infinite sum.
    - From 1brown3blue Linear Algebra lecture:
        - "09 Dot products and duality"
        - https://www.youtube.com/watch?v=LyGKycYT2v0&list=PL0-GT3co4r2y2YErbmuJw2L5tW4Ew2O5B&index=10
        - $MY_NOTES/maths/linear-algebra/3b1b-3Blue1Brown-Linear-Algebra.txt
        - 'Duality: a natural-but-surprising CORRESPONDENCE'
          between two mathematical objects.
            - the dual of a vector, is the linear transformation
              it encodes
            - the dual of a linear transformation from a space
              down into a 1D space is a unit vector in that space.



### Nice: Derivative of log(x)
    - The gradient of `log x` at the argument `x = 10` turns out,
      if you measure it, to be `1/10`.  etc etc
    - $MY_NOTES/maths/misc/Prime-Obsession-Riemann-Derbyshire.txt

### Laplace transform connection
    - $MY_BOOKS/Physics/EM/Heaviside-Electrical-Genius-Nahin.pdf
    - Preface xxi
    - Struik had many conversations with Wiener over the relative
      merits of using differential operators and the Laplace
      transform to solve differential equations.
    - Struik believed that Wiener was 'one of the first to see
      the _connection_ between the Laplace transform and the
      Heaviside operational calculus'

### Three types of Mathematical Creativity
    - https://siliconreckoner.substack.com/p/book-review-the-creativity-code-by
    - Have AI researchers convinced du Sautoy that Lovelace was
      mistaken?  The answer is appropriately hedged.  Du Sautoy
      follows Margaret Boden in distinguishing three kinds of
      creativity
        - exploratory (exemplified by the classification of
          finite simple groups or by Claude Monet),
        - combinatorial (exemplified by the proof of the
          3-dimensional Poincaré conjecture based on the Ricci
          flow, or by Zaha Hadid),
        - transformational (exemplified by the square root of
          minus one, or by Picasso).
    - This allows him to raise the bar:
        - Many will concede that exploratory creativity and
          combinatorial creativity can be achieved by an
          algorithm, because it relies on previous creativity by
          humans which it then extends or combines.  What they
          are unwilling to concede is the possibility of
          transformational creativity being algorithmically
          produced.
    - The algorithmic moments that he finds unequivocally
      creative — AlphaGo's "truly creative act" or the
      Continuator's emulation of Bernard Lubat — du Sautoy
      qualifies as "exploratory creativity."  Combinatorial
      creativity is exemplified by François Pachet's Flow Machine
      creating a jazz synthesis of Charlie Parker with Pierre
      Boulez.  As for transformational creativity, du Sautoy
      hasn't yet seen it, but he is prudent enough not to rule it
      out, allowing for the possibility of meta-algorithms
      "designed to break the rules and see what happens."

### AI and Mathematics
    - https://siliconreckoner.substack.com/p/book-review-the-creativity-code-by
    - But it wasn't just the linguistic problem of the Mizar
      project that was bugging me. Of those extra 3 percent of
      theorems that the DeepMind and Google team had managed to
      generate, were there any that would surprise me or make me
      gasp?  I began to feel that this whole project missed the
      point of doing mathematics. But what exactly is the point?
    - Exactly!  Du Sautoy's tentative answer is that
      "Mathematicians… are _storytellers_.  Our characters are
      numbers and geometries.  Our narratives are the proofs we
      create about these characters.  And we make choices based
      on our emotional reactions to these narratives" — du Sautoy
      has already told us that the mathematics we value as "huge
      emotional content" — "deciding which ones are worth
      telling."
    - My personal investment in mathematics as storytelling is
      contained in my chapter in Circles Disturbed, a book
      entirely devoted to exploring the parallels between
      mathematics and narrative.  I plan to devote a future entry
      to some of the insights of that book, and to illustrate
      these parallels with an astonishing mathematical story from
      a recent talk by Dick Gross.

### Discrete v Continuous
    - HN: talk about programmers view of Maths
    - But big distinction between discrete and continuous
    - https://news.ycombinator.com/item?id=35800136


### Learn from History
    - $MY_BOOKS/Physics/Maths/Analysis/Alt-View/Series-and-Products-from-15th-Century-Ranjan-Roy.pdf
    - Students of literature routinely learn from reading the
      words of, say,Austen, Hawthorne, Turgenev, or Shakespeare.
    - We likewise may deepen our understanding and enjoyment of
      mathematics by reading the original works of mathematicians
      such as Barrow, Laplace, Chebyshev, or Newton. It might
      prove rewarding if mathematicians and students were to make
      such reading a regular practice.
    - In the introduction to his Development of Mathematics in
      the 19th Century, Felix Klein wrote,
        - “Thus, it is impossible to grasp even one mathematical
          concept without having assimilated all the concepts
          which led up to its creation, and their connections.”
        - (True)

### Intuition: Imaginary numbers
    - John Horgan
      https://johnhorgan.org/books/my-quantum-experiment/chapter-two
    - After I complained about imaginary numbers, a reader Steve
      suggested a way to think about them.
    - Here is my paraphrase, possibly erroneous, of Steve’s
      explanation: Let’s say you have a real particle, R,
      oscillating in real space along an x axis between x = 1 and
      x = -1. R’s velocity peaks at x = 0 and falls to zero at
      x = 1 and x = -1.
    - Trying to model R’s oscillations, you imagine an unreal
      particle, U, moving at a constant velocity in unreal space
      along an unreal circle with radius 1 centered at x = 0.
      Although U doesn’t exist, its steady, circular motion,
      projected onto the x axis, nicely models R’s oscillations.
    - Physics writer Michael Brooks also delves into the history
      and uses of imaginary numbers in his delightful book The
      Quantum Astrologer’s Handbook.

### Brilliant: Fortney
    - Difference between a manifold and a vector space
    - Coordinate functions
        - $MY_NOTES/maths/analysis/Fortney-visual-forms.txt

### Devlin:
    - Four _ROOT_ mathematical statements
	1. object `a` has property `P`
	2. every object of type `T` has property `P`
	3. there is an object of type `T` having property `P`
	4. If statement A, then statement B
	- using the combinators AND, OR, NOT
	- (also "implies", "for all", "there exists")


### Multi-valued functions
    - https://math.stackexchange.com/questions/1294361/multivalued-functions-for-dummies
    - Do they break the classical definition of a function?
    - It's actually very simple. Draw some disjoint curves
      connecting singularities, or starting at the singularities
      and going to infinity, so that these curves separate the
      plane into simply connected regions.
    - Then instead of a "multivalued function" you have several
      ordinary (single-valued) functions in each region.
    - These ordinary functions are called "branches" of the
      multivalued function. When you choose a branch and try to
      cross one of your curves into another region your branch
      must match one of the branches in that other region.
    - For example, `z√` has one singularity in the plane, namely
      `0` (another one is `∞).` Draw a ray from `0` to `∞.`
    - You obtain one region. In this region you have two ordinary
      functions, branches of z√. When you cross the cut, they are
      interchanged.

### Complex sine wave
    - It is best visualised as a _3D_ object
    - Never thought of that before. It's got a real part, an
      imaginary part and then a time part...
    - so first the formula (based on Eulers equation)
        - $MY_IMAGES/maths/3d-complex-sine-wave-01.jpg
    - then a dull 2D way of plotting it
        - (basically plot `cos` part and `sin` part on 2D axis)
        - $MY_IMAGES/maths/3d-complex-sine-wave-02.jpg
    - Finally, a really intuitive `3D wave`
        - $MY_IMAGES/maths/3d-complex-sine-wave-03.jpg
        - another version of the 3D sine, from a different video
        - $MY_IMAGES/maths/3d-complex-sine-wave-04.jpg

### Eigenvector
    - https://news.ycombinator.com/item?id=33517795
    - Get a rubber sheet. Grab by both hands and stretch it.
    - Inspect the sheet and draw a line on it with a marker.
    - When you stretch and release the sheet, the line would grow
      and shrink, but not change what it was pointing at.
        - (e.g. a line from one of your hands to the other)
    - The line is an _eigenvector_ of your sheet stretching
      transformation.
    - The _eigenvalue_ is how hard you're stretching the sheet.

### Eigenvalues
    - https://news.ycombinator.com/item?id=33517795
    - I was blown away in my Digital Signal Processing (DSP)
      class that eigen "values" exist for certain systems in the
      form of "waves".
    - Basically you put in a wave made from multiple sine and/or
      cosine waves through a function `f(x)` and the output is
      STILL a wave, though its frequency, amplitude and phase
      might change.
    - Technically if I remember correctly this applies to all
      complex exponentials, since they can be rewritten in the
      form `e^(ix) = cosx + i*sinx`
    - This formula also beautifully shows how rotations and the
      complex exponentials are connected.
    - So basically you don't just have eigen-values and
      eigen-vectors:
        - you also have eigen FUNCTIONS (sine and cosine above
          are the eigen functions of f(x)).
    - DSP basicaly revolves arounds functions that don't
      "corrupt" wave-like inputs (wave in -> wave out).
    - Comment
        - Maybe I'm missing what's interesting, but a function
          like `f(z) = 5z + 2` would output a wave with changed
          amplitude and phase when `z = sin(x)`.
        - That doesn't seem that interesting to me, so `f(z)`
          must have some other interesting properties?


### Functional Analysis
    - In fact functions are just `infinite-dimensional vectors`.
      Almost all of the theory goes through unchanged. This is
      the basic idea of functional analysis.
    - reply
        - Notably, one important part which does not go through
          is that for mappings between infinite dimensional
          spaces, linearity does not imply continuity.
            - (E.g. a series of functions bounded by a constant
              can have arbitrarily large derivatives)
        - A large part of functional analysis is dealing with
          that fact and its implication for PDEs.
    - comment
        - Or rather size-of-their-domain-dimensional? (instead of
          infinite-dimensional vectors)

### Is there a talent a mathematician should have?”
    - “Concentration,” Zhang said. We were walking across the
      campus in a light rain. “Also, you should never give up in
      your personality,” he continued.
    - “Maybe something in front of you is very complicated, it’s
      lengthy, but you should be able to pick up the major points
      by your intuition.”

### Fourth powers
    - $MY_BOOKS/Physics/Maths/Analysis/History/Calculus-Reordered-A-History.pdf
    - Fourth powers had never occurred to ancient Greek
      mathematicians...because their maths was rooted in
      Geometry, and this would suggest a fourth dimension...

### Langlands program
    - https://www.youtube.com/watch?v=_bJeKUosqoY
    - Two main continents in Maths:
        - Number theory & `Harmonic Analysis` (?)
    - Harmonic analysis:
        - a branch of mathematics concerning the representation
          of _functions or signals as the superposition of basic
          waves_.
        - Also the study of and generalization of Fourier series
          and Fourier transforms (i.e. an extended form of
          Fourier analysis).
        - In the past two centuries, it has become a vast subject
          with applications in areas such as number theory,
          representation theory, signal processing, quantum
          mechanics, tidal analysis and neuroscience.
    - The term "harmonics" originated as the Ancient Greek word
      harmonikos, meaning "skilled in music".
    - In physical eigenvalue problems, it began to denote waves
      whose _frequencies are integer multiples_ of one another,
      similar to the frequencies of harmonics in music notes.
    - But the term has been generalized beyond its original
      meaning.

### Euler complex plane rotating frequency
    - https://www.youtube.com/watch?v=spUNpyF58BY
    - Ah this was really good...
    - in the exponent for `e` you put
        - total distance (`2π` for a full circle)
        - time `t`
        - how fast/rate/frequency `f`
    - e^(2.00i)
        - will land you on the point if you walk two units around
          a circle anti-clockwise
        - $MY_IMAGES/maths/complex-rotate-01.jpg
    - e^(`2πi`)
        - will rotate one full circle per second
    - e^(`2πit`)
        - rotate around a circle for a certain length of _time_
        - $MY_IMAGES/maths/complex-rotate-02-1Hz.jpg
    - e^(`2πift`)
        - rotate around a circle at a faster or slower frequency
          that 1 cycle per second
        - $MY_IMAGES/maths/complex-rotate-03-freq.jpg

### Naming Calculus
    - The very notion 'infinitesimal' came to be viewed as an
      embarrassment to the new limit-based calculus, as though
      'infinitesimal' were a discredited religious idea from
      a primitive time.
    - Even the subject’s name was changed. What had once proudly
      been known as “_The Calculus of Infinitesimals_”
      thenceforth became known simply as "The Calculus", a name
      whose emptiness spoke of the ghosts of departed quantities.
        - Since “The Calculus” is only slightly more expressive
          than “The Thing”, there was no real loss when, in time,
          even the definite article was shed.
        - Hence today’s unadorned "Calculus" (on tap at a college
          near you).

### Power Series
    - $MY_NOTES/books/annotate/constructing_reality.txt
    - Analysts prior to Fourier, particularly Isaac Newton,
      represented complicated shapes with "power series"
      expansions which approximate arbitrary shapes accurately
      only near a _single point_.
    - Other families of shapes can also be superposed to
      represent arbitrary waves, and many of them are useful in
      QM.

### Trigonometry
    - Trigonometry, was introduced by astronomers, enabling
      people to determine the sizes and distances of heavenly
      bodies

### Difference functionals / operators
    - Are functions whose domain contains functions not called
      'functionals'
    - Ah no... great answer
    - Difference between operator/functional
      https://physics.stackexchange.com/questions/284450/what-is-the-difference-between-a-functional-and-an-operator
    - Loosely, an operator (acting on a function space)
        - takes functions to _functions_ (eg `f(x)` to `−if′(x)`)
    - On the other hand, a functional
        - takes functions to _numbers_
        - (think about a certain integral, or the derivative
          evaluated at a certain point).


### Neo-intuitionists "atomistic functions"
    - $MY_BOOKS/Physics/QG/Einstein-Studies-02-Conceptual-Problems-QG.pdf
    - .. even in old age Einstein was still on the lookout for
      new mathematical tools that might turn speculations he was
      keeping private into the basis of a real theory.
    - Abraham Fraenkel interviewed Einstein in 1951. Now you can
      see why Einstein was so excited by what Fraenkel told him:
        - In December 1951 I had the privilege of talking to
          Einstein and describing the recent controversies
          between the (neo-) intuitionists and their
          "formalistic" and "logicistic" antagonists;
        - I said that the first attitude would mean a kind of
          atomistic theory of functions, comparable to the
          atomistic structure of matter and energy.
        - Einstein took a lively interest in the subject and
          pointed out that to a physicist, such a theory would
          seem by far preferable to the classical theory of
          `continuity`.
        - I objected by stressing the main difficulty, namely,
          that the procedures of mathematical analysis, eg
          differential equations, are based on the assumption of
          mathematical continuity, while a modification
          sufficient to cover an intuitionistic-discrete medium
          cannot easily be imagined.
        - Einstein did not share this pessimism and urged
          mathematicians to try to develop suitable new methods
          not based on continuity (Fraenkel 1954)

### Mathematical Imagination
    - You know, for a mathematician, he didn't have enough
      imagination. But he became a poet and now he's fine.
        - David Hilbert (3Blue1Brown Calculus video)


### Function argument (etymology)
    - argument (noun): from Latin arguere, originally "to make
      clear." The Indo-European root is arg- "to shine; white."
        - A related word is Argentina, named for its silver
          deposits; compare the chemical symbol for silver, Ag.
          From the sense of "brightness, clarity,"
    - Latin arguere meant "to have a dispute or discussion,"
      because each party is trying to make their point of view
      _clear_ to the other.
    - "Argument" came to mean not only the dispute itself, but
      also the proof or evidence used in the dispute, hence the
      topic or theme that was to be discussed.
    - The mathematical use of argument as "the independent
      variable of a function" came about metaphorically as the
      "topic" that the function would "deal with."
    - See also:
      https://english.stackexchange.com/questions/144141/what-is-the-sense-of-using-word-argument-for-inputs-of-a-function
        - From Wiktionary entry:
            - Etymology: From Middle English, from Anglo-Norman,
              from Old French, from Latin `argumentum` (“proof,
              evidence, token, subject, _contents_”)
        - Note Wiktionary definition #7:
            - (programming) A parameter in a function definition;
              an _actual parameter_, as opposed to a _formal
              parameter_.
        - Effectively, the argument is the contents/value of
          a specific actual parameter as passed, rather than the
          name of the variable carrying the passed value into the
          function.

### Buckminster Fuller and Pi
    - https://news.ycombinator.com/item?id=32615938
    - he found the number `pi` distasteful:
        - “I’d learned at school that in order to make a sphere,
          which is what a bubble is, you employ pi, and I’d also
          learned that pi is an irrational number.
    - I wondered how many places did frustrated nature factor pi
      to? And I reached the decision right then that nature
      didn’t use pi,” reads his objection in a New Yorker
      profile.

### Functions: but Galileo question!
    - Functions of 1 and 2 variables are ubiquitous in physics.
    - The period of a pendulum is a function of its _length_.
        - (thought it was a different formula in Lboro year 1?)
        - Ah see here: $MY_NOTES/physics/pendulums.txt
    - The distance covered by a dropped stone and its velocity
      are each functions of the _elapsed time_ since it was
      dropped.
        - (I thought there's another formula in basic undergrad
          physics)

### Kline Critique: Math research
    - "In Mathematics: The Loss of Certainty", Kline deplored how
      research was being conducted, complaining that
      mathematicians were often unwilling to investigate the
      context needed to solve scientific problems, preferring to
      invent pure math problems not necessarily of any
      consequence.
    - Kline also blamed the "publish or perish" academic culture
      for this.

### abscissa
    - abscissa (noun): from Latin "linea abscissa": a cut-off
      line.
    - Abscissa is the past participle of the verb abscindere
      "to break off," from ab- "off" and scindere "to cut."
    - Leibniz coined the term: the abscissa or `x-value` of
      a point in a 2D rectangular coordinate system is the length
      of the segment that is "cut off" on the x-axis between the
      origin and the place directly above or beneath the point in
      question.

### Coordinate geometry
    - formulas pictured as curves (from Kline book)

### function notation: double meaning
    - Strictly speaking, a function is a _relation_ between two
      variables, `x` and `y` say.
    - The relation might be that `y` is the square of `x`.
    - Then the relation is neither `x` nor `y` but something
      connecting the two.
    - Thus when one says that John is the _father_ of William,
      the relationship is fatherhood, and this relation is
      neither John nor William but a connection between them.
    - Yet in speaking about these people one might use the word
      'father' to mean John, _whereas the word strictly refers to
      the relationship_.
    - Likewise in dealing with functions we should distinguish
      between the relation and the value `y` of the function.
    - We could use `f` to denote the relation between `y` and `x`
      and use `f(x)` to mean `y`.
    - However, we often use `y` or `f(x)` to mean the relation.
    - Fortunately, this use of `y` or `f(x)` in the double sense
      causes no confusion and avoids a lot of unnecessary words.

### 'Old' mathematicians were Physicists
    - In the 17th century, when modern science was founded,
      a number of new problems arose.
    - Because the mathematicians of that century, like those of
      most great periods, were actually the physicists and
      astronomers who raised the questions, they responded at
      once to the problems.

### "Adjoint": important concept
    - $MY_NOTES/maths/concept-adjoint.txt
    - https://github.com/adamnemecek/adjoint/
    - Adjointness expresses a condition that is universal in
      mathematics, category theory, probability, logic, ML.
    - It captures this difference between _global_ and _local_.
    - Adjointness operates locally, norm operates globally.
    - What is adjointness? Depends on the context.
    - Illuminating:
      https://reproducibility.org/RSF/book/bei/conj/paper_html/index.html
    - I like this definition:
        > "adjoint operator ... back-projects information from
        > data to the underlying model."

### Symmetry: elliptic trigs and hyperbolic trigs
        - note: definition of hyperbola: `x^2 - y^2 = 1`
            - $MY_IMAGES/maths/calculus-green/symmetry-elliptic-hyperbolic-trigs.jpg
        - Great video about hyperbolics
            - https://www.youtube.com/watch?v=HnHnEnkZpJA
            - has an analytic and geometric definition
            - starts with EVEN and ODD functions
                - firstly, any function can be split into an even
                  an odd part...
            - then takes the exponential function `e^x`
                - cosh(x) = (e^x + e^(-x)) / 2 (even)
                - sinh(x) = (e^x - e^(-x)) / 2 (odd)
                - `e^x = cosh + sinh`
                - `cosh`: EVEN components of exponential func `e^x`
                - `sinh`: ODD  components of exponential func `e^x`
            - defines hyperbolics in terms of an _AREA_ (a/2),
              not just angle `θ`
                - 00:00 Even and Odd Functions
                - 02:24 Analytic Definition of `cosh` and `sinh`
                - 03:19 Graphic `cosh` and `sinh`
                - 03:53 Taylor series & derivatives
                - 05:12 Hyperbolas
                - 06:42 Geometric definition: trig functions
                - 09:22 Geometric definition: hyperbolic trig functions
                - 10:45 Geometric & analytic definitions are the same!
                - 14:03 Euler's Equation

### Hyperbolic interesting comment
    - (Link to Minkowski distance?)
        - https://www.youtube.com/watch?v=HnHnEnkZpJA
    - Interesting: you can change the hyperbolic version of
      Euler’s formula into a 2D analogue to the formula by using
      `j`, so that
        - `e^{jx} = cosh(x) + j•sinh(x)`,
        - where `j^2 = 1` (instead of -1).
    - It results in the split-complex plane, which has some weird
      geometry, like distance being equal to the square root of
      `x^2 - y^2`
        - ???!

### Natural Log
    - ./natural-log-ln.txt
    - Circular definition!
    - The constant `e` is the base of the natural logarithm.
    - And when you look up natural logarithm you get:
        - The natural logarithm, formerly known as the
          _hyperbolic logarithm_, is the logarithm to the base
          `e`, where `e` is an irrational constant approximately
          equal to 2.7182818...

### Links between Exponentials & Trigonometry
    - Link 1. Eulers Formula
    - Link 2: The hyperbolic functions..!
        - See Calculus green:
          $MY_NOTES/maths/analysis/Calculus-Green.txt
    - Also:
        - the exponential is the key function.
        - (must check Kalid agian)

### Ln(x) or Log(x)
    - These functions _extract_ or measure powers...
    - Never thought of it that way
    - Logs grow very very slowly as a function of input (useful)

### Study
    - Math life balance...
    - Inna Zakharevich
        - https://m.youtube.com/watch?v=E4SYGwd22iM
    - Instead of feeling despair in Grad School... tell myself
      I don't have to work 8 hours today... I'll do ONE HOUR...
      great if you do more, but just do one hour... and if you
      can't, then try half an hour, then a break and another half
      an hour

### Maths Books
    - Nobel laureate Chen Ning Yang once observed:
        - "There are only two kinds of math books: Those you
          cannot read beyond the first _sentence_, and those you
          cannot read beyond the first _page_."

### What is a Symmetry?
    - $MY_BOOKS/Physics/Metaphysics/Rickles/Lie-Groups-Problem-Oriented-Harriet.pdf
    - For mathematicians, symmetries are special `invertible functions`.

### What is Group Theory
    - My Note: a 'symmetry' is actually a transformation.
        - ie an active operation. (from Rickles)
    - The toolbox to describe _symmetries_ is group theory.
    - The set of _transformations_ that leave a given object
      unchanged, together with a rule that allows us to combine
      them, is called a group.
    - The symmetry at the heart of SR is the Poincare group and
      consists of all transformations (e.g. rotations and
      translations) that leave the speed of light unchanged.
    - (Jakob)

### Operator Theory
    - A Course in Operator Theory (Conway)
    - Preptorial says you get a feel for all of Maths via operators
    - $MY_NOTES/physics/books/preptorial_recommends.txt

### - DIRECT SUM:
    - $MY_NOTES/maths/linear-algebra/coding_matrix/00-Coding-Matrix-Contents.txt
    - $MY_BOOKS/Physics/Maths/Linear-Algebra/coding-matrix-lectures.pdf
    - (same as tensor product? NO!)
    - Coding the matrix has a good discussion
    - (will that help me with "Linear Algebra done right"?)

### What is conformal?
    - angle preserving
    - (gleaned from Garrity)

### Derivative Shorthand
    - df/dx: the `dx` has a builtin idea of the limit formalism
      already.
        - $MY_IMAGES/maths/2brown-calculus/limit-formalism.jpg

### Derivatives of exponentials
    - All exponential functions are proportional to their own
      derivative, ie derivative of 2^t = `2^t * some constant`
    - but `e` is the special function where the constant of
      proportionality is `1`

### Neural nets
    - NN's are actually a "universal function" (David Silver on
      Lex podcast?)
    - Universal: can represent any time of function... ultimate
      flexibility
    - Jeremy Howard says this as well at the start of his DL
      book.

### Dual space
    - the MEMBERS of the dual space aren't vectors, they are _maps_
        - (ie they are functions?)
        - Dec 2021: but actually you could argue that vectors can
          be represented as maps / functions too(?)

### Area of circle
    - nice demo with pizza's
    - Newton Pi https://www.youtube.com/watch?v=gMlf1ELvRzc
        - $MY_IMAGES/maths/pizza-area-circle-01.jpg
        - $MY_IMAGES/maths/pizza-area-circle-02.jpg
    - interesting: the AREA of a unit circle is `π`
        - (never really thought of that before :)

### Interview with Giulia Saccà
    - https://www.youtube.com/watch?v=a89hUZmQUGc
    - Exploring a territory...
    - An explorer of the invisible brings something from the
      Divine World to our own World and makes it shine for just
      a moment. (from Proust?)
    - Also: finds a similarity between mountaineering books and
      mathematics... can use brute force, or spot an elegant way
      up the face.
        - Mentioned book: "Conquerers of the useless"
        - Lionel Terray's mountaineering autobiography, Les
          Conquérants de l'inutile (1961).
    - Listen Math-Life balance
    - Interview with homeless woman with MSc Maths / Engineering
        - $MY_IMAGES/misc/Homeless-Lady-Mathematician.jpg

### nice
    - a function `f` is one-to-one if its _kernel_ is
      trivial.
    - equivalent: if its kernel has dimension zero.

### Dhruv Function Kernels
    - Also search this file for:
        - Coding the matrix: **KEY-IDEA**
    - Dhruv on Math
        - https://www.dhruvonmath.com/2019/04/04/kernels/
        - $MY_BOOKS/Physics/Maths/Visual-Intro-Function-Kernels.pdf
    - key points
        - pre-image
            - $MY_IMAGES/maths/linear-algebra/key-point-kernels-00.jpg
        - adding v + K
            - $MY_IMAGES/maths/linear-algebra/key-point-kernels-01.jpg
    - Conclusion
        - Every matrix is a linear function and that linear
          function will have some kernel `K` that maps to `0`.
        - All pre-images of output points are just translations
          of `K`.
        - If `v′` is the distance between the translations of
          `K`, the `f(v')` is the distance between their images.
    - The last point actually leads to the first isomorphism
      theorem of group theory. This states the relation between
      the sets of pre-images of a special type of function known
      as a homomorphism (in our case `f`) is the exact same as
      the relation between the set of output points.
    - Who would have thought that all the pre-image sets are just
      _translations_ of each other?
    - Or that the _relation_ between these pre-image sets mirrors
      the _relation_ between the (output) points in the image?

### linear combination, dot product
    - In 2015 I thought these two were the same...
    - But thinking now (Warsaw 2021), they're not the exact same.
      The linear combination has `components` which come from the
      field (reals) of the vector space...
    - While the dot product is really two `vectors` dotted
      together. Ah... or is it the components of two vectors
      dotted together?

### Weinstein: Guage theory as calculus
    - https://geometricunity.org/pull-that-up-jamie/
    - Nice animation of Guage Theory from Eric Weinsteins site
        - $MY_IMAGES/maths/analysis/guage-theory-as-calculus-01.jpg
        - $MY_IMAGES/maths/analysis/guage-theory-as-calculus-02.jpg
        - $MY_IMAGES/maths/analysis/guage-theory-as-calculus-03.jpg
        - $MY_IMAGES/maths/analysis/guage-theory-as-calculus-04.jpg

### My Father, Andre Weil
    - I read in one of Simone’s notebooks:
        - “The axiomatic system of modern mathematicians. What
          are they seeking? They do mathematics without
          understanding its use.
        - (Ask André: Does he feel pleasure when he succeeds, or
          aesthetic joy?)”
    - I read this... and suddenly, without knowing why, I feel
      good. The parentheses harbor a small family reunion. And
      the family is mine....
    - I imagined lunch in the family kitchen, my grandmother’s
      sauerkraut, a nice bottle of Riesling, and the conversation
      between Simone and André.
    - Did André tell his sister, as he sometimes told me, that
      mathematics was not a science, but an art?
    - Did he tell her that the pleasure of experiencing thoughts
      following one another miraculously, and flowing from one
      another, is superior to sexual pleasure because it can last
      for several hours, even several days, as he would write
      later on?

### Story of Maths: Galois
    - DuSatoy: Galois thought perhaps Maths shouldn't be about
      the study of number & shape
        - ... but instead the study of _structure_
    - The symmetry of certain geometric objects seemed to be the
      key. i.e. he used geometry to analyse equations...
    - Andre Weil built on Galois's ideas while in prison for
      desertion from the French army
        - algebraic geometry: new way of understanding solution
          of equations
        - these theorems connected number theory, geometry,
          algebra and topology

### Weinstein PDE's
    - "The idea is: if I'm chewing gum after eating garlic bread,
      when I open my mouth and I've got chewing gum between my
      lips, maybe it's going to form an elliptic object called
      a minimal surface.
    - When I pop that and blow through it, you're going to hear
      a noise that's going to travel to you by a wave equation,
      which is going to be hyperbolic.
    - Then the garlic breath is going to diffuse towards you and
      you're eventually going to be very upset with me according
      to a heat equation, which will be parabolic."

### Fourier Transforms
    - 3Blue1Brown
    - Uses Julia and Manim engine
    - https://www.youtube.com/watch?v=g8RkArhtCc4

### Gauss sqrt(-1)
    - "The true metaphysics of the square root of -1 is elusive"
        - Gauss 1825
    - Clifford to the rescue?
    - The bivector `e_1,e_2` squares to `-1`
        - $MY_IMAGES/maths/clifford-square-root-minus-one.jpg
    - See also:
        - The Vector Algebra War: Derek Abbot, James Chappell
        - Brilliant explanation of clifford algebra...
        - https://www.youtube.com/watch?v=_AaOFCl2ihc
        - $MY_VIDEOS/maths/Vector-algebra-war-Clifford.mp4

### Operators
    - Sussman: an operator is a function...
    - but function "MULTIPLY" means _compose_

### Holonomic
    - Holonomic (introduced by Heinrich Hertz in 1894 from the
      Greek ὅλος meaning _WHOLE_, entire and νόμ-ος meaning _law_
    - So has to do with the "whole", "global" system?

### Integrate / integral
    - another way of thinking about it:
    - add up lots of little bits... (later: and get an AREA under
      a graph)

### Stationary point
    - A point where the function's outout value DOES NOT VARY as
      the input is varied.
    - Local maxima or minima are stationary points.

### Mixed Partials
    - Measure the "twisting" of a graph (at a point?)
        - $MY_IMAGES/maths/mixed-partials.jpg

### Derivative nice point
    - difference between "rate of change" and "slope"...
        - Recall that the rate of change of a function is also
          the _slope_ of a tangent line to it's graph, as long as
          you are travelling with _speed one_. ie the "run" is 1,
          or `∆x` is 1...

    - Later: Bachman forms book
        - $MY_IMAGES/maths/directional-derivative-04.jpg
        - Is 69 the slope of the tangent line to some curve that
          we get when we intersect the graph of `xy^2` with some
          plane?
        - What this number represents is the rate of change of
          `f`, as we walk along the line `l` of Figure 1.9, with
          speed `|V|`.
        - To find the desired SLOPE we would have to walk with
          _speed one_.
        - Hence, the directional derivative only represents
          a slope when `|V|=1`.


### Differentiation Colin Smith
    - with multi-variable, the derivative shows which of the
      variables are _most sensitive_ to a change in the input
    - this came up in Neural Nets / fastai etc too...

### Geroch Mathematical Physics
    - This book was suggested as a prerequisite for Analysis,
      Manifolds, and Physics, itself recommended to accompany The
      Global Approach to Quantum Field Theory by Bryce DeWitt.
    - It serves as an introduction to many of the areas of
      advanced mathematics needed for theoretical physics,
      employing categorical language to tie them together.

### Vector notation
    - `[  1 ]`
    - `[ -2 ]`
    - odd snippet...
    - the 1st number tells you how far to move ALONG the x-axis
    - the 2nd number tells you how far to move PARALLEL the
      y-axis
    - so you actually "move along" the x-axis, but parallel to
      other axes...

### 2007 Maths documentary
    - Eagle Valley, Cork
    - "Dangerous Knowledge", Cantor etc
    - https://www.imdb.com/title/tt1520274/
    - (I thought it was "Unsettled Minds" or something...)

### Chain Rule intuition
    - chain rule; sensitivity of Cost `C` to small changes in`∂w`
    - a series of "ratios"
    - $MY_IMAGES/cs/ml/nn-chain-rule.jpg

### Discussion of the 3-body problem
    - $MY_BOOKS/Physics/Maths/Overview/Visions-Infinity-Ian-Stewart.pdf
    - Chapter 8

### "The Connection" (interesting)
    - Youtube user: I read that the connection is the set of
      components of the covariant basis, when _differentiated_
      with respect to the coordinate system?
        - Check out 1:04:10 in lesson 18.
        - I don't think I literally say it, but that's where
          I make contact with that idea you read.
        - It is a good way of looking at it, by the way.

### Tensor product Youtube guy:
    - you started off with a multi-linear map
    - but you end up with a linear map
    - (the cartesian product `x` is multi-linear?,
        - and `⊗` is linear?)
    - $MY_IMAGES/physics/tensor-product-intuition.jpg

### 3 uses of the tensor product symbol
    - https://www.youtube.com/watch?v=M-OLmxuLdbU
    - Tensors for Beginners 15: Tensor Product Spaces
        - $MY_IMAGES/physics/types-of-tensor-product.jpg
    - question:
    - This tensor stuff is so beautiful, gives you a completely
      different perspective on vectors and matrices.
    - But what connection does it have with manifolds?
    - AFAIK tensors are defined in differential geometry, here
      tensors are completely formulated using only linear
      algebra.
    - What is the role of differential geometry in tensors?
        - You'll probably want to watch my "tensor calculus"
          series after this. The idea is, just as you can have
          scalar fields with a scalar defined at every point in
          space, and vector fields with a vector defined at every
          point in space, you can also have tensor fields with
          a tensor defined at every point in space.
            - (This space can also be curved, and "manifold'
              basically just means "curved space".)
        - A number of tensor fields get used in differential
          geometry. Most important is the metric tensor field.
          Related are the Riemann and Ricci tensor fields.
        - In GR there are also tensor fields related to physics,
          like the mass-energy-momentum tensor field (also called
          stress-energy tensor field).

### tensors: important point
    - if you build tensors from a vector space, and build tensors
      from it's dual space... there is no link/correspondence
      between the two sets of tensors... they are different
      things!
    - but later are we going to learn how to make a connection
      between the different tensor spaces.

### Are tensors the same as matrices
    - There is a tensor formalism that treats all vectors as
      column matrices and all dual vectors as row matrices and
      rank (1,1) tensors as a matrix.
    - However this approach is very limited. So, no, tensors are
      not matrices. Tensors are mappings that live in a vector
      space called the "tensor product space"

### Physical meaning of Tensor Product Spaces (TPS)
    - Could we freely construct a tensor product space from any
      arbitrary vector spaces, then it is very likely there are
      no physical meaning attached to, only a pure mathematical
      object? Right?
        - XylyXylyX
        - All mathematical objects, at best, only serve to model
          physics. It turns out that the physics of space and
          time are best modeled by tensors.
        - Even though we can many many different types of tensors
          using many different vector spaces, we are always faced
          with the problem of figuring out which ones are best to
          model nature.
        - Eg, any (0,2) tensor can be used as a metric for
          a manifold, but nature only uses symmetric metrics
          which happen to solve the Einstein equation, as far as
          we know.
        - There are limitless numbers of differential equations
          which we can imagine, but only one of them models
          spacetime.
        - Do we say that "differential equations have no physical
          meaning?" Well....many of them don't and a few of them
          do.
            - A harder question is whether all physics can be
              modeled well using mathematical objects. I have
              personally wondered if there is a limit to this,
              but I don't think about it much :).


### Conditions for Circular Orbit
    - sing the conditions for the circularorbit `r= 0` and  ̈`r= 0`,
      we obtain corresponding specific angular momentum...
	- $MY_IMAGES/physics/conditions-circular-orbits.jpg

### Difference Lagrangian, Hamiltonian variables
    - the top line on the right is Lagrangian
    - the bottom line is Hamiltonian (has momentum instead of
      velocity)
	- $MY_IMAGES/physics/lagrangian-hamiltonian-variables.jpg

### What is the Hamiltonian
    - "They make no mention of the Hamiltonian as the convex
      conjugate functional of the Lagrangian."
    - See: $MY_NOTES/maths/analysis/Calculus-of-Variations.txt

### Spherical Coords
    - Polar angle (altitude)
    - azimuthal angle (horizontal)
	- $MY_IMAGES/physics/polar-coords.jpg



### Mathematics-for-Physicists
    - $MY_BOOKS/Physics/Maths/Mathematical-Physics/Maths-for-Physicists-Introductory-Concepts-Good.pdf
    - However, knowledge of computational methods alone will not
      carry a student through the physics curriculum. Equally
      important, she needs to understand the mathematical
      concepts behind the machinery.
    - Eg, the methodological knowledge that the derivative of
      `x^2` equals `2x` remains hollow, unless the conceptual
      meaning of that `2x` as a local linear approximation of
      a parabola is fully appreciated.
    - We already mentioned that we put emphasis on the general
      understanding of vectors. Students conditioned to “seeing
      vectors everywhere” have no difficulties in understanding
      the concept of spherical harmonics as a complete set of
      functions on the sphere, interpreting the Fourier transform
      as a basis change in function space, or thinking of a Green
      function as the _inverse_ of a linear operator.
    - On a related note, the physics community has the habit of
      regarding every object comprising components as either
      a vector or a matrix. However, only a fraction of the
      index-carrying objects encountered in physics are genuine
      vectors or matrices.
        - A magnetic field "vector" does not change sign under
          a reflection of space. It therefore cannot be a true
          vector, which always causes confusion in teaching.
    - Equally important are dual vectors, bilinear forms,
      alternating forms, or tensors. Depending on the field one
      is working in, the “everything-is-a-vector” attitude can be
      tolerable or a notorious source of confusion.
    - One of the less conventional aspects of this text is the
      use of covariant notation (indices of vector components
      upstairs, those of vectors downstairs). Covariant notation
      has numerous pedagogical advantages, both pragmatic and
      conceptual. For instance, it is very efficient as an error
      tracking device. Consistent summations extend over pairs of
      contravariant superscript and covariant subscript indices,
      and violations of this rule either indicate an error (a
      useful consistency check) or the hidden presence of
      “non-vectorial structures” (the latter occurring in
      connection with, e.g., the cross product).

### Interesting - No negative energy!?
    - ../../maths/geometry/vargas-differential-geometry-moving-frames-and-farewells.txt
    - The extensive use made of Dirac's calculus has taught
      physicists to navigate its waters, but some difficult spots
      remain. We specially mean spurious negative energy. Through
      his replacement of the Dirac equation with his own
      equation, Kahler showed the emergence of antiparticles
      without resort to negative energy solutions [48]. He also
      showed that there is nothing mysterious about spin. As he
      put it [48]:
    - The spin of the electron will be interpreted as the
      necessity to represent the state of an electron by a state
      differential rather than by a state function.


### New definition Topological Spaces (Scholze)
    - Peter Scholze has posted at the Xena blog a challenge to
      those interested in formalizing mathematics and automated
      theorem proving (or checking): formalize and check the
      proof of a foundational result in his work with Dustin
      Clausen on “condensed mathematics”. As part of the
      challenge, he provides an extensive discussion of the
      motivation and basic ideas of this subject, which attempts
      to provide a replacement (with better properties) for the
      conventional definition of a topological space.

    - Spending a little time reading this and some of the other
      expositions of the subject convinced me this is a really
      thorny business. Scholze explains in detail his motivation
      for making the challenge in part 6 of the posting. My
      suspicion has always been that most of the value of
      computer theorem checking lies in forcing a human to lay
      out clearly and unambiguously the details of an argument,
      with that effort likely to make clear if there’s a problem
      with the theorem. It will be fascinating to see what comes
      of this project.

### Generic conic section formula
	- $MY_IMAGES/maths/conic-section-formula.jpg
    - Chandra uses these terms in his books on BH's
	- $MY_IMAGES/maths/conic-sections-ellipse.jpg
	- $MY_IMAGES/maths/conic-sections-hyperbola.jpg

### Terence Tao: Speak
    - Saying things out loud forces you to think at a more
      organised level, than in your head where it can be a bit
      jumbled

### "Point set topology"
    - a _topological space_ is TWO SETS:
    - {the set `X`   ,   the topology (set of all _open sets_ of `X`)}
    - {        `X`   ,   `T_x`                                       }

    - Also a "topology" needs 4 things:
        -  `X` (the set itself)
        -  `0` (null set)
        -  `∪` (infinite unions)
        -  `∩` (FINITE intersions)


### Difference Cartesian & direct products
    - The Cartesian product is a specific kind of direct product:
      it’s the direct product of sets.
    - The direct product is a more general concept, defined for
      an arbitrary category.
    - more info here:
        - What is the difference between Cartesian product,
          direct product, and tensor product?
        - $MY_IMAGES/maths/direct-cartesian-tensor-products.jpg

### Exterior Algebra intuition
    - Youtube: Aleph 0
    - What is the tensor product, anyway?
    - Shows why the determinant is so important (came accross
      this twice today!)
    - https://www.youtube.com/watch?v=q9bzrCKgax0

### Manifold
    - A 4D manifold has coordinates by construction.
    - That is what a manifold is: a set that can be given
      coordinates.

### triple equals sign
    - means "by definition"

### Simplectic algebras
    - based on Poisson brackets
    - much more stable numerically for solving hydrodynamic
      equations

### Relations!
    - https://www.math3ma.com/blog/matrices-probability-graphs
    - Relations are often under-appreciated, I think.
    - In high school, I learned functions are of utmost
      importance. "Assignments must only have one output for each
      input," they said.
    - No one ever mentioned anything about multiple outputs.
      Whenever such an anomaly did crop up, it was usually
      presented as abnormal and off-limits.
    - But relations deserve much better treatment! One reason is
      because relations are to sets what linear maps are to
      vector spaces.
    - There's a lot of juice in linear algebra, so there's a lot
      of juice in relations too. In short, relations are very
      much top-notch citizens.

### CFD Navier course
        - A second order derivative is just the slope of the
          tangent to the 1st order derivative?
        - Ah but using the taylor expansion... ie they do:
            - $MY_IMAGES/maths/central-difference-2nd-order-derivative.jpg
        - I thought it was:
            - the 1st order derivative is a straight line (no its
              a CURVE too)
            - and the 2nd order would be a tanget to that
              straight line(?!)



### random differentiation thought
    - all dy/dx changes are rate of chage per `ONE single x`

### fractional calculus.
    - is a half derivative is a thing. Turns out fractional
      calculus is a real thing and shows up in many applied areas
      of math.
    - The Fractional Calculus by Oldham and Spanier I have lying
      around treats its applications to diffusion problems, for
      example. As an EE student fractional PID controller design
      and fractional signal processing are interesting as well.
    - I'd recommend Dr Peyam's videos on half derivatives

### Superposition for affine functions
    - Ah I always wondered about this from coding the matrix.
      Whats so special about the coefficients `α` and `β` summing
      to one..
    - For linear functions, superposition holds for any
      coefficients `α` and `β`
    - For affine functions, superposition holds (only) when
      the coefficients `α` and `β` sum to 1
        - $MY_IMAGES/maths/affine-functions-superposition.jpg

### Lisa Piccirillo: Topology
    - Asteroids screen:
        - top/bottom edges: same point.
        - left/right edges: same point.
    - you can fold the asteroid screen up into a topological 2D
      torus
    - lots of defintions of topology:
        - Mathematics of holes
        - geometry with silly putty
        - a branch of maths that explores the deepest properties
          of geometry
        - Piccirillo fav definition: geometry where you don't
          care about DISTANCE
    - In topology the orientation on the boundary matters!
        - $MY_IMAGES/maths/piccirillo-gluing-torus-orientation.jpg
    - self-intersections arent allowed in Topology?
        - But a Klein bottle has a self-intersection?
    - "real projective plane"
        - squishing two topological objects together: "connect
          summing"
    - notice: connect summing a torus with a sphere gives you
      back a torus on its own.
    - note: you can't fold it up in our "world" without
      self-intersections and poking holes
    - $MY_IMAGES/maths/klein-bottle.jpg
    - Recommends book:
        - Weeks: Shape of space $MY_BOOKS/Physics/Maths/Topology/Weeks-Shape-of-Space.pdf

### Quirky Quantum. Physicists view of calculus
	- $MY_IMAGES/maths/partial-differentiation.jpg
    - Also, for the record, derivatives are fractions, despite
      what you might have been told in calculus. They are
      a special case of fraction: the limiting case of fractions
      of differentially small changes. But they are still
      fractions, with all the rights and privileges thereof. All
      of physics treats them like fractions, multiplies and
      divides them like fractions, etc., because they are
      fractions.

### HN Discussion
    - The difficulty in coming up with a good map of mathematics
      is summarized by this quote by Banach:
    - "A mathematician is a person who can find analogies between
      theorems; a better mathematician is one who can see
      analogies between proofs and the best mathematician can
      notice analogies between theories. One can imagine that the
      ultimate mathematician is one who can see analogies between
      analogies."
        - Reply: Haha, it's like Maclane said: "I did not invent
          category theory to talk about functors. I invented it
          to talk about natural transformations."
        - You gotta go at least to the third level of abstraction
          to get the real meat.

    - 2022: random comment about Category theory
        - (in article about AI mathematicians)
        > You can probably train a language model to lead
        > mathematicians on a wild goose chase for quite a while,
        > by just proposing some definitions, proving a few
        > trivial things about it, proposing another based on
        > that and doing the same etc. Then you can see how long
        > it takes for them to catch on that it's not actually
        > going anywhere.
        - You've just described category theory. ;-)


### Tensor tubes of jelly
    - Sabine blog
    - The reader also learns that Lindley’s personal mode of
      understanding is visualization rather than abstraction.
      Lindley, for example, expresses at some point his
      frustration with a professor who explained (entirely
      correctly, if you ask me) that “a tensor is an object that
      transforms as a tensor” with a transformation law that the
      professor presumably previously defined.
    - Lindley reacts: “Here is how I would explain a tensor.
      Think of a cube of jellylike material.” It follows two
      paragraphs about jelly that I personally find entirely
      unenlightening. Goes to show, I guess, that different
      people prefer different modes of explanation.


### The Irrationals
    - $MY_BOOKS/Physics/Maths/Math-History/The-Irrationals-Julian-Havil.pdf
    - Yet those ancient Greeks had not discovered irrational
      numbers as we would reco?nize them, much less the symbol
      (which would not appear until 1525); they had demonstrated
      that the side and dia?onal o? a s?uare cannot
      simultaneously be measured by the same unit or, put another
      way, that the dia?onal is incommensurable with any unit
      that measures the side.

### Crowell
    - The complex number system gives us an efficient way of
      describing both positive and negative FEEDBACK
    - By repeatedly multiplying i by itself, we have wrapped
      around, re- turning to 1 after four iterations. If we keep
      going like this, we’ll keep cycling around. This is how the
      complex number system models os- cillations, which result
      from negative feedback

### Differentials
    - Historical Evolution of the Differential to Find a More
      Appropriate Model for Calculus
    - $MY_BOOKS/Physics/Maths/Analysis/Alt-View/Historical-Evolution-of-the-Differential.pdf
    - Leibniz admits that he ‘does not believe in truly infinite
      or infinitesimal magnitudes’ (Kline 1972, p. 511);
      nevertheless, he defends their use for practical reasons by
      considering the symbols as ‘useful fictions to abbrevi- ate
      and to speak universally’ (Edwards 1973, p. 264).
    - Leibniz retorted to Nieuwentijdt’s criticism by saying:
      ‘infinite and infinitely small quantities can be used as
      a tool, in the same way as algebraists satisfactorily used
      imaginary roots’ (Kline 1972, p. 509).


### Finite Element method
    - I'm currently trying to grok the finite element method.
      Gilbert Strang's explanation of the transition from the
      Galerkin method to FEM did more for me in terms of
      connecting the dots than anything else I could find on the
      web. And it wasn't even a lecture, just a kind of an
      interview. I think it's this one:
      https://youtube.com/watch?v=WwgrAH-IMOk

### Linear Algebra mish-mash!
    - But understanding that a matrix is just the representation
      of a linear transformation in a particular basis is
      probably the most important and first thing you should
      learn about matrices ...
    - ./linear-algebra-notes.txt

### Implement a CAS in scheme / lisp?
    - Norvig creates a common lisp Poly solver:
      - Chapter 15 Symbolic Maths with canonical forms
    - Novig mentions that SICP do it too: Section 2.4.3

### Munkres - Differential Geometry
    - Analysis on Manifolds by Munkres is one of the finest books
      on the subject ever written,it is the subject matter for
      the second semester of Advanced Calculus at MIT .
    - There are also lecture notes by Prof, Victor Guilleman
      which supplement and improve the text:
    - $MY_BOOKS/physics/Maths/Analysis/MIT-Analysis-II-18-101.pdf
    - An alternative which I like: An Introduction to
      Differentiable Manifolds by William Boothby
    - ../geometry/review-diff-geom-boothby.txt

### Spivak: Calculus on Manifolds
    - p. 45: complaint about Leibnitz notation
    - (from SICM video)

### Algebraic Structures
    - $MY_IMAGES/maths/ladder-algebraic-structures.jpg
    - Nice table: https://en.wikipedia.org/wiki/Abelian_group
    - Most algebraic structures are best understood by which
      AXIOMS they satisfy. Eg: basically every subset of axioms
      of an ABELIAN group is useful enough to have a name:
    - Semigroupoid
    - Small Category
    - Groupoid
    - Magma
    - Quasigroup
    - Unital Magma
    - Loop
    - Semigroup
    - Inverse Semigroup
    - Monoid
    - Commutative monoid
    - Group
    - Abelian group


### Wow: Fundamental theorem of Calculus
    - The FTC as presented in undergrad maths is not true in
      general(!)
        - It's only true in cartensian coordinates...
    - We shouldn't really think of the derivative as a "slope"?
        - $MY_IMAGES/maths/wow-misconception-fundamental-theorem-calculus.jpg
    - Better way to think of the FTC:
        - Integral:
            - accumulation of rates-of-change
            - (not area!)
        - Derivative:
            - rate-of-change of an accumulation
            - (not slope!)
        - This way of thinking is not dependent on a coord system
    - See also:
        - ./calculus-alt-view-bibliography.txt

### Linear Algebra
    - Schaum linear algebra: are "coordinates" the same as "components"

### Biology: Codons Confusion
    1. Permutations with Repetition
    - These are the easiest to calculate.
    - When a thing has `n` different types ... we have `n`
      choices each time! So choosing 3 things: `n × n × n`
    - More generally: choosing `r` of something that has `n`
      different types, the permutations are:
        - `n × n × ... (r times)`
        - `n^r`

### coronavirus outbreak
    - 3b1b video
    - A logistic curve is just like an exponeital curve but
      eventually has an inflection point and levels out
    - because you can really have an exponential curve forever
      - it has to level out sometime

### Rings
    - A ring is similar to a group except
        - it has TWO operations representing "addition" and
          "multiplication".
        - A group only has ONE operation.

    - The most common example of a ring is that of the integers
      (`Z`) with addition and multiplication.

    - The majority of 2nd year abstract algebra courses discuss
      isomorphisms, quotient groups, Lagrange's Theorem, Abelian
      groups, orbits and stabilisers. These are all essential
      topics for futher study of abstract algebra including Lie
      groups and Lie algebras.

### ODE's
    - formally, a differential equation is a relationship between
      a function and its derivatives.
    - Informally, they are equations, which describe how rates of
      change of the function, with respect to some other
      quantity, affect the function ITSELF.

### Finite Groups
    - As an example of strangeness in the proportion, I will
      speak briefly about sporadic finite groups (Conway, 1980).
    - Their history begins with the French mathematician Emile
      Mathieu, who discovered the first of them in 1861 and the
      second in 1873. Mathieu, as is usual in such cases, did not
      know that he had invented sporadic groups. In fact the word
      "group" does not appear in the titles of his papers
      (Mathieu, 1861, 1873).
    - But he knew very well that he had found something beautiful
      and important. Using the language of geometry, we may say
      that he had found that there exist in spaces of 12 and 24
      dimensions structures of a peculiar symmetry which do not
      occur in spaces with any number of dimensions different
      from 12 or 24. His work was published, but remained for 100
      years unfashionable.
    - It was, as orthodox mathematicians like to say, an isolated
      curiosity, not leading anywhere. About 75 years later the
      Mathieu groups turned out to be of some practical
      importance in the business of code making.
    - Each Mathieu group forms the basis for the design of
      a uniquely efficient error-correcting code. This mundane
      utility of the Mathieu groups did nothing, of course, to
      raise their status in the eyes of mathematicians whose
      tastes were formed by Bourbaki. Then rather suddenly, in
      the last 20 years, a magnificent zoo of new sporadic groups
      was discovered by a variety of mathematicians working with
      a variety of methods. Some of them were discovered by
      following the ideas of Mathieu, others by studying the
      peculiarly unfashionable problem of packing 24-dimensional
      billiard-balls as tightly as possible into a 24dimensional
      Euclidean space (Leech, 1967), others by testing
      permutations and combinations with big computers.


### Rationale Geometric Algebras
    - It is often neglected that vectors represent 1-dimensional
      subspaces. This is mainly due to the fact that it seems the
      only concept at hand. Hence we abuse vectors to form
      higher-dimensional subspaces.
    - We use them to represent planes by defining normals.
    - We combine them in strange ways to create oriented
      subspaces.
    - Some papers even mention quaternions as vectors on
      a 4-dimensional unit hypersphere.
    - For no apparent reason we have been denying the existence
      of 2-, 3- and higher-dimensional subspaces as simple
      concepts, similar to the vector. Ge- ometric algebra
      introduces these and even defines the operators to perform
      arithmetic with them. Using geometric algebra we can
      finally represent planes as true 2-dimensional subspaces,
      define oriented subspaces, and reveal the true identity of
      quaternions. We can add and subtract subspaces of different
      dimen- sions, and even multiply and divide them, resulting
      in powerful expressions that can express any geometric
      relation or concep

### HN Geometric algebra
    - Geometric algebra and Clifford algebras are technically the
      same thing. The difference is that the term geometric
      algebra is generally used to refer to the work of David
      Hestenes, while Clifford algebra is used in more formal
      settings.

    - David Hestenes is himself a physicist. He did a lot to
      bring Clifford algebras into the main public attention
      (mainly applying it to the study of space-time). He used
      the term "geometric algebra" because it looks like this was
      the term used by Clifford in his work.

    - There is nothing wrong with teaching the cross product,
      some people (me included) just think that teaching about
      exterior (and geometric) products would be more productive.

### rotation symmetry:
    - shape rotates differently depending on the centre point
    - order 2: the shape looks the same twice, as it's 360
      degrees rotated around the centre point

### Trace of an OPERATOR
    - (I never understood this at Lboro)
    - (Its slightly different to the trace of a MATRIX!)
    - Another operator idea having close connections to matrices
      is the trace of an operator, denoted `TrA`. The trace is
      a linear functional on operators
    - The trace turns an outer product into an inner product,
      keeping the bra and ket parts the same.
    - Since any _operator_ can be written as a sum of outer
      products, this property is enough to completely define the
      trace.
    - The trace of an operator is equal to the sum of the
      diagonal components of a matrix representation – which, not
      coincidentally, is also called the "trace" of that matrix

### equation of a circle
    - $MY_IMAGES/maths/mst125/equation-of-circle.jpg
    - really the `r` should come first, it "fixes" the circle
    - key point: the `x` and `y` are the LENGTH of the sides of the
      triangle. I had some notion in my head the `x` and `y` were
      some sort of POINTS. Or it was confused anyway...
    - So the `- a` is kind of: take a side of length `x`, but
      that's too long, jump in as far as `a`
    - Centred on (0, 0): `r^2 = x^2 + y^2`
    - Centred on (a, b): `r^2 = (x - a)^2 + (y - b)^2`

### Congruent:
    - when 2 numbers give the same _REMAINDER_ modulo `n`

### Eigenvectors from Eigenvalues (Tao)
    - https://arxiv.org/abs/1908.03795
    - HN discussion https://news.ycombinator.com/item?id=21542054
    - Michael Nielson:
    - A beautiful fundamental result in linear algebra, giving
      a simple way of expressing the eigenvectors of a matrix in
      terms of the eigenvalues of that matrix and some
      submatrices.
    - Here's the statement. `v_{i,j}` is the j'th entry in the
      (normalized) i'th eigenvector. M_j is the submatrix of
      A obtained by deleting the j'th row and column.
    - I found this a little opaque at first. But it's equivalent
      to the following result, which I find quite a bit easier to
      think about:
    - Suppose A is an n x n matrix with a one-dimensional null
      space spanned by the (normalized) vector v. Then the
      entries of v satisfy: |v_j|^2 = det(M_j) / det(A'), where
      det(A') is the product of the non-zero eigenvalues of A.
    - I'm cheating slightly in using the notation `det(A')`, but
      if you fiddle around a bit it really is the determinant of
      that part of A that's non-null. (I haven't checked all this
      carefully, buyer beware!)
    - What I like about the formula `|v_j|^2 = det(M_j)/det(A')`
      is that you can think of det(M_j) as the factor by which
      M_j expands or contracts space, & similarly for det(A').
    - So the values `|v_j|^2 `have a geometric interpretation as
      comparing the expansion of space by M_j vs the non-null
      part of A.
    - (Again: me thinking aloud, buyer beware - I'm dubious of
      the signs in the above. Twitter perhaps isn't the best
      medium for thinking aloud about mathematics!  Still, it was
      irresistible. I've always found the geometric meaning of
      eigenvector entries mysterious, so this was catnip)
    - The authors note that their proof also gives a somewhat
      more complex formula for the phase of `v_{i,j}`.  It's
      natural to wonder about the case where an eigenspace has
      dimension more than one. Their formula becomes trivial
      then, since the product on the left vanishes....
    - ... but I wonder if there's a nice formula for the
      projector onto the eigenspace.
    - A fun extra fact: if there is a one-dimensional kernel,
      then det(M_j) is a spanning eigenvector!
    - Actually - that's not quite right: there may be phase
      factors that need to be set. But up to those phase factors,
      it's correct, and a very fun fact. I wonder if it's true in
      general, not just for one dimension? If so, it's a great
      fact!
    - Another fun corollary: the normalization of v implies that
      det(A') = \sum_j det(M_j) if there is a one-dimensional
      kernel.
    - I’m glad it’s getting this publicity. I’ve always had the
      vague sense there should be some geometric sense to the
      components of eigenvectors, but didn’t know what it was.
      Now I do!

### OU Physics SM123
    - Histogram: its FREQUENCY along the y-axis! (group project)

### @jakevdp
    - 'Nature abhors an unconditioned probability.'

### math antics - ratios
    - functional skills maths
    - (something /_time_)  is a RATE
    - So dividing by TIME gives you a RATE (never thought of it
      like that)
    - From SM123: Any quantity that changes with _time_ can be
      expressed as a _rate_.

### Riemann Hypothesis
    - Mad way to prove it:
      - Prove that it's _undecidable_!
    - because if it's undecidable then it must be true.
    - Because if it was false, it'd be provably false (!)
    - (Marcus du Sautoy on Youtubes "Numberphile")

### rounding: spurious accuracy
    - round to the same number of SIGNIFICANT figures as the data
      is given to. (to avoid spurious accuracy)
    - (note: its signficant figures not same DECIMAL places)
    - Exception: calculating mean average: go to one more figure.
      - (because ?? Something about birth rate 2.1, 1.9)
    - good practice: put ellipsis after long decimal string:
        - 2.345610...
        - if it was `2.345610` that would imply it's exact

### OU m140 - 4 stages of modelling
    - pose question
    - collect data
    - analyse data
    - interpret data

### paramaterised line segment (convex?)
    - From Terence Tao PCM
    - A path from `a` to `b` can be described (or parametrized)
      as a continuously differentiable function `γ` from the unit
      interval [0, 1] to `ℝ^n` such that
        - γ(0) = a
        - γ(1) = b.
    - Then the line segment from `a` to `b` can be parameterised:
        - γ(t)  = (1-t)a + (t)b
    - So I see it! As `t` increases towards 1, most of the
      "value" of γ(t) shifts towards `b`
      - And this is a bit like the convex parameterisation from
        'Coding the Matrix'
    - Also: line segment from `a` to `b` can be parameterised:
    -  (oct-10-2019: should that be from `b` to `a`??)
        - γ(t)  = (t)a + (1-t)b

### Shifrin - linear algebra
    - comments about shifrin geometric algebra book

    - The ugly: Somehow went through the entire linear algebra
      course with this book without realizing how the dimension
      of a subspace related to the real number space. (??)

    - Previous comments are right about the examples. Instead of
      using the examples to motivate a difficult concept, the
      author may give a generalization of a new topic for an
      `m x n` matrix in R^(mn)

### handy
    Set of all eigenvalues = spectrum of an operator

### Grothendieck: Récoltes et Semailles.  Brilliant.
    - Since then I’ve had the chance, in the world of mathematics
      that bid me welcome, to meet quite a number of people, both
      among my “elders” and among young people who were more
      brilliant, much more ‘gifted’ than I was.
    - I admired the facility with which they picked up, as if at
      play, new ideas, juggling them as if familiar with them
      from the cradle. While myself, I felt clumsy, even oafish,
      wandering painfully up an arduous track, like a dumb ox
      faced with an amorphous mountain of things I had to
      (apparently) learn, things I felt incapable of
      understanding the essentials, or following through to the
      end.
    - Indeed, there was little about me that identified the kind
      of bright student who wins prestigious competitions or
      assimilates almost by sleight of hand, the most forbidding
      subjects.
    - In fact, most of these comrades who I gauged more brilliant
      than I have gone on to become distinguished mathematicians.
      Still from the perspective or thirty or thirty five years,
      I can state that their imprint upon the mathematics of our
      time has not been very profound.
    - They’ve done all things, often beautiful things in
      a context that was already set out before them, which they
      had no inclination to disturb.
    - Without being aware of it, they’ve remained prisoners of
      those invisible and despotic circles which delimit the
      universe of a certain milieu in a given era.
    - To have broken these bounds they would have to rediscover
      in themselves that capability which was their birthright,
      as it was mine: The capacity to be alone.


    - Par la suite, j’ai eu l’occasion, dans ce monde des
      mathématiciens qui m’accueillait, de rencontrer bien des
      gens, aussi bien des aînés que des jeunes gens plus ou
      moins de mon âge, qui visiblement étaient beaucoup plus
      brillants, beaucoup plus "doués" que moi. Je les admirais
      pour la facilité avec laquelle ils apprenaient, comme en se
      jouant, des notions nouvelles, et jonglaient avec comme
      s’ils les connaissaient depuis leur berceau - alors que je
      me sentais lourd et pataud, me frayant un chemin
      péniblement, comme une taupe, à travers une montagne
      informe de choses qu’il était important (m’assurait-on) que
      j’apprenne, et dont je me sentais incapable de saisir les
      tenants et les aboutissants. En fait, je n’avais rien de
      l’étudiant brillant, passant haut la main les concours
      prestigieux, assimilant en un tournemain des programmes
      prohibitifs.
    - La plupart de mes camarades plus brillants sont d’ailleurs
      devenus des mathématiciens compétents et réputés. Pourtant,
      avec le recul de trente ou trente-cinq ans, je vois qu’ils
      n’ont pas laissé sur la mathématique de notre temps une
      empreinte vraiment profonde. Ils ont fait des choses, des
      belles choses parfois, dans un contexte déjà tout fait,
      auquel ils n’auraient pas songé à toucher. Ils sont restés
      prisonniers sans le savoir de ces cercles invisibles et
      impérieux, qui délimitent un Univers dans un milieu et
      à une époque donnée. Pour les franchir, il aurait fallu
      qu’ils retrouvent en eux cette capacité qui était leur
      à leur naissance, tout comme elle était mienne : la
      capacité d’être seul.


### VI Arnold - Maths & Physics
    - Mathematics is a part of physics. Physics is an
      experimental science, a part of natural science.
    - Mathematics is the part of physics where experiments are
      cheap.
    - Funny I moved my Maths folder inside the Physics one
      a while ago :)


### Principle Mathematical Induction (PMI)
    - PMI can only prove a given conjecture for you.
    - It can't actually come up with the conjecture in the first
      place.

### Involute
    - An involute (aka evolvent) is a particular curve that is
      dependent on another shape or curve.
    - Its the path taken by the end of an idealized string as
      it wraps (or unwraps) around a curve.

    - Involute curves are described using the differential
      geometry of curves, and are obtained from another
      curve by 2 methods

        1. By attaching an imaginary taut string to the given
           curve and tracing its free end as it is wound onto
           that given curve; or in reverse, unwound.

        2. By a line segment that is tangent to the curve on one
           end, while the other end traces out the involute.
           - The length of the line segment is changed by an
             amount equal to the arc length traversed by the
             tangent point as it moves along the curve.

### Mathematics Content Meaning
    - Read: “There is a very close link between closed and open
      sets, they are complements of each other.
        - Because of this it is sufficient to study either closed
          or open sets only (p.23).
    - Read: “it was in the framework of projective geometry that
      Lobachevsky's non-Euclidean geometry was completely
      understood for the first time .” (p.200).
    - “A considerable number of the theorems in the theory of
      groups and of rings, are statements on the arrangement of
      subgroups, normal subgroups and ideals;
        - consequently, these theorems can be reformulated as
          theorems on the lattice of subgroups or ideals.” (p.
          349). Beautiful!

### Question:
    - Whats the Difference between a function and a density function

### Level curve
    - like where you freeze the slice when doing a partial diff equation

### Random comment: Complex Analysis
    - I'd like to see a few more connections with multivariable
      analysis in the real domain e.g., what is at the root of
      the difference between a complex analytic function and
      a differentiable or even smooth function of two real
      variables?
    - How exactly are we slipping a potential rabbit in the
      complex differentiable hat?

### Matrix Diagonalisation
    - great courses linear algebra:
    - diagnonal is having a basis of eigen vectors

### Form Maclane: linear
    - To say an effect is "linear" means the effect respects
      proportions
    - and the effect of a sum, is the sum of the separate
      effects.

### Curry (reviewing Needham Complex Analysis)
    - The Cauchy-Riemann equations define what is meant by
      a holomorphic function.
    - Restricting to these particularly pleasant and useful
      functions, the formalism of calculus looks very much like
      ordinary calculus.
    - Too many students muddle through complex analysis with the
      notion that it looks like calculus, except some extra nice
      functions also hold. Such students commonly become
      competent, but they seldom actually get good at complex
      analysis.


### Operator Algebras
    - Before the beauty and symmetries in operator algebras
      became a focus in current research, operators were often
      explored as a wonderful way to grasp linear algebra and
      vector spaces more intuitively.

    - Of course the calculus OPERATORS of `grad`, `div`, `rad`,
      `curl`, `differentiate`, `integrate` and their twin cousins
      in analysis using functionals and functions extend beyond
      the current algebra research focus to geometry, Laplacians,
      Fourier and many other transforms, probability theory, and
      nearly every other area of math.


### Robert Ghrist - Applied Topology
    - https://news.ycombinator.com/item?id=19494562
    - Manifolds are an extension of the familiar Calculus domains
      of curves and surfaces to higher-dimensional sesttings.
    - The standard tools of multi-variate calculus - the Inverse
      and Implicit function theorems - lift to manifolds and
      allow a simple way of producing interesting examples...

### One way to think of eigenvectors:
    - eigenvalues/eigenvectors tell you the core properties of
      a transformation
    - Your linear map `A` moves things around, and you aim to
      CHARACTERISE the linear map.
    - So, look for lines (_through the origin_) that are not
      moved. Those are given by eigenvectors.
    - A _point_ on that line might be moved closer to or further
      away from the origin (depends on eigenvalue < or > 1), or
      even flipped to the other side (if eigenvalue < 0), but the
      line as a whole is mapped to itself.

### what is multiplication
    - Context: positive whole numbers, its repeated addition.
    - But context of positive and negative whole numbers,
      I personally don’t know what it is, other than
      a mathematically consistent operation set such that if `a`
      and `b` are positive whole numbers, then:
    - `a × (−b) = −ab`
    - and with the logical consequences:
    - `(−a) × b = −ab`
    - `b × (−a) = −ab`
    - and
    - `(−a) × (−b) = ab`

### double-angle formulas: intuition
    - all trig function formulas stem from one basic fact:
    - the _addition theorem_ ("law of exponents") for the
      exponential function
        - `e^(z1 + z2) = e^z1 • e^z2`
    - (valid for real and complex exponents)
    - April 2019: LCTTA twitter comment!
        - "Is it true that all trig identities can be derived
          using Euler’s formula? #iteachmath"

### matrices
    - Certain linear transformations can be represented by an
      array of numbers called a matrix
    - The advantage of representing a linear transformation this
      way is we can calculate the image of any point in
      a completely automatic routine way
    - NOTE THIS:
        - The columns of a 2x2 matrix are the images of the basis
          vectors: (!!!)
        ```
            (1)    (0)
            (0)    (1)
        ```

### matrices
    - What makes matrices good? Theyre not just a number array
    - what make them useful is the _matrix algebra_ that comes
      with it... (a non-commutative algebra)
    - and interesting properties like trace and determinant
    - However there are some problems:
        - matrices are big (e.g. 16 x 16 matrix)
        - matrices do not commute
        - we work with things that CANT be represented by
          matrices (so sometimes we need index notation e.g. GR)

### real-valued or vector-valued function
    - A function whose domain is a subset "U" of `R^m`, and whose
      range is contained in `R^n` is called:
    - a "real-valued" function of `m` variables
        - if _n = 1_
    - a "vector-valued" function of `m` variables
        - if _n > 1_
    - A vector-valued function maps real numbers to vectors.


### matrix multiplication
    is automatically associative

### groups
    if you relax one of the requirements for groups (maybe
    closure) you get a "groupoid"

### Fourier
    - Before that, Kate Storey-Fisher (NYU) and I had
      a conversation where we re-discovered our confusions
      about the differences between the continuous Fourier
      transform (which _never exists_ in any real-data context)
      and the discrete Fourier transform (which is what's
      appropriate when the data is treated as a patch of
      a periodic function. We got confused and then un-confused,
      but I am still somewhat confused!

### curry maths
    - cartesian product `R^2`
    - so that's where you get the "power of 2" thing from

### differental forms
    - See file: $MY_NOTES/maths/analysis/differential-forms.txt
    - Good book: Visual Introduction to Differential Forms and
      Calculus on Manifolds  (Fortney)
        - $MY_NOTES/maths/analysis/Fortney-visual-forms.txt
        - https://www.amazon.com/Visual-Introduction-Differential-Calculus-Manifolds/dp/3319969919

### Jim Holt: Mandelbrot
    - Zipf’s law, which holds for all languages, may seem trite,
      but the same principle is valid for many phenomena,
      including the size of islands, populations of cities,
      amount of time a book spends on the bestseller list, number
      of links to a given website, and as Italian economist
      Pareto discovered in the 1890s, a country’s distribution of
      income and wealth.
    - All these are “power law” distributions. (“power” refers
      not to politics or electricity but to the mathematical
      exponent that determines the exact distribution shape)
    - In nature or society, power laws apply where there is
      _extreme inequality_ or unevenness:
        - where a high peak (representing a handful of huge
          cities, or frequently used words etc) is followed by
          a low "_long tail_" (representing a multitude of small
          towns, or rare words etc).
    - In such cases, the notion of AVERAGE is meaningless.
    - Mandelbrot absorbed Zipf’s law on a Métro ride home. “In
      one of the very few clear-cut eureka moments of my life,”
        > I saw they might be deeply linked to information theory
        > and hence to statistical thermodynamics and became
        > hooked on power law distributions for life.
    - He proceeded with his PhD on Zipf’s law. Neither his
      uncle Szolem nor his dissertation committee (headed by
      Louis de Broglie!) heeded his effort to explain the
      significance of power laws, and for a long time Mandelbrot
      was the only mathematician to take such laws seriously.
    - That's why, when their importance was finally appreciated,
      he became known as the 'father of long tails'.

### Wildberger Bivector
    - THE WEDGE!!!!!
    - invented by Grassman
    - a single vector is a _directed_ LINE segment
    - a bivector is a directed _PLANE_ segment
        - made up of two vectors, (a ∧ b)

### surjective injective

    ###  SURJECTIVE -> "ONTO"
        - Its where the "image" of F (or the "range" of F) is equal
          to the co-domain of F. Me: why is it called the
          co-domain? and not the domain?

        - `image = co-domain`
        - ie everything gets covered!

        - f: X → Y
            - For **every** y ∈ Y
            - there exists an x ∈ X such that `f(x) = y`

        - im(f) = Y
        - [or the range(f) = Y, for those people who say image=range!]
        - ie everything in Y gets covered!
        - `X           Y`
        - `1   ---->   a`
        - `2   ---->   b`
        - `3   ---->   c`
        - `4   ---->   d`
        - `5   ---->   d`
        - Everything in Y is covered by one (or more) elements of X


    ### INJECTIVE -> "ONE-TO-ONE"
        - Any `y` is mapped to by AT MOST one `x`.

        - `f: X → Y`
            - for any `y E Y` there is
            - _at most_ one `x E X`
            - such that `f(x) = y`.

        - There might be some y's that aren't mapped to at all.
          (ie an injective function doesnt have to be surjective
          aswell)

        - The example above with the X and Y sets is NOT
          injective because both `f(4)` and `f(5)` map to `d`


### newtons approximation
    - `(1+x)^a = 1 + ax...`
    - approx.. valid when `|ax| = 1` approx

    - when used in physics
        - well consider (A + B)^a
        - if B << A then rewrite as [A(1 + B/A)^a]
        - and using newtons approximation
        - A^a(1 + aB/A)
        - multiply out and you can parameterise how different the
          answer is from A^a

### commutative group
    - In abstract algebra, a commutative group is where the
      result of applying the group operation to 2 group elements
      does not depend on their _order_ (its commutative).
    - also called: ABELIAN group
    - Abelian groups generalize integer arithmetic addition

### analytic function:
    - smooth functions, things that can be differentiated
    - (any analytic function is infinitely differentiable)

### Topology (Maudlin Foundation book)
    - The following separation properties prove the most useful.
      As usual, they are generalisations of metric space
      properties...

    - Also they rule out a number of unpleasant possibilities we
      encountered earlier.

    - For instance, one of them, the Hausdorff or `T2` property, is
      designed to make _limits of sequences unique_. That is, to
      ensure that a given sequence has at most one limit.
      (Gamelin and Greene, 1999, p. 73)

    - Also key Maudlin rightism of Topology: the open set (a
      primitive) is relational and extrinsic to a set rather than
      INTRINSIC.

    - The open set depends on more that the internal geometrical
      relations among the points of the set. Openness is also
      a matter of how that set is embedded in a larger space.

### level curves (Bachman)
    - The next easiest thing is to sketch some level curves.
    - These are just the intersection of the graph with
      _horizontal planes_ at various heights.

### linear algebra
    - Linear algebra is all about adding things together in
      various proportions.
    - Specifically its about adding objects of the same kind
      together, in such a way that the result is another object
      of the same kind.

### differential equations
    - I'm not sure how well it would fit as a first course, but
      the thing that really helped me understand what's behind
      differential equations is Steven Strogatz's wonderful book
      "Nonlinear Dynamics And Chaos"
      https://www.amazon.co.uk/Nonlinear-Dynamics-Chaos-Studies-Nonlinearity/dp/0813349109

### FFT
    - The very first thing I learned with FFTs is to carefully
      choose the window function, as the window function will
      influence the output.

    - If you do “not choose” a window function, you use
      a rectangular window, which in many (most?) cases is the
      worst choice – as for example it handles the discontinuity
      at the windows edges the worst of all window functions.

    - So I find it interesting when I see people happily using
      the FFT, but then they are totally oblivious to the
      selection of a window function – “look ma, no hands!” comes
      to my mind.
    - It makes me sad every time I see a FFT being used for the
      search of spurious signals (that may or may not be there),
      and then people do not discuss the selection of the window
      function, indicating that they might know little about the
      tools they so casually use.

### planet sympy
    see. python math review

### eigenvectors
    - usually equal to the _dimension_ of the matrix
    - `3 x 3` matrix has 3 eigenvectors

### two different eigenvalues
    - immediately conclude that the eigenvectors are
      orthogonal to each other

### "deepest fact known about the integers"
    - SUM (function value at a given integer)
    - equal to
    - SUM (value of fourier transform at a given integer)
    - `∑_-∞^∞ φ(k) = ∑_-∞^∞ δ φ(k)`
    - you shouldnt expect any special relationship between how
      big `φ` is at 5, and how big the fourier transform `δ` is
      at 5.
    - note: its the _SUM_!!!
    - aside: punchline: the fourier transformation of the `III`
      function = `III` (entirely equivalent to the poisson
      summation forumula)

### Delta function
    - is the simplest distribution,
    - its the _evaluation_ distribution
    - 24-Apr-20 Fri: I found a good explanation of Dirac
      ∆ somewhere recently?

### brad osgood - periodisation
    - a periodisation is the sum of _shifted versions_ of
      the function
    - I can shift a function by convolving with a shifted
      delta function

### average speed problems:
    - not the average of the speeds!
    - i.e. don't add and divide by 2
    - `average speed = (total distance) / (total time)`

### What is a group
    - ... we start off not with a group, but with the concept of
      a: _transformation_ (a one-to-one mapping of a set onto
      itself) as it was historically ...

### BERLIN INSIGHT: coding the matrix
    - all that convex and affine combinations of vectors stuff:
      it all started by multiplying a single vector by a single
      scalar. But you could multiply a vector by many different
      scalars. If you multiplied it by an infinity of scalars
      you'd get the complete line running through that vector.

    - Along with an infinity of scalars, there was the idea of
      translating or shifting a vector to another place. (By
      adding a vector to it).

    - But that shift looked a bit ungainly at first. It wasn't
      symmetric wrt the end points of the vector. So it was
      rewritten with `α` and `β` to form a convex combination
      `(if α, β > 0)`
    - or otherwise an affine hull for any values of `α` and `β`.

### viktor blasjo - geometry pdf
    - A square is the rectangle with the largest area!
    - (also: geometric figure with maximum area and given
      perimeter is a circle)

### functionals
    - I got it!
    - `S[y]` is the functional of all _FUNCTIONS_ `y`
    - (eg all functions that satisfy y(0) = 0, y(1) = 1)

### Insight - Linear combinations
    - Are just like the definition of the DOT product!!!!
    - May 2022: hmmm maybe not... dot product is when components
      are multiplied together and added. But linear combination
      has components AND basis vectors added together.

### Sage discussion - Certs
    - A related, and mathematically quite important feature, is
      "certificates": that a function returns a certificate with
      its output , a "proof" that the output is really correct.

    - For instance, if I call `M.rank()` on a matrix `M`. How do
      I know that the output `5` is correct? It would be nice to
      have a proof I could check, possibly in a probabilistic
      way, and preferably much faster than the rank computation
      itself, to be certain that `5` is indeed the rank of `M`.

    - Making fast algorithms that also output certificates is an
      active area of research and would be cool for Sage.

### euler
    - `z = e^{θi}`
    - is the point on the unit circle with argument _θ_
    - if `z=1` so what is Θ??

### linear combination
    - insight: linear combination is just another way of writing
      the _dot product_!!!
    - (July 2019: think this ties in some way to 3Blue1Brown and his video on
      the dot product)

### ehere functional analysis (french coursera)
    - functional analysis transforms the task of solving a _PDE_
      into the task of solving a _linear system_

### matrix OVER a field
    - This just means the entries of the matrix belong to
      a particular field.

### numeric v symbolic computation
    - numeric systems can only give you an integral at
      a particular POINT

### french set theory guy
    - The notion of vector can be formally defined as being
      another name for a _TRANSLATION_.

    - We may define the translation concept as:
        - a _transformation_ `f` is a translation if

        - for any 2 points `A` and `D`, the segments `[A f(D)]`
          and `[f(A) D]` have the same middle `I`.

        - For any points `A` and `B` there exists one and only
          one translation that sends `A` to `B`:
            - for any `D`, `f(D)` is the only point `C` that
              completes the parallelogram, such that `[AC]` and
              `[BD]` have the same middle.

        - So the points A, B, C, D are the vertices of
          a parallelogram if they are not aligned, and their
          configuration forms a squashed parallelogram if they are
          aligned.

            A————D
        /            /
      /       I     /
    /              /
    f(A)———f(D)

    - The action of a TRANSLATION on a point is denoted as an
      "addition" between the point and the vector: `B = v + A`
      (because in any coordinate system it is computed by an
      addition for each coordinate)
        - each coordinate of `B` is the sum of that coordinate
          for `A` with the corresponding component of `v`).
        - For any two points `A` and `B`, we define the vector `v
          = ÃB` as the only translation that sends `A` to `B`
          (i.e. such that `B = v + A`).
        - In the case of Euclidean plane geometry, it is usually
          drawn by an arrow from A to B. We might also write
          \scriptstyle \overrightarrow{AB} = B−A

    - The application of a vector `ÃB` to another point `D`, that
      is `C = ÃB + D`, is such that they form a parallelogram as
      described above.
    - As this vector is also the only translation that sends `D`
      to `C`, the arrow from `D` to `C` is another representation
      of the same vector.

    - The set of translations forms a GROUP.
    - The identity element is called the zero vector.

    > We define the addition of vectors to mean the COMPOSITION
    > OF TRANSLATIONS.

    - We have an operation of multiplication of a vector `v` by
      a real number `a`, which gives another vector:
        - the one that moves in the same direction, `a` times
          further (thus, in the opposite way if `a` is negative).

    - Multiplying a vector by `-1` gives its opposite (in the
      language of vectors), that is its inverse as a bijection
      (and as the inverse element in the group of vectors).

    - Denoting `V` the set of vectors, these operations satisfy
      the axioms of VECTOR SPACES:

### "square" and "cube"
    - The Pythagoreans believed _matter_ is actually composed of
      _numbers_. They got this from the way they represented
      squared and cubed numbers.

    - Thus, a "square" number such as `9` was represented
      by:
        - . . .
        - . . .
        - . . .

    - The cube number `27` was then formed by placing 3
      such squares on top of each other.

    - Our words "square" and "cube" come from this Pythagorean
      notion, according to which all bodies could be built up in
      this way.

### if a matrix is invertible
    - all its rows are linearly independent
    - (and all its columns too?)

### graphs
    - nodes, vertices = the dots, points! (where the edges TURN?)
    - edges           = the connecting lines (sharp)

    - _vertex_ (noun):
        - Latin: originally meaning 'whirl, eddy, vortex'
          (actually 'vortex' is a mistaken spelling of vertex).
        - The noun is from the Latin verb _vertere_ 'to turn.'
        - Indo-European root is _wer-_ 'to turn, to bend.'
          English cognates: wrist and wrestle.
        - Borrowing from Latin is vertigo, 'a turning, dizzy
          feeling.'
        - Even in Roman times Latin _vertex_ came to mean 'the
          pivot point of the heavens,' 'the top of a person's
          head,' and 'that which is in the highest place.'
        - In Maths the vertex is the highest (or lowest) point on
          a curve or polygon because that's the place where the
          curve or polygon _turns_ to go back down (or up).
        - In _calculus_, the derivative 'turns' from positive to
          negative when a point moving on a curve crosses through
          a vertex of that curve.

    - _edge_ (noun):
        - native English, spelled 'ecg' in Old En-     glish.
        - Indo-European root is ak- "sharp."
        - Other English cognates include ear (as in an ear of
          corn) and hammer.
        - Borrowings from Latin include 'acumen' and 'eager'
          (keen to do something).
        - From Greek comes the prefix _oxy-_ referring to acid (a
          Latin cognate), which is "sharp."
        - In geometry, an edge of a  polyhedron is a place where
          two faces make a "sharp ridge."


### HOMOGENEOUS equations
    - all homogeneous equations go through the origin!
    - e.g. `x + y = 0`
    - set x = 0, y = 0: the equation is satisfied.
    - homogeneous: Greek: from 'homo' (pre-historic somo-)
      'same,' from Indo-European root sem- 'one.'
    - English cognate is same; when things are the same, they are
      all of one type. Second element is from genos 'kind,' from
      Indo-European root gen 'born,' 'created.'
    - In physics, if an object is homogeneous, all its matter has
      'the same kind of' (i.e., equal) density.
    - In linear algebra, if a system of linear equations is
      homogeneous, the CONSTANT ON ONE SIDE OF EACH EQUATION is
      always the same, namely 0.
        - Although in nonmathematical English the opposite of
          homogeneous is heterogeneous, a system of linear
          equations that isn't homogeneous is 'nonhomogeneous'
          rather than heterogeneous.


### convex hull
    - a convex hull is a linear combination with
        - the coefficients summing to 1
        - and the coefficients are _non-negative_
    - so a convex jull is just a special type of linear
      combination!
    - Convex hull: (2021)
        - the smallest polygon that covers all the points in the
          given set.
    - Application:
        - Farthest pair problem, shortest Path across the
          boundary.

### convex hull
    - great video -> marked in pinboard
        - 6. Explain Convex Hull Algorithm - YouTube  https://www.youtube.com/watch?v=0HZaRu5IupM
        - (Extra: from coding the matrix)
    - Graham scan

### notation
    - matrix matrix multiplication has _no star_ in the middle:
    - `AB`

    - matrix vector multiplication has a star
    - `A*v`

### remember
    - "null space" applies to matrices
    - "kernel"     applies to functions
        - The Kernel of a function is the set of points that the
          function sends to 0.
        - We call it the Kernel because this set of vectors maps
          to the _origin_, or core, of the output space.
        - You can think of the Kernel as a quick way to see how
          the function compresses or loses information.
        - Amazingly, once we know this set, we can immediately
          characterize how the matrix (or linear function) maps
          its inputs to its outputs.

### ill-conditioned matrix
    - huge disparity between entries in the matrix 'A'
    - e.g. A[0,1] = 1e20
    - e.g. A[0,2] = 0.001
    - `Ax = b`

### linear functions!
    - "linear function" refers to _two_ distinct, but related,
      ideas:

    * In calculus etc, a linear function is a _polynomial
      function_ of degree zero or one, or is the zero polynomial.

    * In linear algebra & functional analysis, a linear function
      is a _linear map_.

    - linear: "the effects are always directly proportional to
      their causes" Smolin

### linear - kalid
    - In Linear algebra terms, an operation `F` is linear if
    1. scaling inputs scales the output
        - `F(ax)    = a F(x)`
    2. adding inputs adds the outputs:
        - `F(x + y) = F(x) + F(y)`
    - Exponents (F(x) = x^2) aren’t predictable:
        - 10^2 = 100
        - 20^2 = 400
        - We _doubled_ the input but _quadrupled_ the output.

### "linear" - 25 steps book
    - The key to linear Algebra from which everything else
      follows:

    - ADDITIVITY: L(u + w) = L(u) + L(w)
            kalid: adding inputs, adds the outputs

    - HOMOGENEITY L(cU) = cL(u)
            kalid: scale input, scales the output

    - Note: most functions (of vectors) do not obey
      these requirements . For example:
            ```
            f(x)        = x^2
            f(1 + 1)    = 4
            f(1) + f(1) = 2
            ```

    - At its heart, Linear Algebra is the study of functions
      that _do_ obey these requirements.

    - Together additivity and homogeneity are called 'linearity'.
      Other names for linear functions are:
        * Linear operator
        * Homomorphism
        * Linear map
        * Linear transformation

### digital representation - audio segment
    - the signal is _sampled_ at many different moments
    - so the signal is a bunch of numbers

### Coding the matrix: **KEY-IDEA**
    - link between affine spaces and equation solution set
    - A PLANE can be expressed in an affine way:
        - way 1:
            1. ū + _V_                        <---- where 'V' is a vector space
            2. ū1 + Span {ū2 - ū1, ū3 - ū1}   <---- not very elegant
            3. _α_ū1 + _β_ū2 + _γ_ū3          <---- affine combination (nicer)
               where `α + β + γ = 1`
                -  2021: find out how this was derived

        - way 2:
            - affine hull of (ū1, ū2, ..., ūn)
            - The hull is the set of _all_ affine combinations.

    - or more usual way for a plane:
        * solution set of `ax + by + cz = d`
        * or in vector terms { [x,y,z]: [a,b,c]∙[x,y,z] = d}

    - Therefore:
                               _implies_
        (AFFINE SPACE)     -------------->       (SOLUTION SET OF EQUATION)

    - Conjecture:
        - Any geometric object (point, line, plane..) can be
          expressed as the solution set of a system of linear
          equations.

    - key question:
        - Conversely, are these solutions sets of geometric
          objects _always an affine space_?

                                           _implies???_
        (SOLUTION SET OF EQUATION)       -------------->      (AFFINE SPACE)

    - first answer:
        - well a contradictory system of equations:
        - `1x = 1`
        - `2x = 1`
        - has an empty solution set `{}`

        - but the affine space is _never empty_!
            - (affine spaces in the form `ū + 'V'` always have
              the zero vector)
        - So a contradiction!
            - It looks like this conjecture breaks down, because
              of this exception...
        - BUT !! Its the _only_ exception.
            - Its the only time the solution set of a system of
              linear equations _isnt_ an affine space.

    - THEOREM:
        - Solution set of linear system of equations is either:
            1. _empty_ (like contradictory system above)
            2. an AFFINE SPACE!

    - NUMBER of linear system solutions
        - Can we tell how many solutions a linear system has?
        - Well if `ū1` is one solution to a linear system then:
            - {linear system solutions} = `{ū + v: v ∈ V}`
                - where the vector space `V` is the set of
                  solutions to the corresponding HOMOGENEOUS
                  linear system

        - So now `V` is the key!
            - july 2019:
                - See the LBORO kernel lesson! (TONY CROFT)
                - $MY_BOOKS/scans/maths/lboro_differential_kernel.pdf
            - June 2021: See Dhruv Function Kernels!
                - $MY_BOOKS/Physics/Maths/Visual-Intro-Function-Kernels.pdf

        - `ū1` is the UNIQUE solution to a linear system, if the
          _only_ solution to the corresponding homogeneous linear
          system is the _zero vector_.
            - ie if the kernel of ..... is only the zero vector?
            - 2021: ie the kernel is empty? the kernel is the
              zero vector?


### exclusive or (XOR)
    A   B   output
    0   0   0
    0   1   1  (true)
    1   0   1  (true)
    1   1   0

    - XOR represents the _inequality_ function,
    - i.e., the output is true if the inputs are not alike
      otherwise the output is false.
    - A way to remember XOR is "one or the other but not both".

### Remember
    - {ASSOCIATIVE} is different to {DISTRIBUTIVE}!
    - 2021: and which is commutative? must get these definitions
    - 2023: associative has to do with "grouping"
        - (tip: who do you "associate" with)
        - Is `a + (b + c)  =  (a + b) + c`    ???

### rectify
    - ... when a section of a curve is "rectifiable", it is
      capable of being made _straight_ or straightened out.
    - In other words, its exact _length_ can be found.
    - So an advantage of straightening something out is you can
      measure its length!
    * note 1: rectifying plane = binormal plane
    * note 2: but Riemann was able to measure with a "tailers
      tape" rather than a rigid body??

### NON-singular (Heffernon Sage linear algebra)
    - ... the matrix `M` on the left is non-singular because
        - it is square
        - and because Gauss's method produces echelon forms where
          each of `M`'s columns has a leading variable...
    - question: all square matrices are non-singular??

### Lanczos
    - like keepin the book of Job...(!) lanczos thinks that if
      all maths books were thrown out save one, then the book of
      _fourier analysis_ should be kept.

    - It is an orthogonal set of functions and the "zeros" are
      evenly distributed. and we space out observations
      equi-distantly, so for equi-distant curve fitting there is
      nothing else that can compete. Fourier is automatically
      orthogonal with respect to equi-distant spacing.

    - ..."60% of what we need in physics is somehow the
      hyper-geometric series (Gauss)" why just this F (X, \alpha,
      \beta, \gamma)

### Lanczos
    - non-orthogonal properties of power series
    - power series - can leave out any number of powers,
    - not like an orthogonal series where each one is neccessary
    - chebeshev polynomials - telescoping series
    - strongly convergent power series - much reduced error term
      in a series expansion

### number theory
    - Algebraic Number theory: answers given by EXACT FORMULAS
    - Analytic  Number theory: answers given by GOOD APPROXIMATIONS

### set theory v category theory
    - From a logic standpoint these are instances of a first
      order theory:

    * _set theory_ deals with sets and the membership
      relation between them.

    * _category theory_ speaks of objects and morphisms (or
      arrows).

    - Of course, there is no principle difference between the
      atomic formulas (a ∈ b) and (a → b).

    - However, the precipice in meaning is abysmal between the
      two concepts that are formalized by the two atomic
      formulas.

    - The stationary universe of Zermelo-Fraenkel, cluttered up
      with uncountably many copies of equipollent sets confronts
      the free world of categories, ensembles of arbitrary nature
      that are determined by the dynamics of their
      transformations.

### transcendental curves
    - See also: $MY_NOTES/maths/transcendental-curves.txt
    - ... calculus made it possible to study _non-algebraic_
      curves: the _mechanical_ curves, or _transcendental_ curves
      as we now call them.
    - Calculus computes their basic features, like tangents and
      area, but also sophisticated properties like curvature.
    - Curvature turns out to be a fundamental concept of
      geometry, not only for curves, but also for
      higher-dimensional objects.

### determinant versus derivative
    - there’s no "natural" way to interpret the value of the
      determinant (analogous to the interpretation of derivatives
      as the _SLOPE_ of the tangent line.)
        - (I thought the derivative was the _ACTUAL_ tangent
          line, not the slope of it)
        - April 2020: need to fully understand derivatives...
        - March 2021: came back to slopes, tans again with
          sicmutils... (see above)

### radius
    - the radius of a circle is always _perpendicular_ to
      a tangent line

### sine function
    - sine changes its _speed_
    - sine is height above ground as you travel in a circle

### Log, Taylor
    - The historical path is often more sensible than modern
      textbooks, as we see in many cases:
    - the logarithm should be understood as the area under the
      hyperbola `y = 1/x`.
        - 2021: 3Blue1brown: `1/x` is a way of 'rescaling' the
          area under a graph so hit has area = 1 (?)
    - Taylor series should be understood in terms of the
      Gregory-Newton interpolation formula, etc.

### Comments from Dynamical Systems course:
    - matrix indices: `A_output,input`
    - lower triangular matrix means "cause"

### Square roots
    - sqrt(x^2) not equal to x!
    - sqrt(x^2) = `-x` or `x`
    - sqrt(x^2) = |x|  <--- ???
        - 2023: ah `|x|` is `-x` or `x`

### 3 common pythagorean trig identities
    - sin(x)^2 + cos(x)^2 = 1
    - tan(x)^2 + SEC(x)^2 = 1
    - cot(x)^2 + csc(x)^2 = 1

### matrix
    - positive definite:
        - trace > 0
    - positive semi-definite:
        - trace >= 0

### Hacker News learn maths:
    - Prof. Leonard https://www.youtube.com/user/professorleonard57/playlists
    - Prof RobBob   https://www.youtube.com/user/profrobbob/playlists
    - Chris Tisdell https://www.youtube.com/user/DrChrisTisdell/playlists


### handy links / papers
    - History of the Monte Carlo method                                         https://news.ycombinator.com/item?id=17239599
    - Eigenvectors and Eigenvalues - and list of MATHS SITES!                   https://news.ycombinator.com/item?id=17073724
    - Probability Theory for scientists                                         https://news.ycombinator.com/item?id=16841747
    - 3b1b linear algebra course                                                https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab
    - Mathematicians are confused                                               https://news.ycombinator.com/item?id=11874526
    - Abbott, “Understanding analysis”                                          https://www.amazon.co.uk/Understanding-Analysis-Undergraduate-Texts-Mathematics/dp/1493927116
    - Lara Alcock’s book “How to think about analysis”                          https://www.amazon.co.uk/Think-About-Analysis-Lara-Alcock/dp/0198723539
    - Number systems of the world sorted by complexity                          https://news.ycombinator.com/item?id=16647716
    - Awesome stats software                                                    https://github.com/SNStatComp/awesome-official-statistics-software
    - exterior algebra                                                          https://news.ycombinator.com/item?id=15727516
    - linear algebra                                                            https://news.ycombinator.com/item?id=15946026
    - how to fix statistics                                                     https://news.ycombinator.com/item?id=15822601
    - a field guide to lies and statistics
    - Data analysis recipes: Probability calculus for inference (Hogg)          https://arxiv.org/abs/1205.4446
    - Confirmation via Analogue Simulation: A Bayesian Analysis.                http://arxiv.org/abs/1604.05932
    - Beer Consumption Human Attractiveness Malaria Mosquitoes                  http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0009546
    - Statistics without the Pain: Strata: John Rauser (alcohol, mosquitoes)    https://www.youtube.com/watch?v=5Dnw46eC-0o
    - Jake Vanderplas - Statistics for Hackers                                  https://www.youtube.com/watch?v=Iq9DzN6mvYA
    - Fonnesbeck statistical thinking data science                              https://www.youtube.com/watch?v=TGGGDpb04Yc&list=PLjbPOnKrn-XQc4rzWvuiDRg_v5FZCfYQN
    - MathTheBeautiful                                                          https://www.youtube.com/channel/UCr22xikWUK2yUW4YxOKXclQ/playlists
    - missing data missingno:                                                   https://github.com/ResidentMario/missingno
    - fancyimpute:                                                              https://github.com/hammerlab/fancyimpute
    - PyMC:                                                                     http://stronginference.com/missing-data-imputation.html
    - null and missing python data                                              http://www.residentmar.io/2016/06/12/null-and-missing-data-python.html
    - Bayesian Modeling & Probabilistic Machine Learning with Theano            https://github.com/pymc-devs/pymc3
    - Python/PyMC3 for Kruschke's bayesian data analysis                        https://github.com/aloctavodia/Doing_bayesian_data_analysis
    - Preptorial recommends! Inferential Statistics                             https://www.amazon.com/Inferential-Statistics-DR-Vandana-Bagla-ebook/dp/B079ZXQ8W8/ref=cm_cr_othr_d_product_top?ie=UTF8
    - lady tasting tea stats course                                             https://www.youtube.com/playlist?list=PL3mgQkf_Z3RnBQPgP074-xkrgRi7k2jm2
    - laff - linear algebra foundations to frontiers                            https://github.com/ULAFF/notebooks
    - Turkey's 'Mathematics Village': Changing education one equation at a time https://news.ycombinator.com/item?id=17348616
    - Hilary Putnam gave to a 1979 paper: “Philosophy of Mathematics: Why Nothing Works.”
    - Jim Holt: When Einstein Walked with Gödel: Essay: Avators of Higher Mathematics (explanation of Catagory theory)
    - partial fractions decomposition                                           https://news.ycombinator.com/item?id=17789508
    - history imaginary numbers                                                 https://news.ycombinator.com/item?id=17722790
    - Mathematicians are chronically lost and confused                          https://news.ycombinator.com/item?id=11874526
    - inferential statistics bagla (preptorial recommends)                      https://www.amazon.co.uk/Inferential-Statistics-DR-Vandana-Bagla-ebook/dp/B079ZXQ8W8/ref=sr_1_1?ie=UTF8&qid=1540588680&sr=8-1&keywords=inferential+statistics+bagla#reader_B079ZXQ8W8
    - quarterions                                                               https://news.ycombinator.com/item?id=18365433
    - differential form                                                         https://math.stackexchange.com/questions/664648/what-does-dx-mean-in-differential-form
    - Langlands - The practice of Mathematics                                   https://video.ias.edu/The-Practice-of-Mathematics
    - basic stats                                                               http://www.resourceaholic.com/p/statistics.html
    - illustrated number theory                                                 https://news.ycombinator.com/item?id=18692447
    - online maths degrees                                                      https://news.ycombinator.com/item?id=18844420
    - Four types of variance                                                    https://news.ycombinator.com/item?id=18893983
    - Self study undergrad maths                                                https://news.ycombinator.com/item?id=18939913
    - Good. Chatterjee Statistical Thought                                      https://www.amazon.com/Statistical-Thought-Perspective-History-Mathematics/dp/0198525311
    - Axler: Linear Algebra done right videos                                   http://linear.axler.net/LADRvideos.html
    - Statistics done wrong                                                     https://news.ycombinator.com/item?id=19038374
    - Birds eye overview of Maths                                               https://news.ycombinator.com/item?id=19039525
    - Terrance Tao Maths Quiz                                                   http://scherk.pbworks.com/w/page/14864181/FrontPage
    - Immersive linear algebra, and maths resource tips                         https://news.ycombinator.com/item?id=19264048
    - convolution (this book is good too)                                       http://www.dspguide.com/ch6.htm
    - eigenvectors intuitive derivation                                         https://news.ycombinator.com/item?id=19349858
    - Geometric Algebra software                                                https://ga-explorer.netlify.com/index.php/ga-software/
    - Geometric Algebra Python                                                  https://github.com/pygae/galgebra
    - Geometric Algebra HN Discussion                                           https://news.ycombinator.com/item?id=24382360
    - Maths all in one cheatsheet                                               https://news.ycombinator.com/item?id=20048205
    - Visual Group Theory (MAA Problem Book Series)  (Nathan Carter)            https://www.amazon.com/Visual-Group-Theory-Problem-Book/dp/088385757X/
    - Calculus for beginners and artists                                        https://news.ycombinator.com/item?id=20433533
    - Scientists want to get rid of p-values                                    https://news.ycombinator.com/item?id=20889636
    - Firefly lectures - link from OU module                                    http://fireflylectures.com/
    - Firefly lectures - link from OU module                                    https://www.youtube.com/user/fireflylectures/playlists
    - Future mathematics - using Lean Theorem prover                            https://www.youtube.com/watch?v=Dp-mQ3HxgDE
    - String diagrams for linear algebra                                        https://news.ycombinator.com/item?id=21236407
    - Tom Rocks Undergrad Maths (naked mathematician)                           https://tomrocksmaths.com/
    - Statistics the power of data: lock 5:                                     http://www.lock5stat.com/
    - Avi Wigderson on a computational theory of randomness                     https://www.youtube.com/watch?v=ZzsFb-6wvoE
    - Misuse of the Central Limit Theorem                                       https://news.ycombinator.com/item?id=21909445
	- How to Be a Statistical Detective                                         https://news.ycombinator.com/item?id=21917887
    - Good site: basic explanation of maths concepts                            https://mathinsight.org/
    - Good site: Clifford Geometric Algebra                                     https://bivector.net/
    - HN discussion Clifford Geometric Algebras                                 https://news.ycombinator.com/item?id=22327864
    - Quanta magazine - map of mathematics                                      https://www.quantamagazine.org/the-map-of-mathematics-20200213/
    - Problems with Bayesian Stats                                              https://news.ycombinator.com/item?id=22399027
    - Maths for Adventurous self-learner                                        https://www.neilwithdata.com/mathematics-self-learner
    - Maths for Adventurous self-learner                                        https://news.ycombinator.com/item?id=22400375
    - Mathematics for human flourishing                                         $MY_BOOKS/physics/maths/Maths-for-human-flourishing.pdf
    - GA for human skeleton                                                     https://news.ycombinator.com/item?id=22652417
    - Russian Linear Algebra course Stepik                                      https://stepik.org/users/199121302/courses
    - List of internet Maths resources (looks good)                             https://realnotcomplex.com/
    - Blasjo history mathematics                                                https://www.youtube.com/playlist?list=PLDoP5dHh-q9yRD0h_DKkFKQ0ArvZd9y2O
    - Tevian Dray Geometric Approach Mathematical Physics                       http://sites.science.oregonstate.edu/physics/mathbook/GMM/frontmatter-1.html
    - Alternative approach to Calculus - derivatives                            http://patthompson.net/ThompsonCalc/index.html
    - Fourier Analysis (Stanford, Brad Osgood) Good!                            https://see.stanford.edu/Course/EE261
    - Latest maths news RSS Feeds                                               https://mathurls.com/
    - Strang Vision Linear Algebra 2020                                         https://ocw.mit.edu/resources/res-18-010-a-2020-vision-of-linear-algebra-spring-2020/index.htm
    - HN Discussion: Map of Maths                                               https://news.ycombinator.com/item?id=23406988
    - "penrose" system to visualise maths?                                      https://news.ycombinator.com/item?id=23430282
    - Mathematics Anonymous Support Group (maths "genius")                      https://news.ycombinator.com/item?id=23436022
    - Math Invariants Helped Lisa Piccirillo Solve Conway Knot Problem          https://news.ycombinator.com/item?id=23451419
    - Lisa Piccirillo: The World of ASTEROIDS (Topology!)                       https://vimeo.com/66928168
    - Applied Lin Alg: Vectors Matrices... good affine function definition      http://vmls-book.stanford.edu/
    - What do you study in Maths in your spare time                             https://news.ycombinator.com/item?id=23474941
    - All tensor calculus software                                              http://www.xact.es/links.html
    - HN algebra                                                                https://news.ycombinator.com/item?id=20577334
    - Non-Associative Algebras and Quantum Physics Historical Perspective.      http://arxiv.org/abs/1909.04027
    - Programmers intuition matrix multiplication                               https://news.ycombinator.com/item?id=24860688
    - Complete Idiots Guide to the continuum Hypothesis                         https://news.ycombinator.com/item?id=24954695
    - Students Guide Schrodingers Eqn (Fleisch)                                 https://www.amazon.co.uk/Students-Guide-Schr%C3%B6dinger-Equation-Guides-ebook/dp/B087MNKBC7
    - All hail Geometric Algebra                                                https://news.ycombinator.com/item?id=25142528
    - Alan McDonald Geometric Algebra videos                                    https://www.youtube.com/c/AlanMacdonald1/featured
    - Alan Kennington huge DG book, looks good                                  http://www.alankennington.com/
    - Baez: This Week's Finds in Mathematical Physics (1-50)                    https://arxiv.org/abs/2101.04168
    - Matrix mult animation                                                     http://matrixmultiplication.xyz/
    - "Block coding" Maths Environment (animations, numpy etc)                  https://mathinspector.com/
    - 3Blue1brown animation engine: Manim                                       https://github.com/ManimCommunity/manim/
    - The Mathematics of the Gods and the Algorithms of Men                     https://www.amazon.co.uk/Mathematics-Gods-Algorithms-Men-Cultural/dp/0241312175
    - Richard Borcherds                                                         https://www.youtube.com/channel/UCIyDqfi_cbkp-RU20aBF-MQ
    - French Mathematicians chat                                                http://www.neverendingbooks.org/bourbaki-and-grothendieck-serre
    - Essence of Mathematics Through Elementary Problems                        https://news.ycombinator.com/item?id=27254415
    - Dhruv on Math, great kernel explanation, more linear algebra              https://www.dhruvonmath.com/archive/
    - Mura Yakerson, Math-Life Balance, interviews with mathematicians          https://www.youtube.com/channel/UCYRR0SgbYH59htIHkwTbqMw/videos
    - Veritasium: nice Math/Science videos (Newons Pi)                          https://www.youtube.com/c/veritasium/about
    - Calculus refresher (scimutils group)                                      https://clojurians.zulipchat.com/#narrow/stream/267174-sicmutils/topic/Calculus.20Refresher
    - Computational Algebra for high school (Sage)                              https://news.ycombinator.com/item?id=28045553
    - Interactive Linear Algebra                                                https://news.ycombinator.com/item?id=28168339
    - HN: Visual Maths proofs                                                   https://news.ycombinator.com/item?id=28489582
    - HN: Math notation in code form                                            https://news.ycombinator.com/item?id=28493031
    - HN: Higher dimensions                                                     https://news.ycombinator.com/item?id=28597940
    - HN: Counter-intuitive facts in Maths, Physics, CS                         https://news.ycombinator.com/item?id=28764416
    - UCCS math video archive (Uni Colorado Good)                               https://math.uccs.edu/course-resources-detail/vidarchive
    - Chicago undergraduate mathematics bibliography                            https://www.ocf.berkeley.edu/~abhishek/chicmath.htm
    - Gelfand Talk: Unity of Mathematics                                        http://www.israelmgelfand.com/talks/unity_math.html
    - Math Without Numbers, by Milo Beckman                                     https://www.amazon.com/Math-Without-Numbers-Milo-Beckman/dp/1524745545
    - HN: Terrance Tao Problem solving                                          https://news.ycombinator.com/item?id=29899156
    - History of Mathematics online exhibition                                  https://history-of-mathematics.org/
    - HN: The Book that did it for you in Math/CS                               https://news.ycombinator.com/item?id=30485544
    - Prof. Ghrist Calculus courses                                             https://www.youtube.com/c/ProfGhristMath/playlists
    - Prof. Ghrist Calculus courses Home Page                                   https://www2.math.upenn.edu/~ghrist/index.html
    - Susan Rigetti (Fowler) self-study Maths                                   https://www.susanrigetti.com/math
    - Ask HN: Serious mathematics books that can replace a good teacher?        https://news.ycombinator.com/item?id=31488608
    - YT: Good Maths videos                                                     https://www.youtube.com/c/Mathologer
    - Famous Harvard class: Math 55                                             https://www.math.harvard.edu/demystifying-math-55/
    - Math 55 Denis Auroux: resources                                           https://people.math.harvard.edu/~auroux/
    - From Math-life Balance: Mike Hopkins: Equivariant dual of Morava E-theory https://www.youtube.com/watch?v=Ix4pg87LKVk&t=0s
    - HN: Maybe powers of π don't have unexpectedly good approximations?        https://news.ycombinator.com/item?id=32085180
    - HN: imaginary numbers are real                                            https://news.ycombinator.com/item?id=32205399
    - COUNTING FROM INFINITY Yitang Zhang And The Twin Prime Conjecture         https://archive.org/details/countingfrominfinityyitangzhangandthetwinprimeconjecture2015documentary7au3cikb2za
    - Zhang result                                                              https://news.ycombinator.com/item?id=33512338
    - Terence Tao Maths tricks                                                  https://news.ycombinator.com/item?id=33952515
    - What is an eignen value (recommends 3Brown1Blue)                          https://news.ycombinator.com/item?id=33517795
    - Ask HN: Math books that made you significantly better at math?            https://news.ycombinator.com/item?id=34439828
    - Mathpages: quirky site with good explanations?                            https://mathpages.com/
    - History of Maths: recommendations                                         https://news.ycombinator.com/item?id=35664764
    - Silicon Reckoner (about AI and Maths, author: math without apologies)     https://siliconreckoner.substack.com/
    - Self-study pure maths                                                     https://news.ycombinator.com/item?id=37963453
    - HN tip: Michael Penn's math channels on youtube are great.
    - HN tip: learn math when you're older (some good sites?)                   https://news.ycombinator.com/item?id=39047825
    - Good maths teacher: Dr. Trefor Bazett                                     https://www.youtube.com/@DrTrefor
    - Newton bionomial                                                          https://news.ycombinator.com/item?id=45292084



### My files
    - ./stats/ons-heo-application.txt
    - ./analysis/Calculus-of-Variations-Variational.txt
    - ./stats/advantage-mean-deviation.txt
    - ./linear-algebra/coding_matrix/03-matrix.md:96   <--- good file, shows matrix * vector stuff from 2015
    - $MY_IMAGES/maths/Map-of-maths.jpg
    - $MY_NOTES/misc/math-subject-classification-MSC.txt
    - ./analysis/differential-forms.txt
    - ./linear-algebra/linear-algebra-TIPS.txt
    - ./programmers-intro-maths.txt
    - ./linear-algebra/vmls-vec-mat-least-squares.txt

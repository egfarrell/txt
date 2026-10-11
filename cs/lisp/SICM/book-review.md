Book Review of SICM by G. J. Sussman and J. Wisdom

# Piet Hut (IAS Princeton)

- This is the first book I have come across that explains
  classical mechanics using the variational principle in such
  a way that there are no ambiguities in either the presentation
  or the notation.

- This leap toward clarity and precision is likely to influence
  a new generation of physics students, opening their eyes to the
  beauty of classical mechanics.

- Quite likely, some students will be inspired to find newer and
  deeper interpretations of classical mechanics. (!)

- In turn, such deeper insight may well lead to a deeper
  understanding of QM. After all, classical mechanics is only
  a _limiting case_ of QM, and the variational principle is the
  main _bridge_ between the two.

- Many physics students are introduced to Hamiltonians and
  Lagrangians only in their first course on QM.

- They are often surprised to hear that both Hamilton and
  Lagrange were long dead by 1925, and in fact their methods had
  been around for most of the 19th century.

- Rushing on to QM this way turns the historical development on
  its head, obscuring the most fundamental relationship between
  classical and quantum mechanics, and making QM seem even more
  mysterious than it really is.

- As a result, students come away with the impression that QM
  uses tools that are fundamentally different from classical
  mechanics. It also seems like one has great trouble extracting
  something resembling classical equations of motion from
  approximate treatments of expectation values of QM variables.

- I wish I'd been introduced as a freshman to classical mechanics
  through this book before learning QM. As it happened, I was
  born 30 years too early. Instead, I stumbled my way through
  various mechanics representations, in a similar way to many of
  my colleagues.

- At the end of my 2nd year as an undergraduate at Utrecht I had
  completed a detailed course in classical mechanics and an
  introductory course, more something like a guided tour, in QM.

- I knew that after the summer I'd get my first real course in
  QM, and very much looked forward to it. From the introductory
  tour I realized that the quantum world offered a totally
  different reality than the clockwork world of classical
  mechanics.

- I was very curious to see how the twain would meet: how its
  possible that the intrinsically spontaneous, unruly and
  unreproducible quantum world could ever give rise to the staid
  classical mechanic "clockwork world" on larger scales.

- Then an older student told me I might want to read about the
  variational principle in classical mechanics first. He gave me
  a bound volume of course notes on Lagrangian and Hamiltonian
  dynamics.

- I vividly remember taking the volume under my arm, walking to
  a nice terrace next to one of the Utrecht canals, and getting
  engrossed in the text. The applications were all very familiar,
  only the approach was sheer magic. I saw in _classical garb_
  the equivalence of wave functions and phase interference in
  classical mechanics, in ways that had been discovered more than
  a century before QM! How was that possible? What did that mean?

- I still remember putting the volume down, after a couple hours,
  and staring at the way the sunlight, reflected from the waves
  on the water, was painting ever-shifting caustics inside the
  arches of the stone bridge next to my terrace.

- No better metaphor could have presented itself in front of my
  eyes. So this was how the world hangs together, I thought,
  through waves and phases and interference, EVEN ON THE
  CLASSICAL LEVEL!

- For several days I felt the impact of this revelation. Now
  I really wanted to know what was going on. I went to the
  library in search of books on the variational principle in
  classical mechanics. I borrowed several heavy tomes and started
  on the one that looked most attractive. Alas, it didnt take
  long for me to realize there was quite a bit of hand-waving
  involved.

- There was no clear definition of the procedure used for
  computing path integrals, let alone for differentiating them in
  various ways, by using partial derivatives and/or using an
  ordinary derivative along a particular path.

- Also: when and why the end points of the various paths had to
  be considered _fixed_ or _open_ to variation also was unclear,
  contributing to the overall confusion.

- Working through the canned exercises wasnt difficult, and from
  an instrumental point of view, my book was quite clear, as long
  as the reader sticks to simple examples.

- But the ambiguity of the presentation frustrated me, and
  I started scanning through more detailed books. Alas, nowhere
  did I find the clarity I desired, and after a few months I gave
  up. Like generations of students before me, I reluctantly
  accepted the dictum that you shouldn't try to understand QM,
  since it'll lead you astray from doing physics. Furthermore
  I also gave up trying to really understand classical mechanics!
  Psychological defense mechanisms turned my bitter sense of
  disappointment into a dull sense of disenchantment.

- Given this background, I was delighted to read the preface of
  SICM. The very first quote showed the authors must have had
  similar struggles as me:

    > In almost all textbooks, even the best, this principle is
    > presented so that it is impossible to understand.” (K.
    > Jacobi, Lectures on Dynamics, 1842-1843). I have not chosen
    > to break with tradition.

    > VI Arnold, Mathematical Methods of Classical Mechanics,
    > footnote, p. 246


- To see a book that sets out on the very first page to attack
  this problem is heart-warming.

- I hope a new generation of students will stumble on SICM, and
  thereby make a better and deeper acquaintance with both
  classical and QM than I did.

- The central feature of this new book is it has zero ambiguity
  in any of the 1200 or so mathematical equations that appear.

- This sounds like a remarkable if not impossible claim. The key
  here is that every mathematical expression is in one-to-one
  correspondence with an equivalent expression written in
  computer code.

- Each of these expressions has been compiled and tested out by
  the authors and by many of their students over several years,
  while the authors were developing and simultaneously teaching
  the material in this book.

- The key to using a computer language is summarized by the
  authors:

    > The requirement that the computer be able to interpret any
    > expression provides strict and immediate feedback as to
    > whether the expression is correctly formulated.
    > Experience shows that interaction with the computer
    > in this way uncovers and corrects many deficiencies in
    > understanding.

- It may seem strange that computer code can capture such notions
  as evaluating variations of functions containing partial
  derivatives along arbitrary or prescribed paths in phase space.

- When expressed in more traditional programming languages
  encountered in physics or business, such as FORTRAN or C++,
  writing a package to model variational mechanics would have
  been a very complex task, resulting in a much more opaque
  product.

- Fortunately, the authors chose a **functional language**,
  Scheme, a particularly lean Lisp-like language, in which these
  ideas are expressed in a very economical and clear way.

- _Functional composition_, the key to mathematically clarifying
  variational mechanics, has an exact counterpart in the
  functional programming approach that is central in Scheme.

- Scheme is widely available and the current book is
  self-contained: an appendix gives an elementary introduction to
  Scheme, which suffices for the book.

- One characteristic of Scheme is that it is easy to learn: the
  syntax of the language is far simpler than that of, say,
  Fortran or C (to say nothing of C++). Even so, if the reader is
  curious about the full power of Scheme as well as the
  principles behind its design, the Abelson/Sussman book is well
  worth reading.

- The invitation to both abstract and compact thinking offered by
  Scheme leaves its mark. In my case, as soon as I read the first
  edition in 1985, I was hooked on Scheme as my language of
  choice. even though I find myself forced to use other languages
  in astrophysics, my programming style in those other languages
  clearly reveals the inspiration I have received from Scheme.

- The content of the book is thoroughly modern, and covers topics
  from _Lie series_ to a variety of topics in _chaos theory_.

- The authors have an impressive track record in the latter area:
  they were the first ones to show the fact that the solar system
  is chaotic, a rather startling discovery when it was announced
  in 1988 (in Science, 241, 433; using a special-purpose
  computer, the Digital Orrery, they found that Pluto's orbit has
  an inverse Lyapunov exponent of 20 Myr). (John Bell slightly
  disagrees - see his last lecture!)

- Finally, all chapters are interspersed with helpful exercises,
  all of which have been tested extensively during the six years
  that the authors have taught this material to MIT
  undergraduates.

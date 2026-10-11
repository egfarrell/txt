Advantages of LISP


### Expressions
    - Everything is an expression. [Lisps]
    - Most programming languages are a combination of 2
      syntactically distinct ingredients:

        1. _expressions_ (evaulate to produce a VALUE)
        2. _statements_  (express an ACTION)

        - E.g. in Python:
            - expression: `(x + 1)`
            - statement:  `x = 1`

        - Statements and expressions are distinct because:
            - expressions can be naturally nested with each other
            - but statements + expressions cant be nested
                - Python   valid expression: `(x + (y + 1))`
                - Python invalid expression: `(x + (if is_true(): 1 else: 2))`

    - because the "if–else" conditional is a statement, it can
      only be used in certain positions.

    - However by making _everything an expression_ Lisps remove
      this limitation.
    - Since expressions are nestable, anything in the language
      can be combined with nearly anything else.
    - For instance, because "if–else" is an expression, you can
      use it in place of a value.

    - It’s similar to the idea behind _Legos_.
    - Other building sets offer specialized pieces that can only
      fit together certain ways. But by sharing uniform
      measurements, Lego bricks offer maximum possibilities for
      combinations. This is more flexible and fun.


### Lists
    - Every expression is either a _single value_ or a _list_.

    - Single values are numbers, strings, hash tables etc.
    - In Lisps, single values are sometimes called _atoms_.

    - The list part, however, is a big deal. In a language like
      Python, the list is just one data type in the language.
    - But in Lisps, the list is more like an _organizing
      principle_ for everything that happens.
    - So yes, you can use the list as a data type._But a function
      call is also a list_. In fact, the source code for the
      function is a list.
    - Actually, the rest of the program is too. Lists are
      everywhere. (The fancy computer science term for this
      property is _homoiconicity_.)

    - The benefits of lists are similar to that of expressions.
    - By bringing more of the language into a consistent form,
      more possibilities arise for how pieces can be combined and
      manipulated.

    - Seibel describes Lisp as a tool for getting “more done,
      faster.” Here, you can start to see why this is so.
    - Lisp languages are immensely _flexible_ and permissive in
      how their pieces can be _connected_. This means that the
      way you think about a programming problem can be quite
      close to the way you actually program it. (This is also why
      Lisps have traditionally excelled for prototypes and
      exploratory work.)


### Functional programming
    - Yes, I know that other languages offer functional
      programming features, and Lisps aren’t considered pure
      functional languages.
    - But many programmers haven’t been exposed to this idiom,
      and thus tend to underrate its benefits.

    - Functional programming doesn’t mean programming with
      functions. Everybody does that.
    - Functional programming refers to a stricter style where
      functions receive certain data as input, process _only that
      data_, and return a result.

    - In FP, functions avoid two habits of other languages:

        * _data mutation_ changing data in-place rather than
          returning a value

        * _state_ relying on extra context that’s not provided as
          input, e.g. global variables


### Syntax transformations. [Racket]
    - This is Racket’s equivalent of _macros_.
    - Serious Racketeers quibble with that term, however, because
      a syntax transformation in Racket can be far more
      sophisticated than the usual Common Lisp macro.

    - A macro in Common Lisp is a _function that runs at
      compile-time_, accepting symbols as input and _injecting_
      them into a _template_ to produce new code.
    - Syntax transformations in Racket, on the other hand, rely
      on the concept of _hygiene_ and can offer Common Lisp-style
      macros, but also more elaborate syntax rearrangements.

    - But forget that — what’s in it for you? As a programmer,
      you end up getting _two bites_ of the apple every time you
      run a file:
        1. Racket runs the syntax transformations (which alter
        the source code),
        2. and then the source code itself.

    - Unlike the _C preprocessor_, which is basically a separate
      mini-language, Racket syntax transformations are
      _themselves Racket functions_ that give you access to
      everything in Racket.
    - Like lists and expressions, syntax transformations add
      another layer of _expressive_ possibilities.


### Create new languages
    - Because of
        * expressions,
        * lists,
        * syntax transformations,
        * Racket gives a huge amount of _semantic flexibility_.

    - But on top of that, it also adds _syntactic_ flexiblity, in
      that you can define a reader that converts surface syntax
      into standard Racket.

    - You can use this facility to make _specialized dialects_ of
      Racket. Or implement earlier languages. Or create entirely
      new languages with their own rules. - You can use any of
      these languages within DrRacket to code new projects.
    - (These special languages are sometimes called
      domain-specific languages, or _DSLs_.) 
    - Scribble is a DSL based on Racket; 
    - Pollen is a set of DSLs based on Scribble.

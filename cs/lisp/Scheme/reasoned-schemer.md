

- key: teachers logical programming (relational programming)

- 01 Amazon Review
- 02 Another Amazon Review


### 01 Review
    - I gave this book 5 stars, but as this book is in a complete
      category of its own, that is kind of a technicality. The
      Reasoned Schemer is a book that introduces you to the
      notion, usage, and application of logic programming. It is
      entirely structured in a question/answer format, which
      slowly introduces you to all the base "control" structures
      you would need in logic programming.

    - Non logic programming basically works from the notion of
      imperative data flow. This is generally represented by the
      concept of a function. A function takes a argument and
      returns a value, it takes input variables and returns
      output variables. A logic program creates a relation (not
      a function) between a set of variables. If you had a two
      input function, with one output, you could represent this
      as a logic program relation of three variables. Two of
      those relation variables would be what were the two inputs
      to the function, the third variable would be the output of
      the function. Here is the kicker though. You can provide
      concrete values for any number of those variable in any
      order and ask the relation what the other variables might
      be. At the simplest level, this means that you might run
      your function "backwards" (from the output to the input).
      But really, it means that you can ask any question relating
      to those variables (conceptually). Now, realistically, it
      is not as easy as that. Some relations may never terminate
      (return a answer), some grow too large and barf (overflow),
      some may not complete for various other reasons. It can be
      more complex to actually write a logical relation than
      a function, this must be balanced against the fact that the
      relation is far more powerful than the function.

    - If you want a primer for logical programing, this book is
      probably worth your time. It takes you through writing many
      of the fundamental parts of a logical relation. The only
      thing I think it really skips is the actual unification (=
      x y) primitive itself, which I believe it uses as a given.
      You can learn quite a bit by reading this code slowly and
      carefully. Note however, that you must complete every step
      of the question/answer pairings! Skimming this book will
      not work (unless you already know it). Really, these
      concepts build on each other. It is a rather small (page
      number and physically) book, but it will take far more time
      to really go through then its size would suggest. Read and
      work through for the purpose of understanding, and I think
      you will really get a good backing in logic programming,
      and probably enjoy yourself as well!

### 02 Review
    - As the saying goes, if you like this sort of thing, this is
      the sort of thing you'll like. The authors have extended
      the approach of their classic book _The Little Schemer_ to
      encompass what is usually called logic programming, but
      which they refer to as "relational programming" (a much
      better name, in my opinion). They extend the Scheme
      language with relational analogues of many constructs,
      notably lambda and cond (in many, many variations), and
      also provide extended versions of standard Scheme
      operations like cons, car, and cdr. Basically, the
      relational approach involves taking the result of
      a function call and making it just another argument, but
      a special argument that can get assigned to as the result
      of the computation. Big deal, so what? you ask. The
      important thing is that _all_ of the function arguments
      behave this way, so that you can specify the result of
      a function (relation) and ask the system to generate the
      arguments. For instance, instead of saying 2 + 2 = X and
      figuring out what X is, you can say X + 2 = 4 and the
      system will figure out what X has to be (in this case...
      ummm... oh yeah, 2). To do this, the system uses
      a mechanism called "backtracking" which systematically
      tries alternatives until it either finds the answer, gives
      up, or (if you didn't program the search right) goes on
      forever. If you haven't seen this style of programming
      before, this book will definitely open your eyes.

    - The relational/logic programming style is usually learned
      by studying the Prolog language, which is how I learned it
      (though I'm no expert). Having a knowledge of Prolog will
      definitely make this book easier to understand, although
      the approach given here is more modern than Prolog in
      several ways. For one thing, the named relations of Prolog
      are replaced here by anonymous relations (analogous to
      lambda expressions being anonymous functions), and for
      another, the (somewhat brutal) "cut" operator of Prolog,
      which is used to control backtracking, is ignored in favor
      of more subtle approaches involving interleaving solutions
      and giving up after single results are found.

    - I think the approach of learning-by-pattern-recognition
      that all the "Little X" books use is fairly effective here,
      though I think a lot of readers (meaning me) wouldn't mind
      a more extended discussion of the mechanics of the system.

    - All in all, if you liked _The Little Schemer_ and are
      curious about new ways of programming, you should
      definitely pick up a copy of this book. It will stretch
      your mind like a Slinky, and when you're done you'll have
      learned a new way of looking at programming.

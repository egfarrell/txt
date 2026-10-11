# This course
    * focus: more on _abstractions_ than tools
    * focus: more on _cloud_ than on desktop (large scale
      data forces a different way of thinking)
    * focus: more on _analysts_ than hackers
    * focus: more on data _'structs'_ than 'stats' (see
      below)

# remark
    relational algebra is the _secret sauce_ in RDBMS

# history - "what goes around comes around!"
    * pre-2004: commercial RDBMS ruled
    * _2004_: Jeff Dean et al. _MapReduce_. This allowed you
      to process very lage datasets and 'rebooted' the
      database feature set. It really focused on scale-out
      parallelism and thats it. This was exciting for many
      people because they didn't have to deal with extra
      RDBMS features that they didn't need.
    * _2008_: Hadoop 0.17 release
    * _2008_: Olston et al. Pig Relational Algebra (on
      Hadoop). So very early on the community wanted
      relational style programming on top of this
      non-relational system.
    * _2008_: DryadLINQ: Relational Algebra on Hadoop-like
      system
    * _2009_: Thusso et al. HIVE: SQL on Hadoop
    * _2009_: Hbase: Indexing for Hadoop
    * _2010_: Dietrich et al. Schemas and Indexing for
      Hadoop
    * _2012_: Transactions in Hbase (how to support
      concurrent access transparently at very large scale
    - see Google Spanner?)

    So its coming back like RDBMS again. But MapReduce did
    introduce some innovations like:

    * _fault tolerance_ during query processing. When youre
      working with 1000s computers at a time (even for a few
      mins) then the odds of one of them failing is very
      high. Previously databases didn't have to worry about
      this because they weren't running on 1000s of
      computers and they assumed your queries would run
      pretty fast.

    * _schema-on-read_. The traditional way was to design
      a schema in advance and fit your data into that
      structure. But Google noticed that some data doesn't
      come pre-equipped with a schema and also theres
      terabytes of it. So what can we do? One answer is to
      use MapReduce. So saying that before you can touch
      your data you must load it into a database was
      a non-starter for a lot of applications.

    * good _user-defined functions_. You might want to do
      things outside a SQL query. You might want to write
      your own code and push it into the database. But the
      experience of writing/maintaining user-defined
      functions isn't great and thats why many people put
      their logic inside the application instead of pushing
      it down to the database where arguably it could do
      more good.

# what are the *abstractions* of data science?
    (interesting) "Its not clear that people really know yet
    what the abstractions are!"
    Why does the lecturer say that? Because we use words
    like:
    * "Data Jujitsu"
    * "Data Wrangling"
    * "Data Munging"
    which means we don't really know what we're talking
    about!

    What abstractions are useful:
        * matrices   + linear algebra?     (YES)
        * relations  + relational algebra? (YES)
        * objects    + methods?            (NO)
        * files      + scripts?            (NO)
        * dataframes + functions?          (NO)

# 'structs' versus 'stats'
    - relative importance of Data Manipulation v Deeper Maths.
    - This course veers towards data manipulation.
    - Eg. Nate Silvers brilliant prediction of the 2012 election
      essentially relied on talking the average of all the polls.
      (not very deep maths)

    Quote: (Aaron Kimball)
        > 80% of analytics is sums and averages

# 3 types of tasks:
    1. _preparing_ to run the model - 80% of the work! (e.g.
       gathering, cleaning, integrating, transforming, loading,
       filtering, combining, verifying, extracting, shaping
       massaging the data)
    2. _running_ the model
    3. _interpreting_ the results - the other 80% of the work!

# Quote
    > ...no greater barrier to effective data management
    > will exist than the variety of _incompatible_ data
    > formats, non-aligned data structures and inconsistent
    > data semantics.

# interesting:
    you can specify (sparse) matrix multiplication in an SQL
    statement! i.e. you can represent matrices inside the
    database!!

# SQL algebraic optimisation
    * Note: you can have 3 equivalent logical expressions, and we
      don't know which one is the fastest to evaluate.
    * But the database creates an optimised query plan!
    * takes the stress away from the programmer! But other
      noSQL setups may force the programmer to choose.

# MapReduce lesson

# Decision to make: how many 'reduce' computers to use
    - Example: count word occurrences across all documents
    * you know how many computers you'll need for the 'map'
      phase: eg. one computer for each document.
    * but you may not know ahead of time how many reducers you'll
      need. It depends on the output of the map. ie in this
      example of counting words, maybe you'll decide to have
      a reducer for each word! (although the absolute limit is
      the number of words in the English language!)
    * or you could process (reduce) all maps on a single
      computer! ie. do a huge amount of serial work!

# Pseudocode: Count word occurrences in loads of Documents
    * i.e. a histogram of word usage!
    * see map_reduce.py in this folder
    * instead of counting rate of word occurrence, you could
      generate a word _length_ histogram
    * note also: in the word/document count we assumed each
      document was a separate entity and farmed each one out
      to a separate computer. (or each document was treated
      as a separate _map function_.)
    * But!! If its a _large_ document, it will get split
      into _chunks_ by HDFS and distributed...

# parallel query processing
    1. distributed query
    2. parallel query

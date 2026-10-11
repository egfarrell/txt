https://www.coursera.org/learn/data-cleaning

# Key points:
    * want to go from _raw_ data to _tidy_ data
    * all processing steps must be RECORDED!
    * include a code book (eg. text/markdown file)
    * include an instruction list

# opening remarks
    * you _want_ data in a format like an Excel spreadsheet but
      you may end up with long strings like a FASTQ file
    * or you might get neat data e.g. twitter, but in JSON format
    * or take data out of mySQL or MongoDB

# pipeline
    - raw data
    -  -> processing script
    -   -> tidy data
    -    -> data analysis
    -     -> data communication

# definition of data:
    * Data are values of qualitative or quantitaive
      _variables_, belonging to a _set of items_ (ie. the
      population or set of objects you are interested in).
    * variables are the things you are measuring
    * qualitative variables: country of origin, sex, treatment
    * quantitative variables: height, weight, blood pressure
    * note: blood pressure is a measurement made up of low
      level things (raw data)

# raw data
    * original source of the data
    * often hard to use for analysis
    * data "analysis" includes processing
    * raw data may only need to be processed once but you
      must keep a record of any processing you did

# processed data
    * its ready for analysis
    * processing can include
        * merging
        * subsetting
        * transforming etc
    * may be _standard_ pre-processing techniques in
      a particular field e.g. the lecturer is in Genomics
    * record all steps!


# fastq
    - for sequencing fastq files, theres loads of low level
      processing e.g. which colour is highest

# You should have:
    1. The raw data
    2. A tidy data set
    3. Metadata: - a codebook describing each variable in the
       tidy data set
    4. An exact _recipe_ to go from step 1 to steps 2, 3

# Your data is RAW if:
    - you ran no software on the data
    - you didnt manipulate any of the numbers in the data
    - you didn't remove any data from the data set
    - you didn't summarise the data in any way

# Tidy data should have:
    * each variable you measure in _one_ column
    * each different observation of that variable should be
      in a _different_ row
    * there should be one table for each "kind" of data
    * if theres multiple tables, there should be a column in
      each table to link them up

# tidy data tips:
    * include a header row at the top with variable names
    * Make variable names human readable:
        eg. "AgeAtDiagnosis" instead of "AgeDx"

# code book
    - normally a text/markdown file.
    * eg. provide units for the variables
    * eg. give info about the summary choices you made
    * give info about the experimental study design you
        used
    * the code book should have these sections:
        * "Study Design" - show how you collected the
            data
        * "Code Book"

# instruction list
    * the script(s) that convert the raw data into the
      processed data
    * the script should take NO parameters!

# R Tips


### Run R from (ana)conda
    - key point: capital "R" !!
    - location: ~/miniconda3/envs/r-env/bin/R
    - ```
    - R
    - ```
    - or my alias: "rcode"

### rstudio:
    - Default working directory: "global options" -> "general"
    - or manually: setwd("//home//...//Dropbox//IT//Devel//R")

# poor plot graphics
    # Ive got the Cairo library working (you just need
    # to install TexWorks alongside R and the relevant
    # dlls will be installed). The difference is
    # impressive, rendering to a Cairo graphics window
    # results in plots that are nicely anti-aliased

# hn tip
    Another talk on the difficulty of optimising R is this fantastic one by Jan
    Vitek: https://www.youtube.com/watch?v=HStF1RJOyxI

    Also, my favourite R trick:
        foo <- function() {rm(foo, envir=environment(foo))}

# handy package
    validate    report on missing data

# Gareth comment
    You should learn R through *tidyverse*, its definitely the bees knees.
    I definitely agree that tidyverse is much broader in scope.

# handy r snippets
    # http://www.codegists.com/code/install-packages-in-r/

# 'dplyr'
    * package for manipulating data frames. provides:
      `select, filter, arrange, rename, mutate, summarise`
    * doesnt provide new functionality in R per se, but
      simplifies existing functionality
    * provides a grammar (in particular, verbs) for data
      manipulation
    * 'dplyr' assumes:
    * there is one observation per row
    * each column represents a variable (or measure)
    * dplyr can have different backends, not just the data
      frame. e.g. the backend could be data.table or an
      RDBMS

# data.table
    * inherits from data.frame but is much faster!
    * can apply a list of functions to the data:
      myDataTable[, list(mean(x), sum(z))]
    * memory efficient: when adding a column to the end of
      the table, it doesnt create a copy of the whole table
    * myDataTable[, w:=z^2] creates a new column 'w' which
      is column 'z' squared
    * myDataTable[, a:=x>0] adds a boolean column at the
      end
    * data tables can have "keys", "joins"
    * fast reading: fread(file) is much faster than
      read.table(file)

# ONS comment
    library(xlsx) is better than the rest for writing to
    excel

    CSV files are way better though, if you need something
    binary then **feather** is my favourite - but rely on
    the other people who get it having R or python.


# XLConnect
    is a serious library for handing Excel files
    see "XLConnect vignette" for more info

# read.xlsx2
    is much faster for reacing excel but may be unstable
    when reading subsets of rows

# read.table()
    tip: set quote="" which tells R theres no quoted data

# Repository:
    aa 'deb http://cran.ma.imperial.ac.uk/bin/linux/ubuntu precise/'
    au
    ai r-base r-base-core r-base-dev

# harvard maths packages
    install.packages("pracma", dep=TRUE)
    install.packages("plotrix", dep=TRUE)


# useful for .Rprofile in $HOME
	setwd("//home//...//Dropbox//IT//Devel//R")
	library("psych")

# conway stats
	describe(ratings)

    # install a package
        install.packages("psych")

    # load a package
        library(psych)

    # list loaded packages
        search()

# execute source file AND show output
	source("filename.R", echo=TRUE)

# working directory
	getwd()
	setwd('some path...')

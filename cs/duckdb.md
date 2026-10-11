
### Dbeaver driver settings
    - Click in the version column to download the appropriate
      duckdb driver
        - $MY_IMAGES/cs/duckdb-dbeaver-driver.jpg

### Typing
    - Ducdb has `Strict typing` which is one big feature missing
      from SQLite

### write_arrow (ah doesn't work - old API?)
    - The `write_arrow` function in DuckDB is used to write
      a table into the database from an `Arrow table format`.
    - Apache Arrow is a cross-language development platform for
      in-memory data that specifies a standardized
      language-independent COLUMNAR memory format for flat and
      hierarchical data.
    - This format is optimized for analytical processing ...

    - When you use `Pandas` with `DuckDB`, behind the scenes, the
      data is often converted to the Arrow format to be
      efficiently passed between Pandas and DuckDB. DuckDB's
      support for Arrow means that you can efficiently move large
      amounts of data between DuckDB and other systems (like
      Pandas) with minimal overhead...

### OLAP
    - OLAP databases can/are still Relational databases. The
      difference is that they’re optimised for different
      workloads.
    - SQLite/MySQL/Postgres/MSSQL etc are all OLTP databases
      whose primary operation is based around operations on
      single (or few) rows.
    - OLAP databases like ClickHouse/DuckDB, Monet, Redshift, etc
      are optimised for operating on _columns_ and performing
      operations like bulk aggregations, group-bys, pivots, etc
      on a large subsets or whole tables.
    - If I was recording user purchases/transactions: SQLite.
    - If I was aggregating and analysing a batch of data on
      a machine: DuckDB.
    - I read an interesting engineering blog from Spotify(?)
      where their data pipelines pass around SQLite databases
      instead of CSV’s or rows of JSON: DuckDB would probably be
      a good fit there.
    - DuckDB is focused on integrating with the desktop data
      science platforms R and Python (dbplyr and pandas).
      Analytics/OLAP in SQL means lightning fast GROUP BY queries
      and more recently SQL OLAP Windows

### OLAP 2
    - The pitch is faster, and more space efficient since column
      stores are far better for analytics than row stores. Some
      benchmarks found ~5-10x speedup:
        - https://uwekorn.com/2019/10/19/taking-duckdb-for-a-spin.html

    - Consider someone who analyzes medium-sized volumes of
      _slowly-changing_ data -- OLAP, not OLTP. People who need
      to do this primarily have 2 alternatives:

        * columnar database (redshift, snowflake, bigquery)
        * a data lake architecture (spark, presto, hive)

    - The latter can be slow and wasteful, because the data is
      stored in a form that allows LIMITED indexing. So imagine
      you want query speeds that require the former.

    - Traditional databases can be hugely wasteful for this
      usecase -- space overhead due to no compression, slow
      inserts due to transactions. The best analytics databases
      are closed-source and come with vendor lockin (there are
      very few good open-source column stores -- clickhouse is
      one, duckdb is another). Most solutions are multi-node, so
      they come with operational complexity. So DuckDB could fill
      a niche here -- data that's big enough to be unwieldy, but
      not big enough to need something like redshift. It's
      analogous to the niche SQLite fills in the transactional
      database world.

### OLAP 3: Indexes
    - Indexes don't solve the same problem as columnar because
      with an index you still have to dereference a pointer, read
      the page (performing I/O if on-disk), and locate each tuple
      you want within the page--the tuples you need to aggregate
      from may be scattered across many pages, and you have to
      read the whole page into memory even if you only want one
      column.

    - With a column store, the values of the same column are
      stored contiguously so if you're summing a column for
      example, you can read one or more pages that could consist
      entirely of values the column you need to sum,
      sequentially. It's much more efficient for aggregations due
      to cache locality--much fewer cache misses and I/O
      operations needed to summarize a column.

    - The major trade-off is that updates and deletes are more
      expensive in a column store. But this is usually fine for
      OLAP workloads.

### ColumnStore
    - Well, seems to me the difference between rowstores and
      columnstores might be a little more profound than just row
      and column major orders in C and FORTRAN. (Which I remember
      from back in the day)
    - In columnstores, it’s not just the ordering that’s
      advantageous for analytics. It’s also the possibility of
      scanning only the columns required (to the exclusion of
      others), and the possibility of column compression using
      RLE compression, which speeds up search when there are many
      repeated elements (also compression makes searches cache
      efficient). This means if you workload only involves a few
      columns, and your primary operations are filter and
      aggregate — analytics workloads — then the performance
      gains are tremendous.
    - On the other hand, if you want to optimize for row by row
      writes (OLTP), and if your workloads involve operations on
      many columns, then a rowstore is advantageous.
    - Row and column major layouts are more about exploiting
      sequentiality, but in practice both C and FORTRAN can
      provide good linear algebra performance.
    - But for analytics workloads on row vs columnstores, the
      difference in performance can be in the orders of
      magnitude. The fastest analytics databases in the world
      (Kdb, Vertica, Exasol, some of the newer GPU based
      databases) are almost all columnar.

### Indexes
    - 1) An index is an additional data structure that takes
      space and needs maintenance when the data changes. This is
      especially problematic for realtime data. DuckDBs main data
      structure and implementation is designed for efficient
      scanning without needing an additional index ("vectorised
      columnar").
    - 2) We support STDDEV_SAMP and STDDEV_POP. There is also an
      interface to define your own functions. We are very aware
      of how SQLite is doing things and even support their client
      API. But we also might eventually add their way of adding
      UDFs from Python.

### SQL dialect? PostgreSQL
    - DuckDB author here: we use the PostgreSQL parser, and try
      to be generally compatible with the syntax used by SQLite,
      Postgres and MySQL. In some cases those are unfortunately
      mutually exclusive (e.g. null ordering - we have a PRAGMA
      to change this system-wide).
    - Making the SQL dialect “as compatible as possible” with
      these systems is very much one of our goals, and if you
      find incompatibilities feel free to open an issue :)
        - I'd note that when moving from `pg` to `$other` the
          thing that really trips me up isn't the syntax changes,
          it's the lack of ARRAY and ROWTYPE.
        - https://duckdb.org/docs/why_duckdb.html

### duckdb cli 'dot' commands
    - .help
    - .schema ?PATTERN?        Desc a table. (Show the CREATE statements matching PATTERN)
    - .bail on|off             Stop after hitting an error.  Default OFF
    - .binary on|off           Turn binary output on or off.  Default OFF
    - .cd DIRECTORY            Change the working directory to DIRECTORY
    - .changes on|off          Show number of rows changed by SQL
    - .check GLOB              Fail if output since .testcase does not match
    - .clone NEWDB             Clone data into NEWDB from the existing database
    - .columns                 Column-wise rendering of query results
    - .constant ?COLOR?        Sets the syntax highlighting color used for constant values
    - .constantcode ?CODE?     Sets the syntax highlighting terminal code used for constant values
    - .databases               List names and files of attached databases
    - .dump ?TABLE?            Render database content as SQL
    - .echo on|off             Turn command echo on or off
    - .excel                   Display the output of next command in spreadsheet
    - .exit ?CODE?             Exit this program with return-code CODE
    - .explain ?on|off|auto?   Change the EXPLAIN formatting mode.  Default: auto
    - .fullschema ?--indent?   Show schema and the content of sqlite_stat tables
    - .headers on|off          Turn display of headers on or off
    - .help ?-all? ?PATTERN?   Show help text for PATTERN
    - .highlight [on|off]      Toggle syntax highlighting in the shell on/off
    - .import FILE TABLE       Import data from FILE into TABLE
    - .indexes ?TABLE?         Show names of indexes
    - .keyword ?COLOR?         Sets the syntax highlighting color used for keywords
    - .keywordcode ?CODE?      Sets the syntax highlighting terminal code used for keywords
    - .lint OPTIONS            Report potential schema issues.
    - .log FILE|off            Turn logging on or off.  FILE can be stderr/stdout
    - .maxrows COUNT           Sets the maximum number of rows for display. Only for duckbox mode.
    - .maxwidth COUNT          Sets the maximum width in characters. 0 defaults to terminal width. Only for duckbox mode.
    - .mode MODE ?TABLE?       Set output mode
    - .nullvalue STRING        Use STRING in place of NULL values
    - .once ?OPTIONS? ?FILE?   Output for the next SQL command only to FILE
    - .open ?OPTIONS? ?FILE?   Close existing database and reopen FILE
    - .output ?FILE?           Send output to FILE or stdout if FILE is omitted
    - .parameter CMD ...       Manage SQL parameter bindings
    - .print STRING...         Print literal STRING
    - .prompt MAIN CONTINUE    Replace the standard prompts
    - .quit                    Exit this program
    - .read FILE               Read input from FILE
    - .rows                    Row-wise rendering of query results (default)
    - .separator COL ?ROW?     Change the column and row separators
    - .sha3sum ...             Compute a SHA3 hash of database content
    - .shell CMD ARGS...       Run CMD ARGS... in a system shell
    - .show                    Show the current values for various settings
    - .system CMD ARGS...      Run CMD ARGS... in a system shell
    - .tables ?TABLE?          List names of tables matching LIKE pattern TABLE
    - .testcase NAME           Begin redirecting output to 'testcase-out.txt'
    - .timer on|off            Turn SQL timer on or off
    - .width NUM1 NUM2 ...     Set minimum column widths for columnar output

### Links
    - Duckdb Anaconda                      https://anaconda.org/conda-forge/python-duckdb
    - Why Duckdb: lots of links            https://duckdb.org/docs/why_duckdb
    - Using duckdb sql on Pandas (wow!)    https://duckdb.org/2021/05/14/sql-on-pandas.html
    - HN discussion                        https://news.ycombinator.com/item?id=24531085
    - HN discussion older                  https://news.ycombinator.com/item?id=23287278
    - Talk                                 https://www.youtube.com/watch?v=PFUZlNQIndo
    - Presenation                          https://www.youtube.com/watch?v=PFUZlNQIndo
    - Notebook example code                https://deepnote.com/@abid/Data-Science-with-DuckDB-9KKvj1EoQrmj6nj4Y2prkg#
    - Read parquet without Spark instance! https://news.ycombinator.com/item?id=27634840
    - Take Duckdb for a spin               https://uwekorn.com/2019/10/19/taking-duckdb-for-a-spin.html
    - HN: Fast sorting in DuckDB           https://news.ycombinator.com/item?id=28328657
    - HN: Comparing SQLITE / DuCKDB        https://news.ycombinator.com/item?id=29010103
    - Duckdb command line cli shell        http://duckdb.org/docs/installation/

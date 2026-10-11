sqlite tips


### my work sessions
--      $MY_CODE/SQL/mywork.sql


### Useful commands:
    .schema <tablename>           -- show table info
    PRAGMA table_info(TABLE_NAME) -- show table info
    .mode line                    -- display row "downwards" (easier to view!)
    .tables                       -- list tables
    .separator ','                -- set this before a csv import
    .import my.csv mytable        -- load data
    .databases                    -- list databases
    .quit                         -- exit
    .output stdout                -- dump results to screen
    .output myresults.dat         -- dump results to file
    .read myscript.sql            -- execute script
    .dump <table>                 -- export data
    .indices <tablename>          -- show defined indexes
    .help                         -- show all dot commands
    .shell clear                  -- clear screen

### make output easier to see
    .explain ON
    .mode column
    .width 30 10 10

### do a rank, row_number, partition etc
    SELECT  person_code,
            name,
            Course_Description,
            Course_Code,
            Create_On_Date,
            ROW_NUMBER () OVER ( PARTITION BY person_code ORDER BY Create_On_Date) as "application number"
    from    applications;


### Alternative sqlite shells
    - litecli (terminal)          https://litecli.com/
    - visidata (main TUI)         https://www.visidata.org/
    - vdsql  (TUI for sql)        https://github.com/visidata/vdsql
    - sqlite WEB (remote via ssh) https://github.com/coleifer/sqlite-web

### sqlite WEB Browser GUI
    sqlite_web --port 8888 --no-browser mywork.sqlite

### Virtual Columns (OLAP)
    - I usually just extend SQLite with virtual columns and try
      to do the filtering/aggregate before sending tuples to the
      engine. This does the trick most of the time and it's
      relatively straightforward to implement.

### add a new column!
    alter table trevor_grades add column high_rate float;

### find column or table
    ```
    select *    from sqlite_master where sql like '% column_name %';
    SELECT name FROM sqlite_master WHERE type ='table' AND name NOT LIKE 'sqlite_%';
    ```

### desc table schema definition
    - in client like SQLiteStudio or DBeaver
        - PRAGMA table_info(TABLE_NAME)

### Debug a query
    pragma vdbe_listing=1;

### using "variables" in Sqlite with a common table expression (CTE)
    with cte as (select 'name' as name, 10 as more)
        select *,
               (mytable.cost + cte.more) as result
        from   mytable, cte
        where  mytable.name = cte.name

    with cte as (select sum(students) as total_students , sum(quit) as total_quit from summary)
        insert into summary
            select 'ALL', '', '',  '', cte.total_students, cte.total_quit, 0.074, 0 from cte;

### diff
   - If you want to do a diff you just do sqldiff on two files

### call PYTHON from Sqlite
    - I only learned this week that it supports recursive CTEs (although
    - apparently you can't refer to them in subqueries yet?) and only
    - yesterday that you can do this:

    >>> import sqlite3
    >>> con = sqlite3.connect(':memory:')
    >>> cur = con.cursor()
    >>> q = '''select x, sum(a * power(x, e))
    ... from (select -2 as x union select -1 union select 0 union select 1 union select 2) xt,
    ... (select 1 as a, 2 as e union select 4, 1 union select 2, 0) et
    ... group by x'''
    >>> cur.execute(q).fetchall()
    -- Traceback (most recent call last):
      -- File "<stdin>", line 4, in <module>
    -- sqlite3.OperationalError: no such function: power
    >>> con.create_function('power', 2, lambda base, power: base**power)
    >>> cur.execute(q).fetchall()
    [(-2, -2), (-1, -1), (0, 2), (1, 7), (2, 14)]

    - That is freaking cool. Not evaluating polynomials in SQL,
      I mean, but defining a user-defined function for SQL in one
      line of Python.

    - It simply uses the `sqlite3_create_function` API, so it’s
      as fast/slow as your Python function. You can even use
      Cython if pure Python isn’t fast enough. I use UDFs quite
      a bit and the performance is fine without extra tweaks most
      of the time, but for something like pow I’d use the math
      extension instead which would be way more performant.

    - Btw, user-defined scalar functions aren’t remotely as sexy
      as user-defined window functions.


### nice case example
    select  field1, field2,
             -- convert DCG values to percentages!
            -- (if non-numeric, return '')
            (case when Year1 = 'N'   then ''
                  when Year1 = 'R'   then ''
                  else Year1 / 100 end)       as "2013_14",
            (case when Year2 = 'N'   then ''
                  when Year2 = 'R'   then ''
                  else Year2 / 100 end)       as "2014_15"
    from mytable;

### --  another nice case example
    update trevor_grades
    set rating = case
                    when high_rate > 50                       then 1
                    when (high_rate > 30 AND high_rate < 50)  then 2
                    when (high_rate > 29 AND high_rate < 30)  then 3
                    else 4
                end;


### export table to csv
    - from command line
    sqlite3 -header -csv ./DATA/proachieve.sqlite "select * from trevor_grades;" > out.csv


### Random example
    wget "https://data.cityofnewyork.us/api/views/kku6-nxdu/rows.csv" rows.csv
    sqlite3
    .mode csv
    .import ./rows.csv newyorkdata
    SELECT * FROM newyorkdata ORDER BY `COUNT PARTICIPANTS`;

### transactions! (and use multiple joint indexes!)
    begin transaction;
        create index  idx_num   on mytable (num);
        create index  idx_joint on mytable (id, inclin, z);
    commit;

### drop if exists
    drop table if exists courses;

### limit first/top 10 rows only
  select * from kep_mag_13  LIMIT 10;

### attach (another) database
   attach "mydb.sqlite" as mydb;

### select from SPECIFIC db
  select * from db1.mytable;
  -  or if table is unique (in all attached databases)
    select * from my_unique_table;


### casting: force float division
    - i.e. non-integer!!
    round (CAST (ec.errors_changed AS REAL) / e.errors * 100 ) AS hit_rate


### count distinct rows
    select count(distinct id) from depths;

### primary keys 1
    --  'INTEGER': makes primary key accessible
    --  (same as 'serial' in other databases)
    CREATE TABLE books
    (
    bookid    INTEGER PRIMARY KEY,  <------
    title     varchar(100) NOT NULL,
    seriesid  integer
    );

### primary keys 2
    --  unique primary key:
    bookid INTEGER PRIMARY KEY,
    --  unique primary key
    --  over lifetime of table:
    bookid INTEGER unique PRIMARY KEY AUTOINCREMENT,

### "hidden" ROWID
  --  ROWID, _ROWID_, or OID
  --  note: ROWID can change!
  select ROWID, * from WEB_mag limit 10;


### install on windows
    - goto: http://www.sqlite.org/download.html
        - download sqlite3.exe and put it in c:\windows\system32
          or somewhere else in the path!

    - install it in MobaXterm: 
        - apt-cyg install rlwrap sqlite3

    - use a GUI tool: 
        - sqlitebrowser http://sqlitebrowser.org/

### info on database objects
  select * from SQLITE_MASTER;

### SQLITE_MASTER for ATTACHED databases!
    -  `.tables`, and `.schema` don't look at attached databases.
    -  They only query `SQLITE_MASTER` for the "main" database.

    -  So if you:
        ATTACH myfile.db AS mydb;
        -  you must;
            SELECT  name
            FROM    `mydb.SQLITE_MASTER`
            WHERE   type='table';

    -  To list tables in a database:
    -  Use `SQLITE_MASTER`
            SELECT  name
            FROM    SQLITE_MASTER
            WHERE   type='table';

    -  Note:
    -  {TEMP} tables don't appear with '.tables'.
    -  Use `SQLITE_TEMP_MASTER`
           SELECT  name
           FROM    SQLITE_TEMP_MASTER
           WHERE   type='table';


### Python:
    --  in memory db
    connection = sqlite3.connect(':memory:')

    --  put sql command into array and plot
    cursor.execute(sql_cmd)
    --  db_info = array(cursor.fetchall())
    --  plot(db_info[:,0], db_info[:,1], label="some stock")

### dump / export sqlite database
    sqlite3 some.db .schema > schema.sql   <--- only create table commands
    sqlite3 some.db .dump   > dump.sql     <--- data as well

    - Now get the difference between both files in order to have
      INSERT statements only
    grep -vx -f schema.sql dump.sql > data.sql

### Interesting: DATES
    select   title,
             DATE('NOW') - finish_date as "age"
    from     work
    where    finish_date < ("1981-04-01")
    order by age desc;

### get a specific date year
    where strftime('%Y', DATE_OF_BIRTH) = '1973'
    strftime('%d-%m-%Y', DATE_OF_BIRTH) as "DOB"

### convert string column to date
    -- converting this: 'dd/mm/yyyy'
    update mytable
    set date_of_birth =
        substr(date_of_birth,7,4) || '-' || substr(date_of_birth,4,2) || '-' || substr(date_of_birth,1,2) || ' 00:00:00'


### Interesting: GLOB
    select * from work where type glob "P*";
    select * from work where type glob "*(p|P}rint*";


### utilise table INDEXs with 'LIKE'
    --  'INDEX' is case-sensitive   by default
    --  'LIKE'  is case-INsensitive by default

    --  To force 'like' to use your index, either:
        --  1. make 'INDEX' case-INsensitive:
            CREATE INDEX test_name ON test (name COLLATE NOCASE);
        --  2. make 'LIKE' case-sensitive:
            PRAGMA case_sensitive_like = 1;

### open a database from command line
    sqlite3 <filename>

### --  method1: run sql commands from bash!
    sqlite3 abc.db ".separator ','"
    sqlite3 abc.db ".import 'trans.csv' trans"
    sqlite3 abc.db "select count(*) from trans;"


### method2: run sql commands from bash script
    sqlite3  myfile.db <<EOF
    .echo on
    begin transaction;
    create index  idx_num     on ${TABLE_NAME} (num);
    create index  idx_main    on ${TABLE_NAME} (id, inclin, z);
    commit;
    .indices ${TABLE_NAME}
    EOF


### Drop COLUMNS from a table
    - Convoluted - must create new table!
        CREATE TABLE books2 (
                bookid   integer PRIMARY KEY NOT NULL,
                title    varchar(100) NOT NULL,
                authorid integer
        );

        INSERT INTO books2 (bookid, title, authorid)
            SELECT bookid, title, authorid FROM books;

        DROP  TABLE books;
        ALTER TABLE books2 RENAME TO books;


### sqldbx login screen
        --  DSNLESS connection (db name in "options" textbox)
            --  DBMS Type
                    odbc
            --  DSN
                    any old name
            --  Schema, User, Password
                    blank
            --  options
                    DRIVER=C:\path\to\sqlite3odbcnw.DLL;Database=C:\path\to\mydb.sqlite

        - note 1: you could also define a proper ODBC DSN and put that in the
                  DSN field instead (and delete the "options" stuff)
        - note 2: (driver available from: http://www.ch-werner.de/sqliteodbc/)



### Floating Point
    - check this:
        `select round(0.9875, 3);` <--- I expect 0.998, I got 0.987
        `select round(0.1176, 3);`

    - found the answer!
        - Why does ROUND(9.95,1) return 9.9 instead of 10.0?
          Shouldn't 9.95 round up?

    - SQLite uses binary arithmetic and in binary, there is no
      way to write 9.95 in a finite number of bits. The closest
      to you can get to 9.95 in a 64-bit IEEE float (which is
      what SQLite uses) is
        - 9.949999999999999289457264239899814128875732421875.
    - So when you type "9.95", SQLite really understands the
      number to be the much longer value shown above. And that
      value rounds down.

    - This kind of problem comes up all the time when dealing
      with floating point binary numbers. 
    - The general rule to remember is that most fractional
      numbers that have a finite representation in decimal (a.k.a
      "base-10") do not have a finite representation in binary
      (a.k.a "base-2"). And so they are approximated using the
      closest binary number available.

    - That approximation is usually very close, but it will be
      slightly off and in some cases can cause your results to be
      a little different from what you might expect.



### copy sqlite db
    - If you are using SQLite, be aware that the “copy the file
      to move it to a different system” comes with a caveat

    - a regular Unix “cp” may get the file in an inconsistent
      state if it was modified while copying, or in the middle of
      a transaction.

    - Iirc “rsync” if used to copy, will verify that the file was
      not modified while copying and restart the copy if it did
      (a number of times and then error out).

    - But that’s still not enough - you may need to also copy the
      shm file (in wal emode) and the journal file - and you need
      to do that atomically. Which is harder still.

    - The right way to copy an SQLite file is:

        - Any way you like, if it was properly committed and
          closed last time it was used, and is not currently open
          by any other process;

        - Or creating a backup (e.g. with the sqlite3 command),
          which will be a nonblocking operation if in WAL more
          - and then you can ship the backup whichever way you
          want.


### Dynamic Typing / type affinity
    - Before rendering judgment, please read SQLite's own page on
      the subject. I think you will see that the choice wasn't
      sloppy but thoughtfully designed,
      https://sqlite.org/datatype3.html

    - My takeaway from that is: 
        - (1) for many people, SQLite is not your database, but
          you already knew that, 
        - (2) it is nice there exists a database out there with
          this flexibility, if you want it, and 
        - (3) if you choose it, you might consider declaring
          columns NUMERIC. 
        - From the documentation: "A column with NUMERIC affinity
          may contain values using all five storage classes. When
          text data is inserted into a NUMERIC column, the
          storage class of the text is converted to INTEGER or
          REAL (in order of preference) if the text is
          a well-formed integer or real literal . . . If the TEXT
          value is not a well-formed integer or real literal,
          then the value is stored as TEXT." So NUMERIC is kind
          of like TEXT except when the text is a pure number.

    - Some ask, why would you want a database like this? I don't
      know, perhaps to match your application language if it is
      also typed dynamically. For example, PHP. 

        - koyote
        - I learnt this the hard way when I decided to go for
          SQLite for a hobby project for 'simplicity'.
        - Depending on how you store your values you could have
          a column with both floats and ints where a simple query
          like `number < 10` will give _weird results_.
        - I wonder how much this affects performance as the DB
          can't _guarantee the size_ of any given column/row.

 	
        - wenc 
            - I also found out the hard way -- I was excited to
              adopt SQLite everywhere because I had heard so many
              good things (which are in fact true), but its
              dynamic typing/type-affinity design made it
              difficult to use as a data store especially for
              _analytics work_.
            - I mean, you can still use it, but you have to do
              your own type checking/coercion in code. Basically
              you have to re-implement a subset of a type
              handling system, which you'd get for free in a full
              SQL db. 
            - You also have to standardize certain types like
              DATEs because SQLite has no native date type -- the
              3 ways to implement dates in SQLite are 
                - ISO 8601 strings, 
                - Julian 
                - UNIX epochs, 
                - and you can convert between them, but you lose
                  some performance on joins and aggregations.
            - It's best to think of SQLite as its own data
              structure/file format which happens to have a SQL
              engine on top of it, rather than an actual database
              format. In fact the docs makes a case for SQLite as
              an application file format [1].
            - For analytics work however, I'm finding `DuckDB`
              (https://duckdb.org) to be amazing. It is
              SQLite-ish (i.e. also an embedded database), but
              has a columnar query engine, can read parquet
              files, and has native types (including date!). 
            - It also runs in-process in Python and queries
              Pandas dataframes using a more optimized query
              engine than Pandas itself. Side: Many of the main
              contributors work at CWI Amsterdam, the Dutch
              institute where Guido van Rossum conceived Python.


### Sqlite Data Types (affinity) 2
    - SQLite is somewhat unique in its type system compared to
      other relational databases. It uses a _dynamic type_ system,
      which means that the datatype of a value is associated with
      the value itself, not with its CONTAINER. This feature is
      known as "manifest typing."

    - However, SQLite recognises the following storage classes or
      "datatypes":
        - 1. `NULL`: Represents missing data or an unknown value.
        - 2. `INTEGER`: A signed integer. Depending on the value,
          it can be stored as 1, 2, 3, 4, 6, or 8 bytes.
        - 3. `REAL`: A floating-point value. It's stored as an
          8-byte IEEE floating point number.
        - 4. `TEXT`: A text string, stored using the database
          encoding (UTF-8, UTF-16BE, or UTF-16LE).
        - 5. `BLOB`: A blob of data. It's stored exactly as it
          was input.

    - In addition to these, SQLite has "type affinity," which
      means even if you assign a specific type to a column, the
      column might still accept OTHER TYPES OF DATA. There are
      five type affinities in SQLite:
        - 1. _TEXT_: The value is a text string, like in the
          `TEXT` storage class.
        - 2. _NUMERIC_: Values can be integers, reals, text, or
          blobs. This is the most flexible affinity. If you
          insert text that looks like an integer or real, SQLite
          might try to convert it to an actual integer or real
          when you do certain operations on the data.
        - 3. _INTEGER_: Just like the `INTEGER` storage class.
        - 4. _REAL_: Like the `REAL` storage class.
        - 5. _NONE_: No affinity. SQLite won't try to convert the
          data you insert into any other type.

    - When you define a table in SQLite, you can use various
      datatype names, and SQLite will map them to one of the five
      affinities mentioned above. 
        - For example, if you use `VARCHAR`, `CHAR`, etc., SQLite
          will assign the `TEXT` affinity to that column. If you
          use `INT`, `BIGINT`, `TINYINT`, etc., SQLite will
          assign the `INTEGER` affinity.

    - It's important to understand this behavior because even if
      you define a column as, say, `VARCHAR(10)`, you can still
      insert a 20-character string, an integer, or even a blob
      into that column. SQLite will just apply the rules of the
      `TEXT` affinity to any operations you do on that column.


### sqlite coerce ints
    >Lots of databases support the type conversion behavior, but
    >SQLite can’t do the conversion it powers through and writes
    >the bytes anyways.
    - oh god. So if I write "a" to an int column it turns into
      97? or does it just return "a" text instead next time,
      which the first example seems to imply?
    - both are kind of horrible
    - reply
        - Basically, if it doesn't look like an INT, it won't be
          coerced into it.
        - The edge case I hit was when it did look like an
          integer, but had leading zeroes that were important:

        sqlite> create table example(a int, b text);
        sqlite> insert into example values ('00123', '00123');
        sqlite> select * from example;
        123|00123

        - My fault for a bunch of reasons, but still, surprised me.

### Links
    - apsw python wrapper over sqlite                             https://github.com/rogerbinns/apsw
    - HN discusstion sqlite tips etc                              https://news.ycombinator.com/item?id=26151302
    - Datasette                                                   https://datasette.io/
    - High availability distributed sqlite                        https://dqlite.io/
    - convert csv's to sqlite: :                                  https://github.com/simonw/csvs-to-sqlite
    - SQL.js: run SQLite within a Web page                        https://github.com/sql-js/sql.js
    - Litestream: SQLite-powered streaming replication system.    https://litestream.io/blog/why-i-built-litestream/
    - graph-style queries against SQLite too                      https://sqlite.org/lang_with.html#rcex3
    - AergoLite is replicated SQLite but secured by a blockchain. https://github.com/aergoio/aergolite
    - Datasette: SQLite database as a Web accessible service      https://github.com/simonw/datasette
    - Dogsheep: roster of tools for personal analytics            https://dogsheep.github.io/
    - insert mlilions rows per second                             https://news.ycombinator.com/item?id=27944065
    - SQLITE is dynamically typed                                 https://news.ycombinator.com/item?id=28050198
    - good hints and tips                                         https://news.ycombinator.com/item?id=15525715
    - Duckdb: Alternative for analytics                           https://duckdb.org
    - TUI viewer: Visdata                                         https://github.com/saulpw/visidata

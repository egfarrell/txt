SQL tips


### NULL is a state
    - SQL null is a `state`, not a value. 
    - This usage is different from most programming languages,
      where a NULL value of a reference means its not pointing to
      any object.

    - Because any direct comparisons with a `NULL` result in the unknown
      logical value, the following 2 queries are not equivalent
      if column 'x' contains any NULLS:

        - SELECT * FROM stuff WHERE (x = 10) OR NOT (x = 10);
        - SELECT * FROM stuff;

    - If 'x' has NULLS, the 2nd query would return some _extra
      rows_ the first one doesnt return; namely all those in
      which 'x' is NULL. 

    - In classical two-valued logic, the law of the excluded
      middle would allow the simplification of the WHERE clause
      predicate, in fact its elimination. 
    - Attempting to apply the law of the excluded middle to SQL's
      3VL is effectively a false dichotomy. 
    - `SELECT * FROM stuff` is actually equivalent to:
        - SELECT * FROM stuff WHERE ( x = 10 ) OR NOT ( x = 10) OR x IS NULL;
        - -- because of 3VL...

    - Thus, to correctly simplify the first statement in SQL
      requires that we return all rows in which `x` is not null.
        - SELECT * FROM stuff WHERE x IS NOT NULL;



### 'NULL' is different
    - `NULL` is special indicating the ABSENCE of a value.
    - NULLs are treated differently from other values, and any
      comparisons involving NULLs will themselves return NULL.
    - This means operators like `=` or `!=` don’t work with
      filtering NULLs.
    - Instead use `IS NULL` and `IS NOT NULL` when checking for
      NULLs.

### NULL
    - special value for "unknown" or "undefined"
    - Craig has GPA = "NULL":
        - hes not returned for query GPA < 3.5
        - hes not returned for query GPA >= 3.5
        - and hes not returned for query (GPA < 3.5) or (GPA >= 3.5)!!
    - even though you'd think that query would return all tuples
      so be careful with NULLS!

### 3/4 valued logic
    - Some believe three-valued predicate logic is
      non-relational, whereas others believe it IS relational.
    - Codd actually advocated four-valued predicate logic, saying
      there were two different cases of missing values:
        - "missing but applicable" (A-Mark) :
        - an employee has a mobile phone, but you don’t know what
          the number is.
        - "missing but inapplicable" (I-Mark):
        - employee doesn’t have a mobile phone at all.
    - According to Codd, two special markers should be used to
      support these two cases of missing values.
    - SQL implements three-valued predicate logic by supporting
      the NULL mark to signify the generic concept of a missing
      value.
    - Support for NULL marks and three-valued predicate logic in
      SQL is the source of a great deal of confusion and
      complexity, though one can argue that missing values are
      part of reality.
    - In addition, the alternative, using only two valued
      predicate logic is also problematic.

### alternatives to 'not exists'
    - I want people who exist on 'employees' but not on 'table2'
        - SELECT * FROM employees WHERE name NOT IN (SELECT name
          FROM table2)
        - SELECT * FROM employees WHERE NOT EXISTS (SELECT * FROM
          table2 WHERE table2.name = employees.name)
        - SELECT * FROM employees LEFT OUTER JOIN table2 ON
          table2.name = employees.name WHERE table2 IS NULL
    - NB! `NOT IN` does not work as expected if name has NULL
      values. (Ahh! Found this in Derby College too.. see above!)

### delete with count
    DELETE a
    FROM   UserPredictions a
    JOIN
    (
        SELECT   UserId
        FROM     UserPredictions
        GROUP BY UserId
        HAVING   COUNT(1) < 500
    ) b ON a.UserId = b.UserId


### it took me a while to figure out this one!
    select      person_code, Name, count(`distinct offering_organisation`)
    from        ebs_download
    group by    person_code, Name
    order by    count(distinct offering_organisation) DESC, person_code, Name
    ;

### set a flag if a row exists on another table
    case
        _WRONG_ when exists (select 1 from FES_PEOPLE_UNITS as `p` where (`la.`PERSON_CODE = `p`.PERSON_CODE and x.CALOCC_CODE = '19/20')) then 'Y'
        _RIGHT_ when exists (select 1 from FES_PEOPLE_UNITS as `p` where (`p.`PERSON_CODE = `la`.PERSON_CODE and x.CALOCC_CODE = '19/20')) then 'Y'
        else 'N'
    end as "Returned_in_1920",


### interesting update that uses 'exists'
    update merge1
    set    (imputed, wd11cd, wd11nm, lad11cd, lad11nm) = (select  1, l.wd11cd, l.wd11nm, l.lad11cd, l.lad11nm
                                                          from    osward_wd11cd_lookup as l
                                                          where   merge1.osward = l.osward
                                                         )
    where merge1.wd11cd is null
    and exists (select * from osward_wd11cd_lookup where osward_wd11cd_lookup.osward = merge1.osward)
    ;


### SQL GROUP BY different values in one coloumn
    Select      (Case Ethnicity when 31 then "English" else "Other Ethnicity" end) as Ethnicity,
                count(distinct LearnRefNumber)                                     as "distinct_students",
                sum( case when StartFund = 0 then 1 else 0 end)                    as "Dropped_Out"
    from        dashboard_data
    group by    (Case Ethnicity when 31 then "English" else "Other Ethnicity" end)
    ;


### nice pivot ("Cross Tab") example
    - Basically turn rows into columns
    select LearnRefNumber, AimSeqNumber,
            max(case when ProvSpecDelMonOccur  = "A"  then ProvSpecDelMon end) as A,
            max(case when ProvSpecDelMonOccur  = "B"  then ProvSpecDelMon end) as B,
            max(case when ProvSpecDelMonOccur  = "C"  then ProvSpecDelMon end) as C,
            max(case when ProvSpecDelMonOccur  = "D"  then ProvSpecDelMon end) as D
    from ProvideSpecTable
    group by LearnRefNumber, AimSeqNumber;

# views:
    - views are NAMED SQL QUERIES that can be accessed as a single table

### using "count" and outer joins
    - e.g. for customer sales
    - `Count(*)` cannot detect if a row really represents an
      order.
    - so use `count(<column_name>)` and provide a column from the
      nonpreserved side of the join... (then you won't count NULL
      orders!)

### performance - filter columns
    - To make sure indexes are used effeciently, don't manipulate
      a filter column (using functions)
    - e.g. instead of `where year(orderdate) = 2015`
    - use: `where orderdate >= '20150101' and orderdate <= '20160101'`

### logical order of processing for an SQL query
    - The logical query processing phases are:
        1.  from
        2.  where
        3.  group by
        4.  having
        5.  select
            - expressions
            - distinct
        6.  order by
            - Top/ offset-fetch


### "all-at-once operations"
    - means all expressions that appear in the same logical
      processing phase are evaluated logically at the same point
      in time.
    - This is because all expressions in the same logical phase
      are a SET, and there's no concept of order for set
      elements.
    - Example: `where col1 <> 0 and col2/col1 > 2`
        - There's no guarantee that `col1 <> 0` will be evaluated
          first


### using "case" statement as a filter
    - "case" can be used in a where clause!
    - "case" generates something thats compared to "yes"... never
      saw that before
        - select col1, col2
        - from   T1
        - where  Case
        -            when col1 = 0      then 'no'
        -            when col2/col1 > 2 then 'yes'
        -            else 'no'
        -        end = 'yes';


### coalesce:
    - Returns first NON-NULL value in a list.
    - COALESCE is a shortcut for a CASE expression, meaning that
      the optimizer rewrites it to use CASE instead
    - COALESCE is ANSI-Standard, so you will also find it in
      other RDBMSs
    - ISNULL is Microsoft only
    - difference 'coalesce' and 'isnull'
        - the main difference is the datatype of the output
        - COALESCE has datatype higher precendence order
        - SELECT COALESCE(NULL, 1759, 42);
        - SELECT ISNULL(NULL, 1759);


### offset fetch
    --  offset ... fetch is an extension to the order by clause.
    --  It's "better" than using "TOP" which is non-standard.
    - select orderid, orderdate, custid, empid
      from sales.orders
      order by orderdate, orderid
      `offset` 50 rows `fetch next` 25 rows only;


### Joins (table operators)
    - JOIN:
        - CROSS join:
            - 1 logical processing Phase:
            - Cartesian Product
        - INNER join:
            - 2 logical processing Phases:
            - Cartesian Product + filter
        - OUTER join:
            - 3 logical processing Phases:
            - Cartesian Product + filter + Add Outer Rows
                - LEFT (OUTER) JOIN,
                - RIGHT (OUTER) JOIN etc

### Logical operators - Derby College problems!
        - `<> 0` didn't work because "completed" had NULLS!
            - select * from table where retention is null and
              completed `<> 0`;
        - Had to change to:
            - select * from table where retention is null and
              completed `IS NULL`;
        - Ah found the reason in Ben-Gans book! (see 3-value
          predicate logic)

### SQL uses '3-valued' predicate LOGIC:
        - TRUE, FALSE, UNKNOWN
        - when a logical expression only involves non-NULL values
          it evaluates to 'TRUE' or 'FALSE' only
        - if the expression involves missing values, it evaluates
          to 'UNKNOWN'.
        - Important!! SQL has different treatments for UNKNOWN in
          different parts of the language...
        > The SQL treatment for query filters is "accept TRUE"
        > and discard 'FALSE' and 'UNKNOWN'
        - However, the SQL treatment for other situations may be
          different:
            - e.g. CHECK constraints (in insert/update statments)
              only reject rows which evaluate to 'FALSE'. So rows
              that evaluate to TRUE/UNKNOWN are let through...
            - e.g. for grouping and sorting, two NULLs are
              considered equal...!

### gotcha
        - ONS:
            - This stumped me because originally I thought it was
              `and` instead of `OR`
            - delete * from ROUNDING where question not in
              (&my_questions) `OR` Q&quarter  NE &quarter;
        - DCG:
            - I had a LEFT JOIN, but then a "where" filter
              afterwards. But I dropped row(s) because the
              "where" filter wasn't always matched... (so
              I managed to negate the left join by my "where"
              filter)
        - slow join
            - originally "ilr_year" was a TEXT, and "calocc_code"
              was BIGINT! Very slow!
            - ```
            - on  (r.PERSON_CODE = vl.LearnRefNumber and
            -      r.calocc_code = vl.ilr_year_numeric)
            - ```

### multi table joins
    -  $MY_IMAGES/cs/multi-join-visualisation.jpg

### Cursors
    - Kind of a "pointer" to the results of a "select" statement.
    - It's a database object to manipulate data in a set on
      a _row-by-row_ basis

### Group By
    - Suppose I have a table `T`:
        - a   b
        - --------
        - 1   abc
        - 1   def
        - 1   ghi
        - 2   jkl
        - 2   mno
        - 2   pqr
    - Tben run:
    - `SELECT a, b FROM Table GROUP BY a`
    - The output should have two rows,
        - a row with a=1 and
        - a second row with a=2.
    - But what should column "b" show on these two rows?
    - It's ambiguous. There's 3 possibilities in each case, and
      nothing in the query makes it clear which value to choose
      for "b" in each group.
    - This shows the 'single-value rule', which prohibits the
      undefined results you get when you run a GROUP BY query,
      and you include any columns in the select-list that are
        - neither part of the grouping criteria,
        - nor appear in aggregate functions (SUM, MAX, etc)

    - Fixing it might look like this:
    - `SELECT a, MAX(b) AS x FROM Table GROUP BY a`
    - Now it's clear we want the following:
        - a   x
        - --------
        - 1   ghi
        - 2   pqr



### many-to-many relationship
    - you can't implement a "many-to-many" DIRECTLY on 2 tables!
    - you must have "bridge table" (association table, lookup table)
      between the two tables (entities) which holds the primary
      key of each table as a new composite primary key
    - so for a database _implementation_ you can only use various
      one-to-many relationships that combine together (using
      bridge tables) to create many-to-many relationships.

### check this:
    - GROUP BY... HAVING...
    - found answer in Safari Books online: (june 2018)
        - 'where' clause:  
            - limits rows   returned in a select clause
        - 'HAVING' clause: 
            - limits GROUPS returned in a GROUP BY clause
    - you can't have a aggregate filter in a "where" clause!
        - WRONG!   
            - select type, AVG(price) from book `where AVG(price)
              > 25` group by type;
        - CORRECT! 
            - select type, AVG(price) from book group by type
              `having AVG(price) > 25`;
    - Note:
        - "WHERE" clauses are much cheaper and effecient. Lots of
          optimisations can be employed.
        - "HAVING" is potentially expensive and consumes a huge
          amount of resources

### normal forms
   - 1NF: 
        - only one value per field (no arrays stuck in a single
          field)
   - 2NF: 
        - every non-key field can be accessed using a logically
          related key. If the key is a compound key, each field
          that makes up the key must be related to all of the
          columns in the row.
   - 3NF -

# SQL
    - every SQL query gets turned into a *relational algebra*
      plan

# interesting:
    - you can specify (sparse) _matrix multiplication_ in an SQL statement!
    - i.e. you can represent matrices inside the database!!

### Join Styles
    - "THETA-STYLE" joins (old traditional joins)
            - join condition in "where" clause
            - (also known as SQL-89 syntax?)
            ```
            SELECT  a.name,
                    b.appearances
            FROM    film_actor AS a,
                    actor      AS b
            WHERE   a.actor_id = b.actor_id;
            ```
    - What is the definition of a 'theta' join?
        - A theta join allows for arbitrary comparison relationships (such as `≥`).
            - In relational algebra, the "_theta_" is actually the _condition_.
        - An equijoin is a theta join using the `equality` operator.
        - A natural join is an equijoin on attributes that have the same name in each relationship.

    - ANSI-STYLE joins (SQL-92)
            ```
            SELECT *
            FROM   film       AS a,
            JOIN   film_actor AS b
            ON    (a.film_id = b.film_id)
            ```
            - use "join...on"

    - Derby college mistake!
    - for a LEFT join you must use the ANSI (SQL-92) syntax of "on..."!
        ```
        select     c.*,
                   l.*
        from       courses_17_18                AS c
        left join  prev_year_learning_aim_data  AS l
        where      c.Learning_Aim  = l.Learning_Aim;  <--- WRONG WRONG (wont do a "left join"!) (must use "on")
        ```

### ANSI SQL Rule: single / double quotes
    - 'single quotes' for -> _VALUES_
    - "double quotes" for -> _SYSTEM IDENTIFIERS_
    - VALUES: 
        - where title = 'The Hobbit'
    - SYSTEM IDENTIFIERS: 
        - SELECT title AS "Book Title"
        - (field names, table names)
    - SQLITE doesnt care, PostgreSQL does

### sum using multiple criteria
    select imp_class,
           round(sum(case when q201 = 'P' then q204_i else 0 end)) as imports_P,
           round(sum(case when q201 = 'R' then q204_i else 0 end)) as exports_R
    from   final_2016_abs_totals_only
    group by imp_class;

    - July 2019: used this DCG to sum startfund=TRUE/FALSE

    Select    Sex, Level, Without_English, Without_Maths,
              count(LearnRefNumber) as "Total",
              sum(case when StartFund = 0 then 1 else 0 end) as "Startfund_No"
    from      dashboard_data
    group by  Sex, Level, Without_English, Without_Maths
    ;

### select NULL records
    - use `myfield is NULL`
    - do NOT use `myfield = NULL`

### does "select distinct" apply to all columns
    - The problem comes from instinctively believing that
      DISTINCT is a local pre-modifier for a column.
    - Hence, you "should" be able to type
        - `SELECT col1, DISTINCT col2 FROM mytable` (wrong!)
        - and have it return unique values for col2.
    - Sadly, DISTINCT is actually a global post-modifier for
      SELECT. As opposed to SELECT ALL (returning all answers) it
      is SELECT DISTINCT (returning all unique answers).
    - _So a single DISTINCT acts on ALL columns you give it_.
    - This makes it hard to use DISTINCT on a single column,
      while getting the other columns, without doing very ugly
      backflips.
    - The correct answer is to use a GROUP BY on the columns that
      you want to have unique answers: ``` SELECT col1, col2 FROM
      mytable GROUP  BY col2 ```
      - will give you arbitrary unique col2 rows, with their col1
        data as well.


### alternative to a "select sub-clause"
    ```
    select      returns.*
    from        valid_returns returns
    inner join  duplicates    dup
                on (returns.vatref9 = dup.vatref9)
    ```
    instead of
    `select * from valid_returns where vatref9 in (select vatref9 from duplicates)`

### flatten/stack multiple rows into one row
    - join a table to itself!
    create table threshold_hitrates_alternative
    as
    select  no_change.question_no,
            no_change.total                      as errors_no_change,
            changed.total                        as errors_changed,
            no_change.total + changed.total      as total_errors,
            CAST (changed.total as REAL ) / (changed.total + no_change.total) as hit_rate
--> from    threshold_totals_alternative       changed
--> join    threshold_totals_alternative       no_change
            using(question_no)
    where   changed.raw_error_marker   = "E"
    and     no_change.raw_error_marker = "C";

### SQL think in sets
    - SQL: "perform operations on bulk data simultaneously"
    - Joe Celko coined a phrase: "think in sets"
    - Not in loops, not in linear instructions...
        - but in sets, being transformed into other sets.
    - It's a very powerful way of thinking. Most of the time, you
      don't need ORDERED evaluation and so loops are imposing
      unnecessary guarantees on you.

# great theoretical view of SQL
    - washington university
    - Data Manipulation at Scale: Systems and Algorithms
        - https://www.coursera.org/learn/data-manipulation
    - you can show the underlying algebraic query plan for an SQL
      statement using '_explain_'


# handy SQL from masters
    - see what star types a binary system are made up of
        ```
        select combo, count(combo) from
        (select ("kw1" || " +  " || "kw2") as combo from extract)
        group by combo
        order by count(combo) desc;
        ```

# check user and password
	select 1 from TABLE where user=USERNAME and pass=PASSWORD

    - the "1" is for memory/performance reasons
    - ie. just return the least amount possible which lets the
      code know a user and password match was found.

# Indexing
    - create a JOINT index on user AND password
    - cos youre doing a joint search on them speeds things up

# theory
    - The real breakthrough was the separation of the logical
      view of the data, from the physical reality of how it's
      stored.
    - And built into the relational model is that vision: 
        - data independence
    - It lets you change the layout and organisation of your data
      and the systems and machine you’re using without having to
      rewrite your applications every time you change something.

### links
    - MYSQL server               $MY_NOTES/cs/AI-ML/data-eng-devops/mysql.txt
    - good old SQLITE            $MY_NOTES/cs/sqlite-tips.sql
    - hn sql discussion          $MY_NOTES/cs/misc/hn_sql_tips.md

    - Data Manipulation at Scale                        https://www.coursera.org/learn/data-manipulation
    - Thinking in SQL                                   http://www.sohamkamani.com/blog/2016/07/07/a-beginners-guide-to-sql/
    - learn real sql (not clumsy beginner-sql)          https://use-the-index-luke.com
    - learn real sql (not clumsy beginner-sql)          https://modern-sql.com
    - Joe Celkos "smarties" books...                    https://www.amazon.co.uk/Joe-Celkos-SQL-Smarties-Programming/dp/0128007613/
    - faketable unit testing for MS-SQL                 https://github.com/tSQLt-org/tSQLt
    - Foundations of Databases (1995)                   https://news.ycombinator.com/item?id=19726520
    - HN tips                                           https://news.ycombinator.com/item?id=26762206
    - HN SQL tips                                       https://news.ycombinator.com/item?id=27842067
    - Duckdb: Sqlite for analytics                      https://www.youtube.com/watch?v=PFUZlNQIndo
    - GOOD: Designing Data Intensive Applications       https://www.amazon.com/Designing-Data-Intensive-Applications-Reliable-Maintainable/dp/1449373321/
    - oltp v olap differences                           https://techdifferences.com/difference-between-oltp-and-olap.html
    - dbcli: Command line shells for the main databases https://www.dbcli.com/


### handy commands
    <!-- tables -->
        DESC mytable;
        DESC EXTENDED mytable;
        DESC FORMATTED mytable;

    <!-- databases -->
        CREATE DATABASE IF NOT EXISTS mydb;
        CREATE DATABASE mydb LOCATION '/my/fav/folder';
        CREATE DATABASE mydb COMMENT  'This is my databse';
        CREATE DATABASE mydb WITH DBPROPERTIES  ('createdby' = 'ef', 'date' = '2014-01-01');
        USE mydb;
        DESC DATABASE mydb;
        DESC DATABASE EXTENDED mydb;

    <!-- indexes -->
        CREATE INDEX mytab_idx ON TABLE mytab (column2) AS 'COMPACT';
        CREATE INDEX mytab_idx ON TABLE mytab (column2) AS 'COMPACT' WITH DEFERRED REBUILD;
        CREATE INDEX mytab_idx ON TABLE mytab (column2) AS 'BITMAP'  WITH DEFERRED REBUILD;
        SHOW INDEX ON mytab;
        DROP INDEX ON mytab_idx ON mytab;
        <!-- Check this: 'bitmap' indexes -->

    <!-- export data (local filesystem) -->
        INSERT OVERWRITE LOCAL DIRECTORY 'my/folder/dataexports'
        SELECT id, product, date
        FROM   sales
        WHERE  date='2016-01-01';
        <!-- warning: directory overwritten! -->
        <!-- note: data written as txt, 
                   columns separated by '^A', 
                   rows separated by newlines -->

### hive DML
    - joins: ANSI join syntax only!
            > select ...
            > from T1
            > join T2
            > on   T1.a = T2.b

        NOT!
            > select ...
            > from   T1, T2
            > where  T1.a = T2.b

    - joins: only supports equi-joins
    - joins: put largest table on _right_ for better performance
    - joins: subqueries limited: only in FROM clause of SELECT
    - joins: check 'bucket map join'
    - joins: 'ORDER BY': slow, total ordering of resultset using _single_ reducer
    - joins: 'SORT BY':  data sorted by each reducer, if multiple reducers, final results may be off


### Data units
    1. _DATABASE_: Namespace that separates tables and other
       data units from naming conflicts

    2. _TABLES_: homogeneous units of data which have the
       same schema. Tables can be:

            - 'MANAGED'
                - data is stored within sub-directories of
                  the 'hive.metastore.warehouse.dir'
                  location.

            - 'EXTERNAL'
                - useful if sharing the data with other
                  tools outside of HIVE
                - hive doesnt assume it owns the data
                - dropping the table deletes the metadata,
                  but NOT the actual data
                - table is store in a directory outside of
                  the 'hive.metastore.warehouse.dir'
                  location.

    3. _PARTITIONS_: A 'virtual' column which defines how
       data is stored on the file system. (The partition
       'column' is not actually stored in the data file with
       the rest of the data) Each partition is a separate
       _folder_ in HDFS.

    4. _BUCKETS_ (or Clusters): Inside each partition, data
       can be divided into buckets based on the hash of
       a column value. Useful for sampling, join
       optimisation. Each bucket is a separate _file_ in
       HDFS.

    - Note: Partitions, Buckets not mandatory. These
      abstractions allow large amounts of data to be pruned
      during query processing, especially for 'where'
      clauses.

    Database (folder)
        └── Table (folder)
            └── Partition (folder)
                    └── Bucket (file)


### User Defined functions
    - written in JAVA, exported to JAR file
    - add to HIVE session
        - UDF
        - UDAF -> User Defined Aggregate Function
        - UDAF -> User Defined Table Generating Function

### Complex data types
    - Array     A[n]     0-based. Returns nth element of array.
    - Struct    S.x      Return field 'x' of struct 'S'
    - Map       M[k]     Return value for key 'k' in map 'M' (like Python dictionary?)
    - Union     ??

### Example (local portable cluster)
    > CREATE TABLE pokes (foo INT, bar STRING);
    > LOAD DATA LOCAL INPATH './tools/apache-hive-2.1.1-bin/examples/files/kv1.txt' OVERWRITE INTO TABLE pokes;
    > DESCRIBE pokes;
    > select * from pokes where foo < 30 order by foo;
    > select count(*) as total from default.pokes;
    > !quit


### handy package
    git clone https://github.com/enahwe/Csv2Hive.git

    <!-- generate hql -->
    ./csv2hive.sh ~/salaries.csv

    <!-- creates a salaries.hql -->
        DROP TABLE salaries;
        CREATE TABLE salaries (
            Id               decimal,
            EmployeeName     string,
            JobTitle         string,
            BasePay          decimal,
            OvertimePay      decimal,
            OtherPay         decimal,
            Benefits         boolean,
            TotalPay         decimal,
            TotalPayBenefits decimal,
            Year             decimal,
            Notes            boolean,
            Agency           string,
            Status           boolean
        )
        COMMENT "The table [salaries]"
        ROW FORMAT DELIMITED
        FIELDS TERMINATED BY '\,';
        LOAD DATA LOCAL
        INPATH '/home/hadoop/Csv2Hive/bin/salaries.csv' OVERWRITE INTO TABLE salaries;



to investigate:
    - partition columns (show using "describe table")
    - use views
    - explain query
    - CREATE VIEW AS precipitation_data SELECT * FROM weatherext WHERE precip IS NOT NULL AND precip > 0;
    - use indexes
    - CREATE INDEX date_index ON TABLE weather (date) AS ‘COMPACT’ WITH REBUILD;


### Partitioning

    - Eg a weather table: the data can be partitioned on the
      basis of `year` and `month` and when query is executed
      the 'year' and 'month' partitions can be used as
      "virtual" columns.

        CREATE EXTERNAL TABLE IF NOT EXSISTS weatherext ( wban INT, date STRING)
        _PARTITIONED BY (year INT, month STRING)_
        ROW FORMAT DELIMITED
        FIELDS TERMINATED BY ‘,’
        LOCATION ‘ /hive/data/weatherext’;

    - Loading data into partitioned tables is different than
      non-partitioned one. There is some extra work
      mentioning the partition data. Data can be loaded into
      partition, year 2012 and month 01 and 02 as follows:

    LOAD DATA INPATH ‘hdfs:/data/2012.txt’ INTO TABLE weatherext `PARTITION (year=2012, month=’01’)`;
    LOAD DATA INPATH ‘hdfs:/data/2012.txt’ INTO TABLE weatherext `PARTITION (year=2012, month=’02’)`;

    - Partitioned tables can use partition parameters as one
      of the columns for querying. To retrieve all the data
      for month of ‘02’ following query can be used on
      weather table.

    > SELECT * FROM weatherext WHERE month = ‘02’;


### ibm bigdata university

### Hive directory structure
    - Lib folder: _$HIVE-HOME/lib_   JAR files
    - Lib folder: _$HIVE-HOME/bin_   Scripts/services
    - Lib folder: _$HIVE-HOME/conf_  Config files

### Metastore
    - consists of 2 pieces:
      - Metastore Service
      - Datastore (Database)

    - Can run in 3 possible configs:
        Note: "Process" = Hive Service JVM

        1.  Embedded: in-process metastore service
                      in-process database (Derby) --> one user at a time

        2.  Local:    in-process metastore service
                      out-of--process database

        3.  Remote:   out-of--process metastore service
                      out-of--process database


### basic builtin functions
    > SHOW FUNCTIONS (-> list all functions)
    > DESC FUNCTIONS (-> function documentation)
    - round (double a)
    - floor (double a)
    - ceil (double a)     max bigint value >= than the double
    - substr(string A, int start)
    - length(string s)
    - year(string timestamp)
    - get_json_object(string json_string, string path)
    - sum(col)
    - avg(col)
    - min(col), max(col)
    - explode(array)
    - explode(map)

### Window/Analytic Functions
    - Windowing functions
        - LEAD
        - LAG
        - FIRST_VALUE
        - LAST_VALUE

    - OVER clause
        - OVER with standard aggregates
            - COUNT
            - SUM
            - MIN
            - MAX
            - AVG
        - PARTITION BY, ORDER BY etc

    - Analytics functions
        - RANK
        - ROW_NUMBER
        - DENSE_RANK
        - CUME_DIST
        - PERCENT_RANK
        - NTILE

### derby embedded metastore
    create new metastore
        > ${hive_home}/bin/schematool -initSchema         -dbType derby
        > ${hive_home}/bin/schematool -initSchemaTo 1.2.0 -dbType derby
        > schematool -dbType derby -info

    "ij" cli - browse derby database
        > ij
        > connect 'jdbc:derby:metastore_db';
        > select * from version;

### errors:

beeline: _Unable to instantiate org.apache.hadoop.hive.ql.metadata.SessionHiveMetaStoreClient_
         Probably the Derby metastore is being used by
         another process (eg hiveserver2). Only one process
         can connect to the embedded derby metastore at
         a time.

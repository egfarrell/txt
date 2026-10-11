/* 
   ef-note: 
        See: $MY_NOTES/cs/SAS_tips_general.txt 

   ef-note: 
        some WPS (SAS clone) tips at the bottom 
*/


/* read sas file in Python*/
    import sas7bdat
    import pandas as pd
    data = '/path/to/file.sas7bdat'
    handle = sas7bdat.SAS7BDAT(data)
    df = pd.read_sas(data, encoding=handle.encoding)

    /*
        The up-side to this is that the handle is lean and doesn't read
        the file into memory to access this info.

       There is also the capability to use
       handle.to_data_frame() to read the data in. This can
       help you parse dates at the point you read it in if
       its close to being memory intensive [although its much
       slower at getting it into memory than the above and is
       harder to set up iterators].

        It can also push SAS dates through to datetime.date
        formats as well though so if you have things with
        genuine dates rather than text strings the extra time
        to parse the file might be warranted if it saves you
        effort in data munging.
    */




/* Jons SAS tricks */
	options xwait xsync;
	/* X command to change current directory*/
	x "cd &location1.";
	x "&pyscriptloc.";


	proc sql;
        select distinct question into :impquest separated by ' ' from sd_imps;
        select distinct cat(question,"_newimp") into :impquest2 separated by ' ' from sd_imps;
        select distinct cat(question,"_ErrCode") into :impcode separated by ' ' from sd_imps;
	quit;


/* check "nolabel" and "dictionary.indexes" */
    proc sql;
      options nolabel ;
      create unique index inx_dz_ind on w (b, d);
      create table q as
      select * from dictionary.indexes
        where libname = "WORK"
          and memname = "W" ;
      options label ;
   quit


/* copying sas datasets: */
    - if the dataset has an index defined (as a separate "xxxx.sasbndx" file)
    - then if you copy the dataset
    - you must copy the '.sasbndx' index file as well!
    - or else you get a 'file damaged' error

/* libname naming rules: */
    - No more than 8 characters.
    - First character must be a letter.
    - Subsequent characters may be letters, numbers or an underscore.
    - No spaces.

/* find out what the current (relative) path is  */
    LIBNAME here '.';


/* quit immediately on all errors */
    options ERRORABEND;


/* Handle timestamp stuff */

    PROC SQL;
            CREATE TABLE a_job_log
                (
                msgtime     Date Length=8 Format=DATETIME22.3 Informat=DATETIME22.3,
                msg         char(100)
                );
    QUIT;

    PROC SQL;
            INSERT INTO a_job_log (
                                   msgtime,
                                   msg
                                  )
            VALUES                (
                                   %sysfunc(datetime()),
                                   &msg
                                  );
    QUIT;



/* sas redirect log file: */
    Proc Printto log='mylogfile.txt';
    Run;
    /* .... some stuff */
    Proc Printto ;
    Run;

/* data step variable name wildcard selector */
    /* drop all variables beginning with 'X' */
    data TEST2;
        set TEST1;
        drop X: ;
    run;


/* proc sql numeric format with commas */
            turnover  FORMAT=comma18.0,
            Employees FORMAT=comma15.0


/* findout all the columns in a table - 'feedback' + 'validate' */
    proc sql feedback ;
        validate
            select *
            from DATA.cora_2016_q2;
    quit ;


/* force uppercase */
    %if %UPCASE(&choose_dealers_only) = YES %then  ...

/* put a macro variable INSIDE single quotes */
        proc import
            datafile = "&location.\&workbook" replace
            dbms     = excel
            OUT      = HERE.&sheet_name;
            sheet    = %unquote(%nrbquote('&sheet_name'));
        run;

/* does a file exist? */
    %if %sysfunc(exist(COMP_CURR)) %then
    %do;
        %put 'COMP_CURR' dataset exists already!;
    %end;
    %else
    %do;
        ... create 'COMP_CURR';
    %end;


/* manually create a table */
        PROC SQL;
            CREATE TABLE bias_output
            (
                strata         num ,
                question       char(5) format=$CHAR5. informat=$CHAR5.,
                RIB            num ,
                ARIB           num
            );
        QUIT;


/* handy sql query */
            proc sql;
                select      "¦",
                            cora.q1000            as  q1000_cora  FORMAT=12.3,
                            cora.q1000_ErrCode    as  E1C,
                            iolo.q1000            as  q1000_iolo  FORMAT=12.3,
                            iolo.q1000_ErrCode    as  E1I,
                            andy.q1000            as  q1000_andy  FORMAT=12.3,
                            andy.q1000_ErrCode    as  E1A,
                            "¦"

                from        POSTIMP.cora_2015_q25_0           cora
                left join   IOLO.extract_266_q2_155_0         iolo  on CORA.RUReference = IOLO.RUReference
                left join   ANDY.extract_266_q2_29june5_0     andy  on CORA.RUReference = ANDY.RUReference
            quit;



/* show time */
    %put Time is:  %sysfunc(time(), timeampm.) on %sysfunc(date(), worddate.);


/* assign a variable within a datastep */
    /* you MUST define its TYPE first! */
    data _null_;
        length myvar 4;
        myvar = 1;
        put 'myvar is ' myvar;
    run;


/* debug sas macro programs */
    options mprint mlogic;


/* DOUBLE DOT(!) if selecting using macro variables */
            select  *
            FROM    &libname..&dataset;


/* macro variable in folder path (dont use quotes!) */
    /* RIGHT */
        %let snippet_folder = D:\path\to\my\snippets;
        %include "&snippet_folder.\header.sas";

    /* WRONG */
        %let snippet_folder = "D:\path\to\my\snippets";
        %include "&snippet_folder\header.sas";


/* debug inside a data step */
        /* ef-debug: dummy code to test put statements */
        if (KeyResponder = 'K' ) then
        do;
            put 'its a key responder! ' RUReference= ;
        end;
        else
        do;
            put 'went into other branch ' RUReference= ;
        end;



/* What are SYMPUT and SYMGET?  */
    - 'SYMPUT' is a SAS language routine that assigns a value
      produced in a DATA step to a macro variable.

    - Conversely, 'SYMGET' is a SAS language function that
      returns the value of a macro variable to the DATA step
      during DATA step execution.

        if symget("q&l._&j") = 1 then
        do;
            ...
        end;


/* show table info/contents/description */
    proc sql;
        DESCRIBE TABLE mylib.mydataset;
    quit;

/* give a summary of a file: eg columns etc */
    proc contents data = MYLIB.mydataset;
    run;


/* transpose a dataset */
    proc transpose data=MYLIB.mydataset
        out=MYLIB.mydataset_flipped;
    run;


    /*
       you must specify each column header from the old wide
       format as a "var" variable... Otherwise SAS starts to
       *summarise* the transposed data
    */
    proc transpose
            data = here.filtered
            out  = here.filtered_flipped;
            var   Period;                     * <---- old column header in "original" wide datset ;
            var   CurrentSIC;                 * <---- old column header in "original" wide datset ;
            var   RUReference;                * <---- old column header ...                       ;
            var   Employees;                  * <---- old column header ...                       ;
            var   FormStatus;                 * <---- old column header ... etc etc               ;
            var   IDBRPeriod;
            var   Turnover;
            var   q0131;
    run;

    PROC SQL;
        select  *
        FROM    here.filtered_flipped
        order by _NAME_;  * <---- these used to be column headers;
    QUIT;




/* delete a dataset */
    PROC Delete data = Libref.DataName;

    PROC SQL;
        drop table Libref.DataName;
    quit;

    PROC Datasets library = Libref;
                delete    DataName;
    run;



/* check what local return means */
    %if not %symexist(RETURN) %then %local return ;



/* # debugging */
    Use PUTLOG to inspect the value.
    data _null_;
        putlog "sum 2 is: &sum2";
    run;



/* macro logical 'or' */
    %if  (&q = 3010) OR (&q = 3011) OR (&q = 3014) %then



/* jump skip to end of a loop! */
    %do i = x to x;
        %if  (&q = 3010)  %then %goto skipit;
        ...
        ...
        ...
        %skipit:
    %end;




/* find the work library */
    %let address = %sysfunc(pathname(WORK));
    %put &address;



/* comparing a macro variable to a string */
    `%if "&cols" = "count(*)" %then  ...`

    In the SAS macro language, everything is a character string,
    so your statement

    %if prod = "&prod" %then %do;
        Will never be true; the string prod will never equal
        the string "&prod" if only because one string
        includes double-quotes and the other does not.

    So use double-quotes on both sides or not at all. Either
    of these will be better:
    `%if "prod" = "&prod" %then %do;`
    `%if  prod  =  &prod  %then %do;`




/* Supress uninitialized messages */
    You could just turn off all the notes with the
    '_nonotes_' option...



/* header make listings as wide as possible and cancel all titles  */
    OPTIONS NONUMBER NODATE PAGESIZE=32767 LINESIZE=256 NOCENTER;
    title;



/* PROC SQL select: specify output column heading/label */
    select  Reference   label='Ref',

    ...
    cora.q1000            as  q1000_cora  label='q1000 cora'  FORMAT=12.3,
    cora.q1000_ErrCode    as  E1C         label='E1C',



/* PROC SQL select: specify output column length */
    'simple' as  case_er length=7



/* # check this */
    Use PUTLOG to inspect the value.  Copy the value from
    the log and see if you can use it to open the file.



/* # control width, page size of 'lst' listing file */
    OPTIONS PAGESIZE=200 LINESIZE=256 NOCENTER;



/* # gotcha! with "proc sort" */
    if no "_out_" is specified for a "proc sort" step, then
    the underlying dataset is permantently changed(!)

/* # gotcha! */
    lines cant exceed 252 characters (got an "unbalanced quote errror once on a long line")

/* # gotcha! */
    /* right (single quote) */
        %debug ('         calling macro: %topping_up_sic07');

    /* wrong (double quote) */
        %debug ("         calling macro: %topping_up_sic07");
        Actually 'executes' %topping_up_sic07 macro somehow!

/* # gotcha! */
    - If code was triple commented out, then SAS Batch would
      ignore the next line, although SAS Enterprise guide would
      detect it.


/* # output blank lines with %put */
        %put ;
        %put &row_count rows imported from &excel_sheet;
        %put ;



/* # SAS enterprise shortcut keys */
    F3 	        Execute selection
    c+/ 	    Comment line
    c+shift+/ 	UnComment line



/* # data step option */
    access=readonly; !!!!!



/* # print a proc summary to lst */
    best method
        (notice 'PRINT'):
        proc summary data = MYLIB.mydataset PRINT;
        run;

    old method:
        proc summary data= testing.neighbour_periods_beforesort_503;
            by class;
            var ru_vat_to;
            where class="D_4";
            output median=med;
            proc print; run;
        run;



/* # time PROC SQL queries */
    proc sql STIMER;
    quit;



/* # PROC SQL indexes! */
    proc sql;
        create index myidx on mytable;
    quit;



/* SQL Trick #1: Drop and Keep Options */
    You can use the DROP and KEEP options on the FROM or
    CREATE statements. This is handy when you want to
    exclude or include a list of variables.  Consider this
    example where I saved myself some typing because I know
    the only variable I don’t want is country. Otherwise
    I would have had to type out all of the other variables
    just to exclude a single one.

    proc sql;
    create table Newtable  as
        select *
        from sashelp.prdsal2 (drop=country);
    quit;



/* SQL Trick #2: Limit the Observations */

    /* OBS allows you to control the number of observations
     * input to the procedure.   */

    proc sql;
        create table Newtable
        as
            select *
            from sashelp.prdsal2 (obs=5);
    quit;

    PROC SQL outobs=100;
        ...
    QUIT;

    PROC SQL also has a 'OUTOBS' and 'INOBS' options...



/* SQL Trick #3: Renaming Variables */
    You can rename a variable as you input or output the
    data.  This is useful if you just have a few variables
    that need a new name and you want to avoid typing all
    the variables.  Here’s how it works:

    proc sql;
        create table Newtable  (rename=(country=CTRY))
        as
            select *
            from sashelp.prdsal2;
    quit;




/* get column names from table */
    /* note!!! put libname, memname values in CAPITALS */
    proc sql ;
      select  name
      from    dictionary.columns
      where   upcase(libname) = "METHOD4" <---- should be caps
      and     upcase(memname) = "RATIO_MISSING"; <---- should be caps
    quit ;


    %macro get_cols (libname, dataset);
            proc sql ;
                select  name
                from    dictionary.columns
                where   name like  "%ErrCode"
                and     upcase(libname) = upcase("&libname")
                and     upcase(memname) = upcase("&dataset");
            quit ;
    %mend get_cols;

    %get_cols (savework, cora_2016_q2_altered1_0)



/* SQL select from DUMMY table */
        key bit: sashelp.class (obs = 1)
        select "my text" from sashelp.class (obs = 1) ;



/* # run windows commands! */
    x 'echo hello'



/* # check this! */
    DM 'wwindowbar off';
    DM 'awsmaximize on';
    DM 'af aws=no cat=gessys.gesmenu.usrinfo.frame' af;
    DM 'wwindowbar off';
    RUN;



/* # informats */
    _Informats_ tell SAS how to read a variable. This is
    important when you read in data from an external file
    with the _INPUT statement_ in a DATA step and also when
    you create a new variable in a dataset.

    Every variable in any SAS dataset will have an informat,
    and it’s always a good idea to check your SAS data to
    see what the informat is for each variable. This will
    help you ensure that the imported data were read in
    properly.

    Three main classes of informats:
    - character
    - numeric
    - date

    Here are some examples:

    Type 	Informat Name 	What it Does
    Character 	$w. 	Reads in character data of length w.
    Numeric 	w.d 	Reads in numeric data of length w with d decimal points
    Date 	MMDDYYw. 	Reads in date data in the form of 10-01-81

    Notice that all informats names contain a period; this helps
    SAS recognize that it is an informat name rather than
    a variable name. SAS will not recognize the informat name
    without the dot. What is a format?

    Defining a format for a variable is how you tell SAS to
    display the values in the variable (e.g., how you will see
    it). Formats can be grouped into the same three classes as
    informats (character, numeric, and date-time) and also
    always contain a dot. The format for a variable does not
    have to be the same as the informat for the variable. While
    an informat is declared when you are reading in data or
    creating a new variable in a data step, the format statement
    can be used in either a data step or a proc step.

    - Assigning a format to a variable in a _data step_ will
      permanently store the variable’s format assignment as
      part of the dataset.

    - Assigning a format to a variable in a _proc step_ will
      temporarily store the variable’s format assignment for
      the proc step it is used in.

    Every variable will have a format – whether you assign
    one or you let SAS assign one automatically. It is to
    your advantage to assign formats that make sense to you
    and that you can easily interpret when you see the
    values displayed in the dataset or in your output.




/* # converting from numeric to char */
    - error if numeric is missing
    - error if numeric has non numeric values
    solution
        ?? format modifier

    Use the Format Modifiers ? or ?? on the input statement
    (or input function)

    ?
        suppresses printing the invalid data note when SAS
        encounters invalid data values.

    ??
        suppresses printing the messages and the input lines
        when SAS encounters invalid data values. The
        automatic variable _ERROR_ is not set to 1 for the
        invalid observation.

    For example:
        input x ?? 10 10-12;

    Is the same as:
        input x ? 10 10-12;
        _error_=0;





/* # coerce dataype in a select statement! (put) */
    left((put(min (ACCOUNT_NUMBER),7.))         as ACCOUNT_NUMBER,



/* # direct SQL output to a text file! */
    Filename out C:\sql-query.txt new;

    Proc Printto print=out;
    Run;

    Proc SQL;
        Select monotonic() as obs,
               a.VarCost,
               a.FixedCost
        from Cost a;
    quit;




/* # check if macro parameter/variable exists */
    %macro mymacro(cols);
        %if %length(%superq(cols)) = 0 %then
        %do;
            cols parameter is empty ...
        %end;
    %mend;


/* # check if macro variable exists  */
    %if not %symexist(PROP1) %then
    %do;
            %PUT "PROP1 does *NOT* exist!";
    %end;
    %else
    %do;
            %PUT "yes! PROP1 exists!";
    %end;



/* # handle macro variable with commas "%bquote"!! */
   `%show_files(minp=504, maxp=516, filename=stage15.four_quarters_, cols=%bquote(&mycols));`




/* # SQL output options */
        'number': print row number
        'flow'  : wrap column width
        proc sql number flow=12;
            ....
        quit;




/* # control width page size of lst output file */
    OPTIONS PAGESIZE=200 LINESIZE=256 NOCENTER;




/* # import CSV file */
    (note: if you want to change the column formats, do it
    in SAS enterprise and then copy the auto-generated code)

    proc import
        datafile = "D:\Enda\VAT\code-enda\misc\test-cases.csv"
        out      = MISC.test_cases
        dbms     = CSV replace;
        getnames = yes;
    run;

    proc contents data = MISC.test_cases;
    run;




/* # SQL limit (outobs) */
    method 1:
        proc sql outobs=10;
            select *
            from   mytable;
        quit;

    method 2:
        select  *
        from mytable (obs = 1);




/* # SQL: select straight into print "lst" file */
    proc sql;
        select vatref9, count(vatref9) as vatref9_instances
        from STAGE10.&vatentfile
        group by vatref9
        having calculated vatref9_instances = 1;
    quit;



/* # SQL: check this: difference "where" and "having" */
    correct:
        having    calculated entref_instances  = 1;
    wrong???:
        where     calculated entref_instances  = 1;

    partial answer:
        the SQL standard requires that HAVING must reference
        only columns in the GROUP BY clause or columns used
        in aggregate functions as opposed to the WHERE
        clause which is applied to database rows



/* # SQL: yes! you can do a "count distinct" */
    select count(distinct vatref9) from outlib.&vatentfile.many_to_one;




/* # SQL: nice statement: "where x gt 1" */
    Update STAGE13.ruto_&period.
        Set case_er = 'complex'
        Where entref in (select entref
                         from   STAGE13.assess_comp
                         where  associated_rus gt 1);



/* # import from Excel! */
    - _out=_ option in the proc import tells SAS what the
      name should be for the newly-created SAS data file and
      where to store the data set once it is imported.
    - _datafile=_ option tells SAS where to find the file we
      want to import.
    - _dbms=_ option is used to identify the type of file
      being imported.
    - To specify which sheet SAS should import use the
      _sheet="sheetname"_ statement.  The default is for SAS
      to read the first sheet.  Note that sheet names can
      only be 31 characters long.
    - The _getnames=YES_ is the default setting and SAS will
      automatically use the first row of data as variable
      names. If the first row of your sheet does not contain
      variable names use the getnames=no.




/* # export to EXCEL! */
    ```
    proc export
        data    = stage10.vatent_201602_ents_with_many
        dbms    = xlsx
        outfile = "D:\Enda\VAT\datasets\stage-10-ve_employment\test.xlsx"
        replace;
    run;
    ```



/* # this creates an error! */
    %put 'after four_quarter data step!'
    %return

    ERROR: Macro keyword RETURN appears as text.
    ERROR: A dummy macro will be compiled.



/* # location of my SAS temp WORK lib */
    `C:\Users\farree\AppData\Local\Temp\SAS Temporary Files\_TD2304_ONS18405_ `


/* set custom work library */
    %macro set_custom_USERLIB;
            /*
            SAS allows temporary WORK files to be saved to an alternative
            local folder. This can be handy if debugging an error.
            */
            %make_folder("&CURRENT_PATH", "_worklib");
            libname SAVEWORK "&CURRENT_PATH\_worklib";
            options USER = SAVEWORK;
    %mend;

    /*
       note: if you use the macro above, all your files as listed in
       'dictionary.columns' will be under the libname 'USER', and not 'WORK'
    */



/* don't clear work library when program finished */
    options NOWORKTERM ;



/* # mad error! put statement inside 'proc sql' */
    ```
    proc sql;
               %put 'in the sql proc now ' --- _;_ <----------- dont forget ";" !!
    quit;
    ```
    otherwise nothing afterwards
    will get executed properly




/* # put versus %put */
    inside proc sql put statments
    right: %put
    wrong: put


/* # exit a macro function */
    %return;

/* quit/stop execution */
    data _null_;
        abort abend;
    run;


/* # supress printing reams of source-code in the log */
    option nosource nosource2


/* # add new column to a Table via SELECT statement */
    select count(*),
           'simple' as  case_ve  length=7
    from some_table;

    /* Adds new column called "case_ve" which has value of
     * 'simple' for all rows, and a column type of "char(7)"
     * */



/* # concatenation */
    All these indicate concatenation:

        - Two OR symbols            (||),
        - two broken vertical bars  (¦¦),
        - two exclamation points    (!!)




/* # show work library */
    %put %sysfunc(getoption(work));



/* # padding a macro variable */

    %do i = 1 %to 20;
       /* pad loop counter */
       %let number = %sysfunc(putn(&i, z2.));





/* # booleans */
    Base SAS has only two datatypes: Numeric, and Character.
    Numeric has length 3 bytes to 8 bytes possible,
    character has any length (1 byte or more).

    Boolean expressions in SAS are equivalent to numeric
    values;
        - a 0 or Missing (Null) value is "False",
        - any other value (negative or positive) is "True".

    Assigning the result of a boolean expression in SAS to
    a value results in
        - 1 for "TRUE"
        - 0 for "FALSE"




/* # "like" keyword ; */
 create table rows_to_replace
            like ru_vat_to_m&period.;



/* # macro names ; */
    no "-" characters!



/* # ERROR: The %IF statement is not valid in open code. ; */
    All '%if' statements must be bracketed inside:
    %macro
        ...stuff...
    %mend;



/* # if syntax ; */
    %if &city ne 1 %then
    %do;
        keep citypop statepop;
    %end;
    %else
    %do;
        keep statepop;
    %end;



/* # macro commands need this type of comment!!! ; */
    /*
       %do i = 1 %to &period_num. ;
    */
    not the other single line comment style!!!


/* # mad error - this comment causes an error! */
    %macro Check(Lib=);
        %local rc;
        %let rc = %SYSFUNC(LIBREF(&LIB));
        * this style comment will cause an error!;
        &rc;
    %mend;


/* # view macro variables ; */
        %put _ALL_;         * List current value of every macro variable in sas log;
        %put _USER_;        * user defined macro variables ;
        %put _LOCAL_;       * macro variables local to the executing macro. ;
        %put _AUTOMATIC_ ;  * defined by the SAS system;
        %put _GLOBAL_;      * session wide macro variables (global symbol table);


/* # counter N ; */
    The counter N counts the iterations through the
    implicit loop of the DATA step. It increments when the
    top of the loop is encountered.

    N is only a place that SAS puts the value of an
    internal counter which we never see and have no way of
    changing. Whatever you do to 'N' in a data step, when
    the loop comes to the head of the DATA step, SAS will
    place the incremented value of the internal counter in
    N.



/* # SYMPUTX */
    Syntax:
        Call Symputx ("Macro Variable", Character Value, Symbol Table)

    SYMPUTX addresses the pitfalls of SYMPUT.

    Advantages of "SYMPUTX" over "SYMPUT":
        - SYMPUTX automatically _convert_ the numeric
          variables to character variables before assigning
          it to macro variable. (No need of manual
          conversion using PUT statement)

        - Call Symputx _strips_ leading and trailing blanks.
          So no need of using STRIP or LEFT function to
          remove the leading spaces




/* # syntax checking ; */
    OPTIONS OBS=0 noreplace;

    - "_obs=0_" specifies 0 observarions are read from the
      input dataset

    - "_NOREPLACE_" tell SAS not to overwite existing SAS
      datasets with one of the same name.

    When creating a new datastet, it will be created with
    all the attributes, but 0 observations. (Be sure to
    reset the options, if needed, to Options Obs=max
    replace; when no more syntax errors are found).


    I use the _cancel_ option on the run statement. It will
    check the syntax of the data step then terminate it
    without actually executing it. Its the data step analog
    to the noexec option in proc sql.

        data something;
            ... stuff here ...
        run _cancel_;

     Good tip. I remember now getting a tip to use a *macro
     variable* instead of "cancel". You can change the macro
     variable to be blank when you really want to execute
     the program.





/* #  :periods_to_check  - whats the colon?; */
    proc sql noprint;
        select nobs
        into   :periods_to_check
        from   dictionary.tables
        where  upcase(libname) = 'WORK'
        and    upcase(memname) = 'WHERE_TO_LOOK';
    quit;



/* # put ; */
    The %PUT macro statement or %PUT statement is a SAS
    macro that displays text or the values of macro
    variables in the *SAS log*.




/* # macro names and dots! */
    /*
      With normal '&' syntax, SAS allows the use of a dot
      (period) to mark the end of the macro variable name.
      You are allowed to use this in all cases, but it isnt
      needed unless the character following the macro
      variables name could be interpreted as part of the name.
      Many programmers seem to add a dot whenever the variable
      name is followed by anything but a space. This comes up
      most often in path names:
    */

    * dot not needed (because slash next);
        %let project=MADDOG2020;
        libname data "/projects/&project./rawdata";

    * better ;
        %let project=MADDOG2020;
        libname data "/projects/&project/rawdata";

    * dot is needed! Title should read "All Patients", but ;
    * without the dot SAS would try to resolve a non existant ;
    * variable '&subpats' ;
        %let subpat=Patient;
        title1 "Demographics - All &subpat.s";




/* # lst files ; */
     In batch mode, SAS doesnt delete a pre-existing output
     file "myfile.lst" if you have no correct output.

     So if myfile.sas crashes/has errors the current file
     'myfile.lst' may be the output of a previous run of
     'myfile.sas', even if that version analyzed different
     data for a different purpose!

     Most SAS users have been misled by this at least once.
     It is good practice to always check the end of
     'myfile.log' before looking at myfile.lst .



/* # combine/merge(?) datasets */
    data data.mycombined;
        set ips_visits1
            ips_visits2
            ips_visits3;
    run;


/* # move/copy 'ips_visits1' from work area to another library */
    data mylib.ips_visits1;
        set ips_visits1;
    run;

/* # save/copy a dataset ; */
    data [name of *new* dataset];
        set [name of dataset to be *read in*];
        ... do stuff ...
    run;


/* # supress Observation Number column in output ; */
    proc print data=qtr01 NOOBS;
    run;



/* # print data (goes to 'lst' file) ; */
    data data.ips_visits1;
        set ips_visits1;
    run;

    proc print;
    title 'will print data.ips_visits1'
    run;



/* # save dataset to html ; */
    ods listing close;
    ods html body = 'H:\sas-output.htm';
    proc print data = ips_visits1 noobs;
    title 'SAS Output';
    run;
    ods html close;
    ods listing;




/* # fussy quote marks! */
    wrong 'single-quotes':
        newfolder = dcreate('&stage1_folder.', '&base_folder.');

    right "double-quotes":
        newfolder = dcreate("&stage1_folder.", "&base_folder.");
                            ^               ^
                            |               |
                            |               |
                            |               |

    /*
       It is well known that macro variables do _not resolve
       within single quotes_ - what if you have a need to
       include a macro variable WITHIN single quotes?

        use %str(%')

       Eg: say you have a macro variable named YADAYADA then
       the syntax would be:

       %str(%')&YADAYADA.%str(%')

       This can be especially helpful for database passwords,
       among other things.
    */



/* # macro functions */
    - ...  I would remove the semicolon that your macro is returning: &nlobs; 
    - Typically a macro function returns just the value, without a semicolon, so
    that it can be called in the middle of a statement. 
    - Im a big fan of Peter Crawfords simple macro utility %NOW, and his
    macro-function design paper that describes it: [Peter
    Paper](http://www2.sas.com/proceedings/sugi31/038-31.pdf) 
- Understanding macro functions changed my understanding of the macro language.



/* # create a folder! */
    options dlcreatedir;
    libname newdir "/u/sascrh/brand_new_folder";



/* # sas aws */
    - https://support.sas.com/software/products/university-edition/faq/main.htm
    - Goto Amazon Marketplace
    - Goto my "Your Software" (ie My subscriptions)
    - Click "Lanuch More Software"
    - Choose "Manual Launch (with EC2 Console, API or CLI)"

    key point!
        1. instance must have a _Public IP Address_
        2. _Security group_ must have this rule:
            Type    Protocol    Port Range      Source
            http    tcp         80              0.0.0.0/0
        3. In browser, navigate to Public IP
        4. Enter user:     "sasdemo",
           Enter password: "instance id" (eg. i-a110952a)


    Security Group

    The vendor recommends using the following security group
    policies. You will be able to select these settings or
    configure your own when launching this software.

    Connection MethodProtocolPort RangeSource (IP or Group)
    SSH             tcp        22 - 22    0.0.0.0/0
    HTTP            tcp        80 - 80    0.0.0.0/0
    HTTPS           tcp        443 - 443  0.0.0.0/0




/* # old code: */
    %macro VerifyLib(LibraryName);
        /*
            EFarrell - a library may be defined with
            'libname' but does the folder/dataset it
            points to actually exist? This function
            will check.

            returns:
                    rc =  '0':  if library exists
                    rc <'0':  if library doesnt exist

            note:
                this macro creates a global variable '%LIB_EXIST'

            usage:
                    %if %CheckLib(mylibrary) ne &LIB_EXISTS
                    %then
                        ...do stuff... ;
        */
        %global LIB_EXIST;
        %let    LIB_EXIST = 0;
        %local  rc;
        %let    rc = %SYSFUNC(LIBREF(&LibraryName));
        /*
        Warning! Theres no semi-colon after '&rc'
        below! Semicolons aren't required for macro
        functions to execute, and we don't want to
        return any (extra) trailing semicolons.
        */
        &rc
    %mend;



/* # Re: Ways to overcome the ERROR: A lock is not available for dataset */
    ah doesnt work in SAS 9.3 (just 9.4?)

    -FILELOCKWAIT 20

    I was getting this error intermittently and I suspected it
    was due to latency issues with regard to our network.

    After some searching and hair pulling, I discovered that
    there is a SAS startup/configuration variable that allows me
    to increase the amount of time that SAS waits before
    declaring/throwing a 'File Lock' error.

    For version 9.4, the SAS startup configuration file is located at (in Windows):
        c:\program files\SASHome\SASFoundation\9.4\nls\en\sasv9.cfg

    The following configuration option variable was set by
    adding a line to the above referenced sasv9.cfg file
    -FILELOCKWAIT 20

    This option/value compels SAS to wait up to 20 seconds
    before throwing a 'File Lock' error.  You can/should
    experiment to see how long you need (i.e., there is nothing
    sacred about the 20 value).

    As with any configuration file, attention must be paid to
    where the new line is inserted.  Guidance is provided in the
    existing configuration file. After you restart SAS, you may
    check that the new values by executing proc options; run;
    This has solved my problem.  Your mileage may vary.


/* Choose a simple random sample of the valid responses to simulate the imputation */

    SAMPSIZE=(values)
    N=(values)

        specifies sample sizes for the strata. You can
        separate values with blanks or commas. The number of
        SAMPSIZE= values must equal the number of strata in
        the input data set.

        List the stratum sample size values in the order in
        which the strata appear in the input data set. When
        you use the SAMPSIZE=(values) option, the input data
        set must be sorted by the STRATA variables in
        ascending order. You cannot use the DESCENDING or
        NOTSORTED option in the STRATA statement.

        Each stratum sample size value must be a positive
        integer. For without-replacement selection methods,
        by default, PROC SURVEYSELECT does not allow you to
        specify a stratum sample size that is greater than
        the total number of units available in the stratum.
        If you specify the SELECTALL option, PROC
        SURVEYSELECT selects all stratum units when the
        stratum sample size exceeds the number of units in
        the stratum.


    SAMPSIZE=SAS-data-set
    N=SAS-data-set
        names a SAS data set that contains the sample sizes
        for the strata.

        You provide the stratum sample sizes in the
        SAMPSIZE= input data set variable named _NSIZE_ or
        SampleSize. Each stratum sample size value must be
        a positive integer.

        The SAMPSIZE= input data set should contain all the
        STRATA variables, with the same type and length as
        in the DATA= data set. The STRATA groups should
        appear in the same order in the SAMPSIZE= data set
        as in the DATA= data set. The SAMPSIZE= data set is
        a secondary input data set. See the section
        Secondary Input Data Set for details. You can name
        only one secondary input data set in each invocation
        of the procedure.

        For without-replacement selection methods, by
        default, PROC SURVEYSELECT does not allow you to
        specify a stratum sample size that is greater than
        the total number of units available in the stratum.
        If you specify the SELECTALL option, PROC
        SURVEYSELECT selects all stratum units when the
        stratum sample size exceeds the number of units in
        the stratum.



/* ### Setup WPS (SAS) for jupyter notebooks */


note: WPS must be installed and license file imported


/* ### update path to "wpsjkrnl" */

    ... wps-3.3.1/jupyter/kernel.json:

    > "argv": ["/home/ef/wps/wps-3.3.1/bin/wpsjkrnl", "{connection_file}"],
                ^^^^^^^^^^^^^^^^^^^^^^^
                | | | | | | | | | | | |
                | | | | | | | | | | | |


/* ### install the kernel ("--user") */

    > jupyter-kernelspec install --name=wps --user /home/ef/wps/wps-3.3.1/jupyter/

    - location of "jupyter-kernelspec":

            ~/anaconda3/bin


/* ### location of "--user" installed kernels: */

    ~/.local/share/jupyter/kernels


/* wps jupyter notebook kernel */
    note: WPS INSTALL PATH: "~/wps/wps-3.3.1/"

    /* copy the kernel info */
        cp -r {WPS INSTALL PATH}/jupyter   ~/.local/share/jupyter/kernels/wps
                                 ^^^^^^^                                  ^^^
                                 |||||||                                  |||

    /* edit kernel json file */
        v ~/.local/share/jupyter/kernels/wps/kernel.json
        set "argv": ["{WPS INSTALL PATH}/bin/wpsjkrnl", "{connection_file}"],
                      ^^^^^^^^^^^^^^^^^^
                      ||||||||||||||||||

/* Links */
    - SAS Learning Resources https://sascrunch.com/18-free-resources-to-help-you-learn-sas/

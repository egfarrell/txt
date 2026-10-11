# pandas


# Non-intuitive AXIS parameter!
    - axis=0
        - axis='rows', axis='index'
        - 'Axis=0' will act on ALL the ROWS in each COLUMN
        - for REDUCTION operations (e.g. sum, mean): 
                - it compresses all rows but retains the number of columns

    - axis=1
        - axis='columns'
        - 'Axis=1' will act on ALL the COLUMNS in each ROW
        - for REDUCTION operations:
            - it compresses all columns but retains the number of rows

    - Actually this image helped a bit
        - $MY_IMAGES/cs/numpy-axis0-axis1.jpg

        # later:
        # The way to understand “axis” in numpy (and pandas) is it
        # COLLAPSES the specified axis. 
        # --------- 

        # So when it COLLAPSES axis 0 (the row), it becomes just one row (it
        # sums column-wise).

        # For animations see:
        # https://towardsdatascience.com/understanding-dimensions-in-pytorch-6edf9972d3be

        # or for axis=0 (for example) we reduce the number of entries in that axis (dimension) to one.
        # because we nearly always specify the axis during REDUCTION operations

# gotcha!

    - `low_memory=False`
        # Its a good idea to specify `low_memory=False` unless Pandas actually
        # runs out of memory and returns an error. This parameter, `True` by
        # default, tells Pandas to only look at a few rows of data at a time to
        # figure out what type of data is in each column. 
        # This means that Pandas can actually end up using different data type
        # for different rows, which generally leads to data processing errors or
        # model training problems later.

    # - Convert float to string
        - df['col'].astype(int).astype(str).
        # Converting float to (int) string wont work IF YOU HAVE ANY 'NAN'
        # values in the column!

    # - sorting a series: dont supply "column name"
        - myseries.sort_values()

    # return df from groupby (not a series)
        # use "to_frame()" (!!!)
            mode_df = temp_df.groupby(['id', 'model_name'])['pred'].agg(pd.Series.mode).to_frame()
        # old way:?
            index = df2.groupby('ID').sum()[['condition']] ??? this doesnt work
            # (using a double [[]] will return a df?)


# MAP (recode) a string to a numeric
    # map region from a [string code] to a [numeric code]
    # i.e. 'XX' --> 12,
    #      'BB' --> 2
    #      'HH' --> 8
    df['region']         = df['region'].astype('category')
    df['numeric_region'] = df['region'].cat.codes

    # another way using a dictionary
    rated_df['Radar_rating_Pass_text']  = rated_df['Radar_rating_Pass'].map(rating_dict)


# HANDY
    # format output of describe()
        df['theta_gsm'].describe().apply("{0:.0f}".format)

    # read sql
    - `pd.read_sql(SQL_string, conn).to_csv(fp)`. # far less cumbersome than using psycopg2.

    # pandas 'apply' notes
    - ./misc/pandas-apply.py
    
    # pandas 'timeseries' / 'timedelta' notes
    - ./misc/pandas-timeseries.py

    # Background gradient 
      - $MY_IMAGES/cs/pandas-background-gradient.jpg

    # get percentage for each row
    total = np.sum(df.loc[:, 'how_many'].values)
    df['percent'] = (df['how_many'] / total) * 100

    # label each year that a learner studied, using 1, 2, 3...
    learners['Year_number'] = learners.groupby(by=['PERSON_CODE', 'FUNDING_YEAR']).grouper.group_info[0] + 1

    # SQL-like windows rank function
    df["Year_number"] = df.groupby(by=['PERSON_CODE', 'FUNDING_YEAR'])["FUNDING_YEAR"].rank(method="first", ascending=True)

    # "group by" count: give it a name
    df2 = df.groupby(by=['Short/Long'], as_index=False)['Short/Long'].agg({'how_many':'count'})

    # fill nan specific columns
    values = {'Att Exc Auth': 0}
    df.fillna(value=values, inplace=True)

    # check for nulls
    df['Attendance'].isnull().sum()


    # drop duplicates
    df_unique = df.drop_duplicates(['cost_centre_code', 'academy_display_name'])[['cost_centre_code', 'academy_display_name']]

    # convert series quickly to dataframe
    s = s.to_frame('count').reset_index()

    # factor plot?? from ONS
    g= sns.factorplot(x='vat_returns_period',
                y='vat_returns_turnovermean',
                hue=None,
                col='vat_returns_vatsic5',
                col_wrap=3,
                kind='bar',
                data=big)
    g.set(yscale="log")
    g.set_xticklabels(rotation=45)



    # convert float to string percentage
    target_df['Att Exc Auth'] = pd.to_numeric(target_df['Att Exc Auth'], errors='coerce').fillna(0).map("{:.2%}".format)

    # Jakes panda notes
    $MY_CODE/python/data-manip/jake-pandas


    # look at top of dataframe "sideways" in gitbash
    all_learners.T.iloc[ 0:30 , 0:3]  


    - size counts NaNs while count does not ... (not completely true)

    # pivot a series (using one of the multi-index columns)
    df_funding_split = authority_funding2.unstack(level=-1)


    # return multiple columns from an 'apply'
    df['new1'], df['new2'], df['new3']   =  zip(*df.apply(my_func,   axis='columns'))


    # Assign multiple columns at the same time
    df.loc[df.forename == 'Ruth'] = df.loc[df.forename == 'Ruth'].assign(surname = 'Hall (?)', postcode = 'DE23 6JD (?)')

    # iterate through a df row-by-row
    for idx, row in df.iterrows():
        print(idx, row)

    # two ways to replace string value in column
    df['new'] = df['Total'].str.replace(',', '') 
    df['new'] = df['Total'].replace(',', '', regex=True) 

    labels = train_df.pop('Survived')  # return column and drop from frame

    print(df.isnull().any().to_string()) # show all COLUMNS with nan/null

    df_2016.rename(columns=lambda x: x.replace('_x', '_raw'),    inplace=True)

    pd.DataFrame.from_csv(path_csv).to_latex(path_latex)

    appended  = df1.append(df2) # add rows at the end
    appended  = df1.append(df3, ignore_index=True) # df3 can have extra columns, not in df1

    df['some_column'].value_counts().sort_index() # sort value counts
    # note: "value_counts" is used to find 
    # frequency of values IN *ONE PARTICULAR COLUMN*.

    df.values.nbytes  # size of the array

    df1 < 0.5 # convert check every single value to boolean?

    sics = df.sic_code.unique().tolist()

    # show sorted unqiues
        sorted(df_dst['dst'].unique())

    # strip spaces from column
    df['Desc'].str.strip()


    df.sort_values('amount', ascending=False, inplace=True)

    period1 = df.loc[df.IDBRPeriod == 1] # equals is "=="!

    df = pd.read_clipboard()

    df['sizeband'] = df['sizeband_label'].replace(bands_dict)

    # Note: groupby is 'lazy', not done until an aggregate method (eg "sum") is called.

    df = pd.merge(df,df2[['Key_Column','Target_Column']], on='Key_Column', how='left')
    df = pd.merge(df1, df2, left_index=True, right_index=True) # <--- merge using indexes
    df = df1.join(df2) # <--- join automatically uses indexes

    learners = pd.merge(all_learners, postcode_lookup,
                        how='left',
                        left_on=['POSTCODE'],
                        right_on=['Postcode'],
                        indicator='_postcode_found') # <--- indicator can have custom name, not just "_merge"


    # concat two dataframes together
    combined_df = pd.concat([df1, df2], ignore_index=True)

    # pd.Melt!!! 
    # - bit like putting column data into 3rd normal form!!!! 
    # (un-pivot data)
    df2 = df.melt(id_vars =['AREA', 'Age_group'], 
                value_vars =['proj_2019', 'proj_2020', 'proj_2021', 'proj_2022', 'proj_2023'])
                var_name ='Year', 
                value_name ='Projection') 




# check this:
    g.get_group("foo")
    pd.crosstab
    df.query('col_name == "value" | col_name2 == "value2"')
    df.query('value > 100000')
    df.query('A < 0.5 and B < 0.5')

    # query: use python variables (with '@')
    Cmean    =  df['C'].mean()
    result1  =  df[(df.A < Cmean) & (df.B < Cmean)]
    result2  =  df.query('A < @Cmean and B < @Cmean')

    planets['year'] // 10  # <--- check out "//"
    mask = dealer['question'].isin(high_questions)
    df['A-month-sum'] = df.groupby('month')['A'].transform(sum)

    # alias!
    df_now_grp_cpx = df_now.groupby('cell_no', 'idbr_snapshot_month', 'simple_or_complex')
                           .agg(F.sum('rep_unit_frotover').alias('sum_frotover'),
                                F.sum('turnover').alias('sum_turnover'),
                                F.count('rep_unit_ruref').alias('cnt_ruref'))

# handy config options
    pd.set_option('display.float_format', lambda x: '%.3f' % x)
    pd.options.display.float_format = "{:.2f}".format
    pd.set_option('display.multi_sparse', False) # how a MultiIndex is displayed
    pd.set_option('display.width', 1000)
    pd.set_option('display.max_colwidth', 8)
    pd.set_option('display.max_columns', 4)
    # pd.set_option('display.line_width', 1000)
    # pd.set_option('display.expand_max_repr', False)
    print("Default max_rows: {} and min_rows: {}".format(pd.get_option("max_rows"), pd.get_option("min_rows")))


# difference between 'index' and 'keys()'
    keys() : - This is the index for a Series
             - columns for DataFrame
             - and major_axis for Panel

# pipes
    jack_jill = pd.DataFrame()
    (jack_jill.pipe(went_up, 'hill')
        .pipe(fetch, 'water')
        .pipe(fell_down, 'jack')
        .pipe(broke, 'crown')
        .pipe(tumble_after, 'jill')
    )

# Stacking
    Stacking will move one level of  columns index into a new level of the
    rows index.

    As our DataFrame only has one level, this collapses a DataFrame object into
    a Series object with a hierarchical row index:

# plotting tips
    # gca:
    df.plot()...
    plt.gca().set_xticklabels(['mon', 'tues', ...])

    # format figure
    fig, ax = plt.subplots(figsize=(12, 4))
    df.plot(ax=ax);
    plt.show()

# pivot tables
    # manual way:
        df.groupby(['sex', 'class'])['survived'].aggregate('mean').unstack()
    # pivot way:
        df.pivot_table(values='survived', index='sex', columns='class')

# nice pivot
        # key                    ACADEMICYEARID     STAFFNAME                                    GROUP
        # JWAS0014MA Grp         16/17              Sereena Gangar       22      JWAS0014MA      Grp
        # JWAS0014MA Grp         16/17              Sheridan Sund        22      JWAS0014MA      Grp
        # JWAS0014MA Grp         16/17              Sheridan Sund        14      JWAS0014MA      Grp
        # JWA10014MA D           17/18              Donna Jeays          17      JWA10014MA      D
        # JWA10014MA D           17/18              Sereena Gangar       17      JWA10014MA      D
        # JWA10014MA D           17/18              Sheridan Sund        17      JWA10014MA      D
        # JWA10014MA E           17/18              Donna Jeays          12      JWA10014MA      E
        # JWA10014MA E           17/18              Sereena Gangar       12      JWA10014MA      E
        # JWA10014MA E           17/18              Sheridan Sund        12      JWA10014MA      E

        summary = pd.pivot_table(df,
                                index=['key', 'AcademicYearID', 'Group'],
                                values=['StaffName'],
                                aggfunc=lambda x: ', '.join(str(v) for v in x) # <--- nice combine staff names
                                )

        # key                    ACADEMICYEARID     GROUP           STAFFNAME
        # JWA10014MA D   	 17/18 	            D   	    Donna Jeays, Sereena Gangar, Sheridan Sund
        # JWA10014MA E   	 17/18 	            E   	    Donna Jeays, Sereena Gangar, Sheridan Sund
        # JWAS0014MA Grp 	 16/17 	            Grp 	    Sereena Gangar, Sheridan Sund, Sheridan Sund



# In[]

summary.reset_index(inplace=True)
summary.to_csv('teachers_grouped.csv', index=False)



# write df to sqlite
    from sqlalchemy import create_engine

    # write to db
    db_engine = create_engine('sqlite:///my_lite_store.db')
    price.to_sql('stock_prices', db_engine, if_exists='append')

    # now read from db
    df = pd.read_sql_query('SELECT * FROM stock_prices LIMIT 3',db_engine)
    df.head()


# read from MS Access mdb
    # Note: Make sure you are using Python 2.7 (32-bit)!
    # Note: So install "MiniConda2" (32-bit)
    See Example:
        $MY_CODE/python/misc/access_db_read/04-rip-ilr-list-to-csv.py


# convert series to dataframe, then multiindex to columns
    df = myseries.to_frame()
    df.reset_index(inplace=True)
    df.to_csv('my.csv', header=header_cols, index=False)

# handy
    df.round(2)
    list(df)
    df.info()
    df.dtypes  # show column definitions
    df.describe()
    df.head()
    changed_keep.groupby('question_no').size()
    df = pd.read_csv(...., index_col = 0) # so you have no "unnamed 0:" column!
    df_single_col = df[['mycol']]  # DOUBLE-BRACKETS! To convert a series to a dataframe!

# isin and "~"
    isin returns a boolean Series, so to select rows whose value is not in
    some_values, negate the boolean Series using ~:

        df.loc[~df['column_name'].isin(some_values)]

# aggregate example
    summary = df.groupby(by=['RUReference', 'question'], as_index=False) \
                        .agg({'value': [np.min,
                                        np.max,
                                        np.median,
                                        np.mean,
                                        np.std]})

# little mapping example
    questions = ['q100', 'q102', 'q101', 'q104', 'q103']

    display_order = {}
    for i, question in enumerate(questions):
        display_order[question] = i

    def get_display_order(q):
        return display_order[q]

    get_display_order('q102')
    get_display_order('q104')

    df = pd.DataFrame(questions, columns=['question'])
    df.sort_values(by='question', inplace=True)
    df['display_order']  = df['question'].map(get_display_order)
    df['display_order2'] = df['question'].map(lambda x: display_order[x])

# Useful from Jake

    # A,B and C are column names.
    # They are used as Variables in the eval statement.
    result3 = df.eval('(A + B) / (C - 1)')

    # '@' here marks a *variable name* rather than a *column name*
    result2  =  df.eval('A + @column_mean')

    # Aside: Notice this '@' character is only supported by
    #   the 'DataFrame.eval()' *method*,
    #   not by the 'pandas.eval()' *function*,
    # because the 'pandas.eval()' function only has access
    # to the one (Python) namespace.

    # 'unstack()' will convert a MultiIndex 'Series'
    # into a normal indexed 'DataFrame':
    pop_df = pop.unstack()

    # stack will convert df columns into a multi-index
    df = df_with_cols.stack()

    # unstack is handy:
    titanic.groupby(['sex', 'class'])['survived'].aggregate('mean').unstack()

    planets['year'] // 10  # <--- check out "//"
    series.name = 'mycol'  # <-- becomes column name when joined into a df?
    df.values
    df.values.min()
    df.values.max()
    df.values.T    # or df.T
    df.index
    df.index.values
    df.index.levels
    df.index.labels
    A.add(B, fill_value=0)

    # loc, iloc, ix
    # -------------

    - 'loc': LABEL-BASED indexing, (ie works on the EXPLICT index)

    - 'iloc': POSITION-BASED indexing (only uses integers)

    - 'ix': tries to behave like 'loc' but
            falls back to behaving like 'iloc'
            if the label is not in the index.

    Some subtleties make 'ix' tricky to use:

        - if the index *IS OF INTEGER TYPE*,
            - ix will only use LABEL-BASED INDEXING and not fall back to
              position-based indexing. If the label is not in the index, an
              error is raised.

        - if the index does not contain only integers, then given an integer, 'ix'
          will immediately use position-based indexing rather than label-based
          indexing. If however ix is given another type (e.g. a string), it can
          use label-based indexing.

           [ ROW_INDEXER  ,  COL_INDEXER ]
    df.loc [  :'Illinois' ,  :'pop'      ]          # labels
    df.iloc[ 0:1          , 0:1          ]          # positions (must be integers ONLY)
    df.ix  [  :3          ,  :'pop'      ]          # combination

    df.loc["row selector", "specify column"]
    df.loc[df.birth_weight > 20, 'birth_weight'] = np.nan

    df.iloc[k]['lat']  # <--- selected row 'k', then column 'lat'

    series.drop(['e'], axis=0, inplace=True)        # drop a row, based on an index
    df.drop(df.loc[df.mycol == 'West Yorkshire'].index, inplace=True) # drop a row, based on an index

    df.loc[df.density > 100, ['pop', 'density']]    # locate, and take multiple columns

    # random df, 3 rows, 4 cols
    rng = np.random.RandomState(42)
    df = pd.DataFrame(rng.randint(0, 10, (3, 4)),
                      columns=['A', 'B', 'C', 'D'])

    # turn all rows into a huge column
    A.stack().mean()

# common sql operations

    # UPDATE tips
    # SET    tip = tip*2
    # WHERE  tip < 2;
        tips.loc[tips['tip'] < 2, 'tip'] *= 2

    # DELETE FROM tips
    # WHERE  tip > 9;
    # In pandas we select the rows that should *remain*,
    # instead of deleting them
        tips = tips.loc[tips['tip'] <= 9]

# Jake video
    df.resample('D').sum().rolling(365).sum()

    # give pandas some hints on how to convert the dates
    df = pd.read_csv('freemont.csv', index_col='Date')
    df.index = pd.to_datetime(df.index, format='%m/%d/%Y')
        # check python 'strftime' for formats
        # Jake got a lovely bug related to AM/PM times.
        # He should have used '%I' instead of '%H'

# pandas categories example
    http://chrisalbon.com/python/pandas_binning_data.html

# multiindex random comments

    # Remember that *columns* are primary in a 'DataFrame',
    # and the syntax used for multiply indexed 'Series'
    # applies to the columns.

    # CAVEAT:!!! Many MultiIndex slicing operations will fail
    # if the index is not sorted.

    # All of the MultiIndex constructors accept a *names* argument which stores
    # string names for the levels themselves. If no names are provided, *None*
    # will be assigned.

# access MultiIndex columns

    # method 01:
        for col in df.columns.values:
            print ('col is', col)
    # method 02:
        # df.loc[:, [('value', 'a'), ('one', 'c'), ('two', 'a'), ('two', 'c')]]
        df.loc[:, [('value', 'amax')]]
    # method 03:
        df.columns.get_level_values(0)

# flatten/compress MultiIndex column headers!
    df.columns = [' '.join(col).strip() for col in df.columns.values]


# two *equivalent* statments - one uses 'agg'
    df.groupby(by=['RUReference'], as_index=False)['value'].sum()
    df.groupby(by=['RUReference'], as_index=False).agg({'value': np.sum})

    # 'agg' column names: kind of *nested* dictionary
    df.groupby(['strata','question']).agg({'RIB': {'avg': np.mean}})

    # 'sum up' multiple columns
    # NOTE 1: if 'sic', and 'desc' are unchanging,
    # they are just included as static columns
    # NOTE 2: look at the double brackets [['Value...', 'Value...']]
    df.groupby(by=['ref', 'sic', 'desc'])[['value2','value']].sum()

# grouping (check out 'value_counts' below!)
    by_dept = df.groupby('department')
    by_dept.count()                # count *NON NULL* values in each column
    by_dept.size()                 # total num *records* for each dept
    df.department.value_counts()   # total num *records* for each dept

# groupby tips
    # by default, 'groupby' turns the
    # *grouped field* into an *index*

    # groupby bit like 'mapreduce'!
    # Pandas 'groupby' functionality draws from
    # the "Split-Apply-Combine" method from Hadley Wickham

    # Its a great approach to solving data analysis problems,
    #   http://www.jstatsoft.org/v40/i01/paper

# rename specific index
    new_df = df.rename(index={"ATMfood-drink": "test"})
    df.rename(index={"ATMfood-drink": "test"}, inplace=True)

# rename columns
    df.rename(columns={'oldName1': 'newName1',
                       'oldName2': 'newName2'},
                       inplace=True)

    note:
        'df.columns.rename':  sets the name for the *index*,
                              it doesnt rename the column names:
        'df.columns.setlevels' renames the actual column heanders

# convert from byte string to normal string (reading SAS)
    http://stackoverflow.com/questions/38930583/how-to-get-text-from-btext-in-the-pandas-object-type-after-using-read-sas
    https://github.com/pandas-dev/pandas/issues/12809
    # first check SAS encoding of file!!! (proc...)
    df = pd.read_sas('test.sas7bdat', format='sas7bdat', encoding="utf-8")
    df = pd.read_sas('test.sas7bdat', format='sas7bdat', encoding="latin-1")

# combine a boolean mask and only take specific columns
    specific_sic = df.loc[(df.CurrentSIC == '64201'), ['CurrentSIC','IDBRPeriod', 'value'] ]

# bin data
    labels = ['0-9', '10-19', '20-29', '30-39', '40-49', '50-59', '60-69', '70-79']
    lens['age_group'] = pd.cut(lens.age,
                                range(0, 81, 10),
                                right=False,
                                labels=labels)
    lens[['age', 'age_group']].drop_duplicates()`[:10]`

    #           age    age_group
    # 0         60        60-69
    # 397       21        20-29
    # 459       33        30-39
    # 524       30        30-39
    # 782       23        20-29
    # 995       29        20-29
    # 1229      26        20-29
    # 1664      31        30-39
    # 1942      24        20-29
    # 2270      32        30-39

    # 'pandas.cut' allows you to bin numeric data.

    # We first created labels to name our bins, then split
    # our users into eight bins of 10 years (0-9, 10-19,
    # 20-29, etc)

    # Our use of `right=False` told the function that we
    # wanted the bins to be exclusive of the max age in the
    # bin (e.g. a 30 year old user gets the 30s label).

# apply a CUSTOM function to a groupby. '.apply(ranker)'
    # Want first person in each department with highest salary

    def ranker(df):
        """Add new column 'dept-rank' which assigns
        a rank to each employee based on salary, with
        1 being the highest paid. Assumes the data is
        DESC sorted."""
        df['dept_rank'] = np.arange(len(df)) + 1
        return df

    df.sort_values('salary', ascending=False, inplace=True)
    new_df = df.groupby('department').apply(ranker)
    new_df[new_df.dept_rank == 1]

    # Comment: so 'apply' on a 'groupby' object takes the whole
    # 'df' as the input argument...?

# another example of group custom function
def func(group):
    sum_ = group.qty.sum()
    es = (group.csv / group.qty).sum()
    return pd.Series([sum_, es], index=['qty', 'es'])

trades.groupby('ordrefno').apply(func)

# SQL example
    # We want to know the five departments with the
    # most distinct titles, ie the pandas equivalent to:
        > SELECT department, COUNT(DISTINCT title)
        > FROM chicago
        > GROUP BY department
        > ORDER BY 2 DESC
        > LIMIT 5;

    # Pandas is a lot less verbose here ...
        by_dept.title.nunique().sort_values(ascending=False)[:5]

        # department
        #    WATER MGMNT    153
        #    TRANSPORTN     150
        #    POLICE         130
        #    AVIATION       125
        #    HEALTH         118

# change df index

    # Since our index is *meaningless* now (after mutating
    # the dataframe), lets set it to 'user_id' using
    # 'set_index'. Note: By default, 'set_index' returns
    # a *new* DataFrame

    new_df = df.set_index('user_id')
    df.set_index('user_id', inplace=True)

    # creates new index, storing old one in a new column
    df.reset_index(inplace=True)

    # creates new index, deleting old index
    df.reset_index(drop=True, inplace=True)

# read from sqlite database!
    from pandas.io import sql
    import sqlite3

    conn = sqlite3.connect('./towed.sqlite')
    query = "SELECT * FROM towed WHERE make = 'FORD';"

    df = sql.read_sql(query, con=conn)
    df.head()

# bar chart, uses specific column for x axis labels
    df = df.set_index('description')
    df.plot(kind='bar')

# read/write from csv

    # natwest download:
        - description column is double quoted! use quotechar='"'
        - download has a stray TRAILING comma on every row!

        data = pd.read_csv('bank.csv', usecols=['Date', 'Description', 'Value', 'Balance'],
                                       index_col='Date',
                                       parse_dates=True,
                                       dayfirst=True,
                                       quotechar='"')
        data.plot()
        data.plot(y='Value')
        data.plot(y='Balance')

    df.to_csv('income_sorted.csv', mode='w')

    # example
    col_headers = [ 'RU Reference',
                   'Question',
                   'Standard Deviation' ]

    df.to_csv('summary.csv'),
               float_format='%.2f',
               mode='w',
               header=col_headers,
               index=False)

    # only write specific *columns* to the csv file
    write_cols = ['RUReference', 'q2006', 'predict_q2006']
    df.to_csv('output.csv', mode='w', columns=write_cols)

    # specify whats to be treated as a date
    df=pd.read_csv("transactions.csv", parse_dates=['date'])
    create_table('./DATA/data-1516.csv',  'data_1516',  db_engine,  parse_dates=['DateOfBirth', 'LearnerStartDate', 'LearnerPlanEndDate'])

    # if no header: define custom column headers
    mycols=['mycol1', 'mycol2', 'mycol3'...]
    df=pd.read_csv("income.csv",
                    header=None,
                    names=mycols)

    # if header exists already,
    # but you want to over-write it
    myheaders = ['question_no', 'errors_no_change', 'errors_changed']
    hitrates = pd.read_csv('./threshold_hitrates.csv',
                           # header=0, <--- not this!?
                           header=None,
                           names=myheaders)

    # change dollar signs to blanks
    df = pd.read_csv('salaries.csv',
                      converters={'salary': lambda x: float(x.replace('$', ''))})

    # change encoding and specify column data type
    df = pd.read_csv('teacher.csv', encoding="ISO-8859-1", dtype={"Score" : object})

# remove/drop/delete column
    df.drop(['column'], axis=1, inplace=True)

# remove/delete row
    df = df.drop(df.index[2142])
    df = df[df.RUReference != 50000070476]

# new df column:
    # when you add a new column to a DataFrame,
    # you must use dictionary syntax:

    # CORRECT!
        df['totalwgt_lb'] = df.birthwgt_lb + df.birthwgt_oz / 16.0

    # WRONG! (dot notation)
        # (adds _attribute_ but not treated as new column)
        df.totalwgt_lb = df.birthwgt_lb + df.birthwgt_oz / 16.0

# Pandas built around 3 data structures:
    # 1. Index
    # 2. Series
    # 3. Dataframe

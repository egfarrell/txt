# apply function ROW by ROW!
    - note the axis=1 and we dont use a group by!
    - df = curr_returns_big.apply(calc_edit_score, axis=1)


# Apply using all previous values of a column

    def get_previous_avg(x):
        # x is a DataFrame of GROUP VALUES
        prev = x.query('vat_returns_period < 523')
        x['prev_mean'] = prev['vat_returns_turnover'].mean()
        return x

    newdf = df.groupby('vat_returns_vatref9').apply(get_previous_avg)


# 'transform' versus 'apply'
# ##########################

    # - 'transform' will work with Series (columns) in isolation from each other.
    # - 'transform' always preserves the number of rows for each group.
    # - 'transform' also sends each individual column as a series to the calling function.

    # - 'apply' sends the entire dataframe to the calling function
    # - 'apply' does not collapse the data (???)
    # - 'apply' is flexible and can return a series or dataframe OF ANY SIZE.

    # - transform type 1:  "SERIES-GroupBy.transform()"    tries to cast the result dtype to the same one as the original column has,
    # - transform type 2:  "DATAFRAME-GroupBy.transform()" doesn't seem to do that

    - 'apply' works on a row/column basis of a DataFrame,
    - 'applymap' works element-wise on a DataFrame,
    - 'map' works element-wise on a Series.

    # Github comment: In my experience, it's never worth bothering with 'transform'
    # or 'aggregate' -- the more flexible 'apply' is much easier to use...

    # Here are a couple things we say about transform:

        # It returns a "like-indexed" result, which for a dataframe means an object
        # with the same row labels (the index) and column labels (which are
        # technically also make use of a pandas index).

        # it returns an object that is indexed the same (same size) as the one being
        # grouped

    # Calling twice!!
    # In the current implementation (0.18.1) 'apply' calls func twice on the first
    # group to decide whether it can take a fast or slow code path. This can lead to
    # unexpected behavior if func has side-effects, as they will take effect twice
    # for the first group.

    import math

    def int_float_squares(series):
        return pd.Series({'int_sq' : series['int_col']**2,
                          'flt_sq' : series['float_col']**2})

    df.apply(int_float_squares, axis = 1)

        #    flt_sq  int_sq

        # 0    0.01       1
        # 1    0.04       4
        # 2    0.04      36
        # 3  102.01      64
        # 4     NaN       1


# Dispatch methods

    # Through some Python class magic, any method not explicitly implemented by
    # the 'GroupBy' object will be passed through and called on the groups,
    # whether they are 'DataFrame' or 'Series' objects.

# show group contents
    def show_groups_head(groupby_obj):
        for (by, group) in groupby_obj:
            print('"by":        ', by)
            print('group shape: ', group.shape)
            print('"by" type:   ',  type(by))
            print('group type:  ',  type(group))
            print (group.head())
            print('\n')

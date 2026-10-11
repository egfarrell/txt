# Timedelta
    # didnt know about the  ".dt" accessor!
    df['timedelta_tmp'] = pd.to_timedelta(df.timedelta)
    df['day']  = df['timedelta_tmp'].dt.components['days']
    df['hour'] = df['timedelta_tmp'].dt.components['hours']
    df['min']  = df['timedelta_tmp'].dt.components['minutes']
    # also:
    df['timedelta'].dt.days
    # convert separate days, hours, mins into a timedelta
    df['timedelta'] = df['day'].astype(str) +  ' days ' + df['hour'].astype(str) + ':'  + df['min'].astype(str) + ':00'

# Time series Differencing 
        - subtract the previous observation from the current observation.
        - removes temporal dependence 
        - difference(t) = observation(t) - observation(t-1)
        diff = series.diff()
        pyplot.plot(diff)
 
 # Error
    # 'Timedelta' object has no attribute 'dt'
    # - a single row has no 'dt' accessor
    # - 'dt' only belongs to a series or full dataframe 
    wrong: day  = df.iloc[0]['timedelta'].dt.components['days']
    right: day  = 
        when = df.iloc[0]['timedelta']

        day = when.astype("timedelta64[D]")
        # or
        np.timedelta64(when, "D")
        # or
        np.timedelta64(when, "h")
        # or
        np.timedelta64(when, "m").astype(int)




# Links
    - Timeseries tricks https://adriangcoder.medium.com/pandas-tricks-and-tips-a7b87c3748ea

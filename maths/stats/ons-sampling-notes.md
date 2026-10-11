### extreme outloier
    - look at both axis, outlier on one axis,
    - but not on the other
    - depends if its sampling , modelling, extremem data


### non-influential outlier
    - it lies on the regression line, so its just extremee data
    - but lies at the end of the regression line

### influential outlier
    - it pulls the regression line away tto the right


### unrepresentative outlier,
    - we dont know unless we know the rest of the population
    - but if we see the rest of the population, then we know if its off...
    - eg bill gates in a salary survey

### assumption of random sample
    - you assume your 10 samples are representative of the rest
      of the population

### outliers are difficult
    - can disproportionately influence results
    - leads to low quality estimates
    - cooks distance: estimate the impact each point has on the regression line
    - might cuse icorrect population estimates
    - outliers must be detected and treated

### outlier detection
    - often visual
    - can be rule drive: eg 1000 pound rule
    - bit blunt
    - but if you have large data volumes, rule based methods are ok

### outlier treatment
    - just throw it away ie 0% weight(waste of money though!)
    - adjust the outlier
    - ignore the outlier ie 100% weight

### two outlier methods
    - trimming        - percentages
    - winsorisation   - thresholds (reduce weight of p)
    - winsorisation is better than trimming!
    - knock on effect though: you do introduce an error
    - often prgramatic decision on which method to use, but winsorisation
    - needs more resources

### tip 
    - always use ratio, unless you don't have good auxillary
      information, that lets

### simple methods

# expansion estimation (no outliers)
    - officially Horvitz-Thompson estimator
    - if you sample 1 in 10, your a weight is 10
    - only uses info from design: ie a_i = N / n
    - no calibration - hence g_i = 1 (no axillary data)
    -     note: leave calibration at 1 until you find a good
          auxillary source
    - often `a_{ij}` ie you have a design weight varying
      within strata

    note!!!!
    - the weight you apply is the inverse of the probability selection

    X_hat = sum(w_i cd y_i)
          = sum(12 y_i)
          = y_i + (12-1)y_i
          = y_i + 11 y_i (include the original and the other 11 will be the same)

    `Y_hat = sum( w_i  ∙ y_i )`
    `Y_hat = sum( N/n  ∙ y_i )`

    note: N/n is not an 'i' dependent weight! Can bring
    outside the summation

    the bigger the weight (a weight) the more youre assuming
    the sample is representative. But thats making a lot of 
    assumptions


real life scenario - stratify
    -se so for businesses, we stratify by employee numbers
    - this leads our estimators to have a _double subscript_
    - eg `w_{ih}`, where 'i' is the sample, 'h' is the strata

why split into strata
    - for precision purposes
    - or policy purposes (eg want to see SME businesses)

imputate missing values!
imputation is just an equation
could do manual construction!


in all these you're trying to work out a _total_, so you
take some sample responses and multiply by the weights to
get a total.

# trimming/truncation
    - leads to a "truncated sample"
    - your outlier weight is always 0 or 1!
    - so you actually zap the other weights for that sample (design weight,
      g weight) if you set the outlier weight to 0 for
      a single sample!
    - but N/n 'a' will increase from 4 to 5 cos youve thrown one
      sample away (small 'n' will decrease so N/n will
      incre3ase)

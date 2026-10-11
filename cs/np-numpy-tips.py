numpy tips

# handy stuff
    raw_q     = np.sort(raw_q)
    both_refs = np.intersect1d(raw_refs, edited_refs)

# jake tip
    # Manipulating logs of small numbers in NumPy? 
    # "logaddexp()" & "log1p()" give improved precision!
    https://docs.scipy.org/doc/numpy/reference/generated/numpy.logaddexp.html
    https://docs.scipy.org/doc/numpy/reference/generated/numpy.log1p.html

# typestr (required)
    # A 'typestr' string provides the basic type of
    # a homogenous array. The format consists of 3 parts:

    # 1. a character describing the byteorder of the data:
        - "<" little-endian,
        - ">": big-endian,
        - "|": not-relevant  <---- handy for strings!

    # 2. a *character code* 
    #       giving the basic type of the array

    # 3. an *integer* 
    #       providing the num of bytes the type uses

    # The type character codes are:
    #       - t 	Bit field (following integer gives the number of bits in the bit field).
    #       - b 	Boolean (integer type where all values are only True or False)
    #       - i 	Integer
    #       - u 	Unsigned integer
    #       - f 	Floating point
    #       - c 	Complex floating point
    #       - m 	Timedelta
    #       - M 	Datetime
    #       - O 	Object (i.e. the memory contains a pointer to PyObject)
    #       - S 	String (fixed-length sequence of char) (eg "|S5")
    #       - U 	Unicode (fixed-length sequence of Py_UNICODE)
    #       - V 	Other (void * – each item is a fixed-size chunk of memory)

# hstack
    - To concatenate arrays with hstack, you end up using double parentheses: 
    - hstack((a, b)). How do you explain this to beginners?!

# masked arrays and accessing valid values
    ratio        = depth2 / depth1
    masked_ratio = np.ma.masked_invalid(ratio)
    valid_values = masked_ratio.compressed()

# set/change the fill value
    np.ma.set_fill_value(masked_ratio, 0)

# get instance of masked array with a specified fill value
    new_array = masked_ratio.filled(fill_value=0)

# remove an axis
    numpy.squeeze(a, axis=None)[source]
    Remove single-dimensional entries from the shape of an array.

# convert python list to np.array
    my_npy_array = np.asarray(some_python_iterable)

# combine 2 arrays
    x = np.vstack([depth1, depth2])
        x.shape = (2, 360)

    x = np.concatenate((depth1, depth2), axis=0)
        x.shape = (720, )

# "any function" curve fitting
    def exp_fit_func(x, a, b, c):
        return a * np.exp(-b * x) + c

    x_means = stats['x_ticks'].data
    y_means = stats['sim_mean'].data

    popt, pcov = curve_fit(exp_fit_func, x_means, y_means)
    y_fit = exp_fit_func(x_means, *popt)

# "polynomial" curve fitting
    x = stats['x_ticks'].data
    y = stats['sim_mean'].data

    coefs = np.polyfit(x, y, 6)
    poly = np.poly1d(coefs)
    y_fit = poly(x)

# colors
    b: blue
    g: green
    r: red
    c: cyan
    m: magenta
    y: yellow
    k: black
    w: white

# mask invalid log values
    log_sim_std = np.ma.log10(sim_std)

# equally spaced values
    labels = np.linspace(0, 0.5, 51)

# append to array
    # setup:
        hists    = np.zeros(shape=(0, binsize), dtype='int')
        n, edges = np.histogram(x, bins=binsize, range=[0, 0.5])

    # two choices:
        hists    = np.vstack([hists, n])
        hists    = np.append(hists, [n], 0)

# cast into different type
    # ie show float array as int
    x.astype(int)

# create array
    # create a blank numpy array
        x= np.array([], dtype=np.float64)

    # create array with zero rows, but certain width
        hists = np.zeros(shape=(0,binsize))

    # array same as another
        hists = np.zeros_like(n)

# remove nan values
    x = x[np.logical_not(np.isnan(x))]

# check these out
    numpy savez
    linspace, logspace
    isnan
    numexpr
    linalg lapack wrapper
    np.where  confusing, Turning a mask into indices
    scipy.vectorise some function

# clip is useful function:
    x = np.clip(x, 0.3, 0.6)
    print np.sum(x < 0.3)
    print np.sum(x > 0.6)

# get dot syntax
    fluidr = fluid.view(np.recarray)
    fluid['p']
    fluidr.p

# combine masks
    mask1 = ((transit_depth_measured1>0.001) & (transit_depth_measured1<0.01))
    mask2 = ((transit_depth_measured2>0.001) & (transit_depth_measured2<0.01))
    total_mask = mask1 & mask2
    total_mask2 = mask1 | mask2

# how many TRUE's in a mask?
    mask.sum()

# numpy count trues
    # True = 1 so do:
    myarray.sum()

# compare 2 arrays
    # same shape,
    # same elements values
    np.array_equal(A,B)

    # broadcastable shape,
    # same elements values
    np.array_equiv(A,B)

    # same shape,
    # elements have close enough values
    np.allclose(A,B,...)

# flatten an array to 1D
    returns a view?
        method1: a.ravel()
        method2: flat_data = x.reshape(-1)
    returns a copy?
        method3: flat_data = x.flatten()
        method4: flat_data = x.flatten('F') # fortran order

# array order
    >>> v = linspace(10, 60, 6)
    >>> v
    array ([10., 20., 30., 40., 50., 60., ])

# reshape (v, (2,3) )
    # All numpy arrays are "C" ordered by DEFAULT...
    # (ROW by ROW)
    array ([10., 20., 30.],
    [40., 50., 60., ])

    reshape (v, (2,3), order='F')
    # But you can specify "fortran" order either...
    # (COLUMN by COLUMN)
    array ([10., 30., 50.],
    [20., 40., 60., ])

# array indexing
    array(IncludeLowerBound: ExcludeUpperBound: Step)

# discussion syntax
    # Let’s create a matrix full of zeros:
        x = zeros((10, 10))

    # Now a random matrix:
        x = rand(10, 10)

    # First case: you need double parentheses or you get an
    # error. Second case, you need single parentheses or you
    # get an error. Why?!

    # The first case makes a lot more sense when you do
    # things like
        a = np.random.rand(image.shape)

    # The inconsistency with `rand()` is explained here:
        http://mail.scipy.org/pipermail/numpy-discussion/2010-November/053821.html

    # "rand()" and "randn()" were added as conveniences for
    # people who were used to the MATLAB functions.

    # The preferred, more consistent functions to use are:
        numpy.random.random_sample((2,3))
        numpy.random.standard_normal((2,3))
    # If you like, Ignore:
        rand()
        randn()

    # However every tutorial and reference that I’ve seen
    # uses "rand()", so most people don’t know that:
    # "random_sample()" 
    # "standard_normal()" 
    # exist...

# np file csv handling
# --------------------

    # consstruct list of  datatypes, we load the data using
    # this dtype and view it as a recarray for convenient
    # named-field access:
        dt    = [('ruref',       np.int64),
                ('SIC',         '|S5'),
                ('period',      np.int32),
                ('form_status', np.int16),
                ('q1000',       np.float64)]

        dt2    = {'names': ('ruref',
                            'SIC',
                            'period',
                            'form_status',
                            'q1000'),
                'formats': (np.int64,
                            (str, 5),
                            np.int32,
                            np.int16,
                            np.float64)}

        table  = np.loadtxt('test.csv', delimiter=',', dtype=dt)
        table2 = np.loadtxt('test.csv', delimiter=',', dtype=dt2)
        # or use 'genfromtxt':
        table = np.genfromtxt('test.csv', delimiter=',', dtype=dt)

    # numpy savetxt as integer
        np.savetxt('./mydata.csv', mydata, fmt='%i')

    # numpy savetxt append
        np.savetxt(f, data2append)

    # save csv file
        with open(summary_file,'a') as file_handle:
            np.savetxt(file_handle, zip(bins, n), fmt=['%3.2f', '%d'], delimiter=",")

    # write array to disk
        np.savetxt("idblend3.csv", blend_ids, fmt='%10.0f', delimiter="," )

    # repeat list format fmt - neat!
        np.savetxt(f, all_hists, fmt=['%d'] * 50, delimiter=",")

    # quick summary genfromtxt
        totals3 = np.genfromtxt("totals.csv", delimiter=',', names=True)

    # write out HEADERS
        import numpy
        a = numpy.array([[0.0,1.630000e+01,1.990000e+01,1.840000e+01],
                        [1.0,1.630000e+01,1.990000e+01,1.840000e+01],
                        [2.0,1.630000e+01,1.990000e+01,1.840000e+01]])
        fmt = ",".join(["%s"] + ["%10.6e"] * (a.shape[1]-1))
        numpy.savetxt("temp", a, fmt=fmt, header="SP,1,2,3", comments='')

    # 'genfromtxt' advantages
        # you are correct. Using 'np.genfromtxt' gives you
        # options like the parameters 'missing_values',
        # 'filling_values' that help you dealing with an
        # incomplete csv. Example Data like this:

        1,2,,,5
        6,,8,,
        11,,,,

        # Could be read with a filling value specified for
        # each column:
        filling_values = (111, 222, 333, 444, 555)
        np.genfromtxt(filename, delimiter=',', filling_values=filling_values)

        # output:
        # array([[   1.,    2.,  333.,  444.,    5.],
        #        [   6.,  222.,    8.,  444.,  555.],
        #        [  11.,  222.,  333.,  444.,  555.]])

    # 'unpack' puts each column of the text file into
    # a different variable. Eg, the text file has columns
    # 'x', 'y', 'z', then: (two equivalent ways)
        x, y, z = np.loadtxt(filename, unpack=True)
        x, y, z = np.loadtxt(filename).T

        # By default iterating over a 2-D array means
        # iterating over the lines, that's why you have to
        # 'transpose' or use 'unpack=True' in this example.

    # Another nice option only 'np.genfromtxt' has: if
    # you want to have a structured array with fields,
    # as it allows you to say 'names=True' and the field
    # names are automatically created from the first
    # line of the file
        names=True

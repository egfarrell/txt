py tips

# print list items, new line
print(*file_list, sep = "\n")


# poor mans status bar / tdqm
    print('.', end='', flush=True)

# PIL image cropping inutition
    - $MY_IMAGES/cs/python/pil-image-cropping.jpg

# Override a function
    import sys

    # Define dummy function
    def dummy_make_prediction():
        print("Overridden")

    # Check if the code running in interactive environment
    if 'ipykernel' in sys.modules:
        def make_prediction():
            # Original prediction code
            pass
    else:
        make_prediction = dummy_make_prediction

# '*' unpacking
    def sum_three_numbers(a, b, c):
        return a + b + c

    numbers = [1, 2, 3]
    result = sum_three_numbers(*numbers)  # Unpacks list into three arguments
    print(result)  # Output: 6


# python debugging
    add a set_trace() command

# show system path
    import sys; print '\n'.join(sys.path)

    # paths
        sys.path is PYTHONPATH! # (or does sys.path have more things?)

    # Add folder to your current path
        import sys
        sys.path.append('D:/python/lib')

    # show current path
        import sys
        for p in sys.path:
            print (p)

# Delete file, regardless if exists already
filename = "myfile.txt"

try:
    os.remove(filename)
except FileNotFoundError:
    pass

# Gitbash Python paths
    input_file = 'C:\\users\\Ania\\study\\books\Misc\\txt-books-for-audio\\Benedict-Labre-by-Andre-Dhotel.txt'
    # or
    input_file = 'C:/users/Ania/study/books/Misc/txt-books-for-audio/Benedict-Labre-by-Andre-Dhotel.txt'


# auto execute scripts on exit
    import atexit
    atexit.register(dump_log_file)

# Python Script shebang
    #!/usr/bin/env python    <---- more flexible

    # - picks up first occurance of 'python' in your environments $PATH. More
    # flexible and means a hard-coded path to 'python' isn't needed.

# Get system locale
    python3 -c 'import locale; print(locale.getpreferredencoding())'

# underscores allowed in numeric literals
    1_000_000_000_000_000

# Create folder
def create_folder(folder_name):
    # NOTE: handy folder funcs:  $MY_CODE/old/jobs/camk/koral-runs/my_utils/misc_utils.py
    # Create folder, if doesnt exist
    if os.path.exists(folder_name):
        print ("\nNot creating folder: ", folder_name, " (exists already)\n")
    else:
        print ("\nCreating folder: ", folder_name, "\n")
        os.makedirs(folder_name, exist_ok=True)


# write list to csv
    import csv
    with open('/home/ef/Downloads/mylist.csv', 'w', newline='') as myfile:
         wr = csv.writer(myfile, quoting=csv.QUOTE_ALL)
         wr.writerow(mylist)

# Nice dict config setup
        data_config = {
            "timesteps": 32,
            "batch_size": 32,
        }
    timesteps = data_config["timesteps"]



# Nice: show image color channels
    im = image2tensor(Image.open('images/grizzly.jpg'))
    _, axs = subplots(1,3)

    for bear, ax, color in zip(im, axs, ('Reds', 'Greens', 'Blues')):
        show_image(255 - bear, ax=ax, cmap=color)



# fastai show image
    im = PILImage.create(img_files[0])
    print(im.shape)
    im.to_thumb(160)
    # PILIMage is normally (cols, rows)
    # Pytorch, numpy etc normally do (rows, cols)

    # Or this way?
        from PIL import Image
        Image.open(image_cat())
        # Similar:
        im3_path = threes[1]
        im3 = Image.open(im3_path)
        im3

    # or this way? (fastai)
        show_image(three_tensors[1]);




# Higher order functools "partial"
    def say_hello(name, say_what="Hello"): return f"{say_what} {name}."
    say_hello('Jeremy'), say_hello('Jeremy', 'Ahoy!')
    f = partial(say_hello, say_what="Bonjour")
    f("Jeremy"), f("Sylvain")



# name of current script that is running
    this_script = os.path.basename(__file__)
    # name of current file that is running?
    import sys
    print(sys.argv[0])


# quick zip
    list(zip(b[0], b[1])) # explicit
    list(zip(*b))         # idiomatic

# Pad number leading zeros
    name = './eftree ' + str(i).zfill(3) + '.jpg'


# jake subtle bug:
    $MY_CODE/python/misc/jake-subtle-class-bug.py

# terminology
    # "package"
        is a FOLDER with an __init__.py file
    # "module"
        is a FILE that contains python code

inbox
encoding = kwargs.get('encoding', 'utf-8')
sep = kwargs.get('sep', '\n')
Python 3.6
    visitor_count : int
types.SimpleNamespace
mutable named tuple with default
mypy python type checker
hitchhickers guide python http://docs.python-guide.org/en/latest/
hitchhickers guide python http://docs.python-guide.org/en/latest/writing/structure/
python unit testing https://hypothesis.readthedocs.io/en/latest/
data validators for corrupt data (Raymond Hettinger video: validator ABC class)

# packing history
    "distutils"
        - python setup.py <...>
        - python setup.py sdist # source distribution
        - python setup.py bdist # build distribution (but slow, cumbersome)

    - Another solution: "PyPI": originally the python creators thought most
      developers would use a package manager. But 2 problems, the package
      managers usually lagged behind the latest release, and people were
      developing on MacOS and Windows too... so "PyPI" was the solution.

    - then "setuptools". it monkey-patched distutils

    - then "easy_install". (for dependencies). It introduced the "egg"
      disribution. (an "egg" is a zip file with some python bytecode?)

    - but problems with easy_install: it couldn't uninstall, and it couldn't
      tell you what you had on your system

    - so solution: "pip": Pip Installs Packages (was originally called
      "PyInstall"). Pip ignores eggs and does a sdist (source distribution)
        - dependencies are listed in "requirements.txt"
        - everyone does: pip install -r requirements.txt
        - but installing from PyPI gets slow
        - and you have to trust 3rd party domains

    - so solution PyPI starts hosting the actual releases (rather than
      pointing to 3rd party sites)

    - but then we need build distributions again. So the "wheel" is introduced.
      Actually has a specification, not like an "egg"!

    - "twine" securely upload packages to PyPI

    - 2018: complete re-write of PyPI: new interface based on "warehouse"

    - still some problems: see Python packaging guide:
        https://packaging.python.org


# unicode
    print('This is my Method\N{trade mark sign}')

# running scripts
  - "Add pound-bang at top of script"  #!/usr/bin/env python3
  - "interactive mode": python -i myscript.py


# python 3.4 path manipulations
    from pathlib import Path
    p = Path('C:\Program Files\Internet Explorer\iexplore.exe')
    p.name                              # 'iexplore.exe'
    p.suffix                            # '.exe'
    p.root                              # '\\'
    p.parts                             # ('C:\\', 'Program Files', 'Internet Explorer', 'iexplore.exe')
    p.relative_to('C:\Program Files')   # WindowsPath('Internet Explorer/iexplore.exe')
    p.exists()


# ASCII Csv writer
with open ('./myfile.csv', 'w') as f:
    urlwriter = csv.writer(f, lineterminator='\n') <--- lineterminator stops an extra "^M"
    for (dept, names) in depts.items():
        for name in names:
            for scorecard in scorecard_types:
                url = url_base + name + ' - ' + scorecard + '.jpg'
                url = url.replace(' ', '%20')
                row = [dept, name, scorecard, url]
                urlwriter.writerow(row)



# Convert Excel spreadsheet to CSV: key "unicodecsv"

    workbook  = xlrd.open_workbook('cell_definitions.xlsx')
    sheet     = workbook.sheet_by_name('Sheet1')
    csv_file  = open('cell_defs.csv', 'wb')

    wr = unicodecsv.writer(csv_file)

    for row in range(sheet.nrows):
        wr.writerow(sheet.row_values(row))

    csv_file.close()


# folder of current script
    from os.path import dirname
    this_folder = dirname(__file__)
    print (this_folder)
    # gotcha:
        # returns nothing if: 'python test.py'
        # better: 'python $MY_CODE/python/test.py'


# refresh module that was changed
    from imp import reload
    reload(utils)

# Jake video
    # How to create python package to download data
        from jupyterworkflow.data import get_freemont_data
        # where:
            jupyterworkflow   # is a folder    with an '__init__.py'
            data.py           # is a script    inside jupyterworkflow
            get_freemont_data # is a function  inside data.py

    # unit test framework: Jake recommends 'pytest'
            1. folder:          jupyterworkflow/tests
            2. script:          jupyterworkflow/tests/test_data.py (with assert statements)
            3. run unit test:   python -m pytest jupyterworkflow
            4. or use makefile: 'make test'
                                where the file 'Makefile' contains:
                                test:
                                    python -m pytest jupyterworkflow

# dump text to clipboard
    import os
    def addToClipBoard(text):
        command = 'echo ' + text.strip() + '| clip'
        os.system(command)

# filename handling
    os.path.splitext(image.filename)
    os.path.basename(image.filename)
    os.path.dirname(image.filename)

# generate vim tags without ctags.exe
    use 'ptags.py' included with Anaconda

# implicit string concatenation
    print ('the first line '
           'and this will be joined directly')

# nice string join
        query_placeholders = ', '.join('?' for c in selected_courses)

# string format:
    # ah 'f-strings' are handier
        key   = "something"
        title = f"This is the key capitalised {key.capitalize()}",

    # Basics
        sample = "I {verb} the {object}".format(verb="took", object="cheese")
        print 'I %s the %s' % ('took', 'cheese')

    # Scientific notation
        print ("{:.3E}".format(myvar))
        print ("{number:.3E}".format(number=top))

    # Commas and *2* decimal places
        print ('\nError is: ', '{display:,.2f}'.format(display=rmsError))

    # Pad AND Truncate!
        TEXT_FORMAT = u""" {tags: <30.30}   {description: <200.200}    Extra: {extended: <200.200}    {href}\n"""

    # Dave Beazley (uses simple brackets {}, {})
        u = urllib.request.urlopen('http://ctabustracker.com/bustime/map/getStopPredictions.jsp?route={}&stop={}'.format(route,stopid))

    # Dave Beazley (right align, and output to file)
        print('{:>5s} {:>10s} {:>10s} {:>10s}'.format('Month', 'Interest', 'Principal', 'Remaining'), file=out)

    # right align, and insert "," for thousands
    '{:>20,}'.format(count)




# decode from byte string back to normal string
    http://stackoverflow.com/questions/606191/convert-bytes-to-a-python-string
    >>> b"abcde"
        b'abcde'
    # utf-8 is used here because it is a very common
    # encoding, but you need to use the encoding your data
    # is actually in.

    >>> b"abcde".decode("utf-8")
        'abcde'

# server current folder on port 8000
    # python 2:
        python -m SimpleHTTPServer
    # python 3:
        python -m http.server
    # in local browser: (not http*S*)
        http://127.0.0.1:8000
        http://111.111.111.11:8000

# types
    Above we saw that variables are simply pointers, and the
    variable names themselves have no attached type
    information.

    This leads some to claim erroneously that Python is
    a type-free language. But this is not the case!

    Python has types; however, the types are linked not to
    the variable names but *to the objects themselves*.

# verbose regex
    a = re.compile(r"""\d +  # the integral part
                    \.    # the decimal point
                    \d *  # some fractional digits""", re.X)

# run a bash command!
    !mv distances_*.json queried_distances

# access HOME variable
    import os.path
    folder = os.path.expanduser("~/study/marks")

# no X11 for matplotlib plots (use savefig!)
    plt.savefig('testit.jpg')

# utf8 header
    # -*- coding: utf-8 -*-

# add a folder to the python search path
    # in ~/.bashrc.local
    export PYTHONPATH="$HOME/path/to/more/py/files:$PYTHONPATH"

# cartesian product
    from itertools import product as cartesian_product
    for coeffs in cartesian_product((0, one), repeat=len(S)):

# get (first) element from a set
    # tuple unpacking
    # this only works if one element in "expr.free_symbols"!
        sym, = expr.free_symbols

    # more explictly
        sym_set = expr.free_symbols
        sym = next(iter(sym_set))

# single element tuple
    # have a trailing comma!
    mytup = 1,
    mytup = (1,)

# auto tuples!
    if you give a comma separated line of values,
    python turns it into a tuple

# raw string
    # if you want \f to appear
    r'some string \f'

# common python 2/3 code
    from __future__ import (print_function, division)

# run function from command line
    python -c 'import foo; print foo.hello()'

# instance attributes
    instances can have __their own__ data
    ie their own variables
    that were not defined at the class level

    myinstance = SomeClass()
    myinstance.previously_undefined = 'some string'

# regex
    re.findall(r"[0-9]", "1+2=3")
    returns:
    ['1', '2', '3']

# regular
    as in regular expressions has a precise
    meaning in computer science/mathematics

# intercept default traceback
    def my_custom_traceback(et, ev, tb):
        pass
    sys.excepthook = my_custom_traceback

# python voices
    conda install -c https://conda.anaconda.org/auto pyttsx
    espeak

# local variables
    # Wrong:
        def f(v, w=[]):
            w.append(v)  # 'w' keeps its value next time function 'f' is called
            print v, w

    # Right:
        def f(v, w=None):
            if w is None:
                w = []
            w.append(v)
            print v, w

# Jake talk:
    - numba:
        - JIT compile to LLVM. Fast as C almost.
    - dask
        - parallel array processing and storage
    - xray
        - numpy + pandas library
        - ndarrays + pandas labels & indices

# quickly create a set
    >>> D = set('abcdefghij')
    >>> len(D)
    10

# sum start
    sum(iterable[, initial_starting_value]) -> value
    # example
        mylist = [1, 2]
        sum (mylist, 4)
        # returns: 7
        # (1 + 2 [+ 4]) = 7

# name of current class
        print (self.__class__.__name__)

# pep8
    # *2* blank lines between IMPORT statements and other code
    # *2* blank lines between each FUNCTION

# sequences returning "None"
    It is a convention in Python that methods that mutate
    sequences return None.

# 'timeit' tip
    take the {lowest} test run result,
    not the {average} or the {mean}

# JSON gotcha
    - Cant put SINGLE quotes around values! (must be double quotes)
    - Cant have UPPERCASE booleans e.g. "True", (must be lowercase )
    - Youll get Python error msg for json.load()
      "No json object could be decoded "

# zed shaw warning
    Most uses of inheritance can be simplified or replaced with
    composition, and multiple inheritance should be AVOIDED!

# new style classes
    # They all inherit from 'object':
    # For a class to inherit something, put it in brackets after the class name
        class MyNewStyleClass (object):

# old style classes
    to see what type it is use:
       MyOldStyleClass.__class__

# show mro
    myclass.mro()

# impure function (Apr 2021: read about "impure" functions in clojure)
    print (in python 2?) is impure -
        it returns a value of NONE

# left-adjust fixed-length string (minus sign)
    print ("%-30s"  %  myvar)

# fabs v abs
    math.fabs() always returns a float
    abs may return any type,
    depending on the "__abs__" method of the type its called on

# comprehension nesting
    for each increment of col,
    row cycles from 0..5
    so "col" is the "controlling" or "outer" loop
    test = [ ('row='+str(row), 'col='+str(col)) for col in range(2) for row in range(5) ]

    but with a NESTED COMPREHENSION,
    row increments and holds,
    and then col cycles 0..2
    so "row" is now the "controlling" loop
    test = [ [('row='+str(row), 'col='+str(col)) for col in range(2)] for row in range(5) ]

# set intersection
    mylist = [{1,2,3}, {2}]
    correct:
        common_ids = set.intersection(*mylist)
        uses the set CLASS
    wrong:
        common_ids = set().intersection(*mylist)
        intersects "mylist" with the EMPTY set!

# conditional expression
    different to conditional statement!
    myvar = 'two' if x == 2 else 'not two'

# conditional expressions e.g. abs value
    x if (x > 0) else -x

# functions
    def my_func(FORMAL_ARGUMENT):
        print formal_argument

    my_func(ACTUAL_ARGUMENT)

# interesting dictionary task
    ## 25: (Task 25) A dictionary mapping names to salaries
    id2salary = {0:1000.0, 1:1200.50, 2:990}

    # Map name to salary (brittle)
    names = ['Larry', 'Curly', 'Moe']
    listdict2dict = { name:id2salary[key] for (name, key) in
                      zip(names, range(len(id2salary))) }

    # Map name to salary (guard to handle missing salaries)
    names = ['Larry', 'Curly', 'Moe', 'enda']

    listdict2dict = { name:id2salary[names.index(name)]
            if names.index(name) in id2salary
            else 'salary not found' for name in names}

# zip
    # Note: zip() does not return a list.
    # It returns an "iterator of tuples"

# tuple comprehension NOT!
    (i for i in [1,2,3])
        # this is a *generator*!

    my_gen=(i for i in [1,2,3])
    [x for x in my_gen]

# generators
    my_gen = (i for i in [1,2,3])
    next(my_gen)
    list(my_gen)

# unpacking (sides must equal)
    [x, y, z] = [4, 3, 2]

# slicing
    even indexes:   my_list[::2]
    odd indexes:    my_list[1::2]

# concat several lists
    sum([ [1,2,3], [4,5,6], [7,8,9] ], [])
    # here the empty list "[]" is the "initial starting value"

# sets
    S | T       -> union
    S & T       -> intersection
    set()       -> empty set, not {}!
    elements    -> must not be mutable
                   frozenset elements ok
                   tuples ok

# subtle print point
    # python 2
        print("hello!") is evaluated as a STATEMENT where
        the argument to the print statement is the
        expression ("hello!").

        - This can make a difference if you are printing more
        than one value; for example print("Hello", "world")
        will print the 2-element tuple ('Hello', 'world')
        instead of the two strings "Hello" and "world".

# mutating iterated lists
    - A python idiom to mutate the iterated list is to take a slice of the
      entire list:

    for i in S[:]:
        S.remove(i + 1)

    - That way you are iterating over a COPY of the original list, S, and
      modifying S itself.

    If you do need to remove items from a list-like
    structure, you have a few other options than list.
    Theres `deque`, which stands for 'double ended queue'
    and has an API that supports append/remove from both
    ends of the list in an efficient way.  Removing an
    arbitrary item is still O(n), though. :(

    # This page has some pretty useful information for when
    # you're trying to pick a data structure and geeking out
    # about time complexity:
    https://wiki.python.org/moin/TimeComplexity

# comprehensions
    can create a set, list or dict

# exit script
    good way
        import sys
        sys.exit()

    # not so good
        raise SystemExit

# check variable type
    if not isinstance(myvariable, RationalNumber) then

# same object?
    are 2 variables pointing to same object in memory??
    w is v

# dictionary
    # is a SET!
        of key-value pairs.
        keys/values can be expressions!
            {2+1: 'thr' + 'ee' , 2*2: 'fo' + 'ur' }

    # get element(s)
        mydict[key]
        mydict.keys()
        mydict.values()
        mydict.items() returns tuple(key, value)
        mydict.get(key, "return this if not found")

    # enumerate(dict)
        doesnt have expected behaviour
        doesnt interpret it as (key, value) pairs
            for i,k in enumerate({'key1':0, 'key2':1}):
                print(i, k)
        instead treats dictionary as a sequence of KEYS
        solution: use 'mydict.items()' instead



    # iterate (python 3)
    for k,v in mydict.items():
        print ('key: %s\nvalue: %s ' % (k,v))

    # create using comprehension
        { k:v for (k,v) in [(3,2),(4,0),(100,1)] }

    # like a function in maths really,
        give it a key, and always
        get the same value back.
        i.e. a function with FINITE DOMAIN.

# python LONG int
    if you multiply 2 ints together > 64 bits,
    the result is a long int.
    they have an "L" at the end,
    which can cause probs writing out
    to a file or doing other processing
    (dont know if python3 has the 'L' at the end)

# beware!: string.strip()
    'ng foo bar ngngnnnn'.strip('ng')
    result:
        ' foo bar '
    doesnt remove all occurrences of 'ng'
    but removes all occurrences of 'g' AND 'n'
    from the BEGINNING and END of the string.

# Replacing string characters:
    s.replace (' ', 'x')
    replaces ALL occurrences of ' ' and
    gives you back a NEW string.

# Object memory address
    id(my_object)

# strings
    are immutable in python!
    to replace 4th character in string "s" with x,
    create a new string "t"
        t = s[:4] + "x" + s[5:]

# list comprehensions
    are just a nice syntax for using "map"!! (stein)
    v = range(10)
    # these are equivalent:
        [n*(n+1)/2 for n in v]
        map (lambda n: n*(n+1)/2, v)

# generators
    round brackets!
    (k^3 for k in xrange(10^10) )

# importing a module
    EXECUTES all code in that module.
    Can have unexpected consequences!

    # thats why you have stuff like:
        if __name__ == '__main__'

    # because if a file is being
    # IMPORTED its name will be:
        __name__ == 'palindrome_v1'
    and not:
        __name__ == '__main__'

# "and" operator
    lazy evaluation!
    if the first operand is False,
    the expression evaluates to False
    and the 2nd operand is not evaluated.

# unittest
    (although is 'py.test' better?)
    Uses a separate module from code being tested.
    Leaves the code more readable...

    import unittest
    if __name__ == '__main__'
        unittest.main(exit=false)

    # (exit=false)
        if you are running inside IDLE.

    # "test_"
        unittest looks for all methods beginning with "test_"

    # return codes
        F   = fail
        E   = error

# doctests
    # howto call:
        if __name__ == '__main__':
            import doctest
            doctest.testmod()

    # more feedback:
        doctest.testmod(verbose=True)


# PIP
    # pip cache
        ~/.cache/pip
    # pip ignore cache
        pip --no-cache-dir install scipy
    # get list pip dependencies
        pip freeze > requirements.txt

# python talk: better naming conventions would be:
    "for"       loop, should be "for each"
    "else"      in for loop, should be called "nobreak"
    "lambda"    could be called "makefunction"

# performance:
    cprofile - std library
    line profiler - pypi index
    https://jiffyclub.github.io/snakeviz/
    Pyinstrument
    pypy jit viewer
    python wiki, algorithm complexity

# string translate
    plot_filename = folder.translate('-', '\/')

# named tuples with typing
    import typing
    Point = typing.NamedTuple("Point", [('x', int), ('y', int)])
    # or from Python 3.6
    class Point(NamedTuple):
        x: int
        y: int = 1  # Set default value

# named tuples ( I thought this was a defaultdict or ordereddict!)
    from collections import namedtuple
    GridSquare = namedtuple(typename='GridSquare', field_names=['folder', 'desc'])
        # ... or more concise definition
        Card = collections.namedtuple('Card', ['rank', 'suit'])
    squares = []
    squares.append(GridSquare(folder='run_6',  desc='depths.36.pop_b_o'))
    first = squares[0]
    first.folder
    first.desc

# logging
    # severity levels:
        logging.basicConfig(level=logging.INFO)
        logging.debug('severity/level too low, will not print')
        logging.info('this will be printed')
        logging.warning('this will be printed too')

    # integer values: (can define your own)
        logging.DEBUG = 10
        logging.INFO = 20
        logging.WARNING = 30

    # default severity:
        logging.WARNING

    # output to standard error:
        logging.basicConfig(level=logging.DEBUG, stream=sys.stderr)

    # wipe logfile each time:
        # (filemode='w')
        logging.basicConfig(level=logging.DEBUG, filename='example.log', mode='w')

# import module! from sub-folder
    put __init__.py in the sub-folder

# make dir with parents
    os.makedirs(output_dir)

# use a set
    unique = set(interesting['depth'])

# list all files in directory
    import glob
    print glob.glob("./*.csv")

# print headers and values
    for label, value in zip(extract.colnames, extract[0])
        ax.annotate(label, value)

# dict keys
    You can use any (hashable) object as a dictionary key,
    so just use a TUPLE containing those two values as the key.

# dict.get
    dict = {'Name': 'Zara', 'Age': 27}
    print "Value : %s" %  dict.get('Age')
    print "Value : %s" %  dict.get('gender', "not found")

# endswith
    sample = "this is string example....wow!!!";
    suffix = "wow!!!";
    print sample.endswith(suffix);
    True

# remove a directory
    import shutil
    shutil.rmtree('/folder_name')

# syntax check a python file
    python -m py_compile <<somefile.py>>
    my alias: pyc

# Matplotlib without X-Windows
    import matplotlib
    matplotlib.use('Agg')

# Module file path
    print <module>.__file__

# Show easy installed modules
    easy_install yolk
    yolk -l

# USE DICTIONARIES!
    Much quicker than arrays

# IMPORTING:
    import math                  # result:  math.sqrt
    import math as m             # result:  m.sqrt
    from math import *           # result:  sqrt
    from math import log as ln   # Natural log  more intuitive

# Variables
    # Some stuff about Variables
    del x; print x          raises error exception.
    y=None; print y         prints blank line. No error exception.
    a=10; b=a               Now b refers to the same memory space as a. Doesnt create a new memory space for b.
    Known as object-REFERENCE-semantics.

# list comprehension
    # Powerful but confusing syntax.
    # Format: [OUTPUT  LIST SELECTION  CONDITIONS]

    # create 3 member list
    a = ["aa", "bb", "ccc"]
    input: [ len(x)  for x in a ]
    output: [2, 2, 3]

    a = [1, 2, 3, 4]
    input: [num*num  for num in a  if num>2]
    output: [9, 16]

# General
    -tt                     option in (top) source file. Halt program if tab+spaces!
    dir(sys)                show all sys functions. Easier to use Google search!
    help(len)               show help on len function
    help(''.center)         show help on centre method of a STRING object

# sys.argsv
    object with holds command line parameters.
    Convention: argsv[0] is module name.

# Boolean Stuff
    and, or, not            instead of &, | and
    == !=                   is, is not
    falsy                   0, "", None, empty containers, False, i.e. bool(0)
    truthy                  anything else, True,  i.e. bool(1)

# JIT interpreter
    Does everything at the last second.
    Can have function DoesNotExist() but no error!
    Therefore need good unit test plans with complete code coverage.

# exception handling
    # main difference is *as* in Python 3

    # Python 2 (this only traps NameError!)
        try:
            cause_an_error
        except NameError, err:
            print err, '--> our msg'
        # output:
            # name 'cause_an_error' is not defined --> our msg

    # Python 3 (this only traps NameError!)
        try:
            cause_an_error
        except NameError as err:
            print(err, '--> our msg')
        # output:
            # name 'cause_an_error' is not defined --> our msg

    # python 3 - trap GENERAL error
        try:
            os.chdir(start_dir)
        except Exception as e:
            print('\n\nError setting default folder:\n', e)
        else:
            # success!
            print ('\n\nStart folder: %s\n' % start_dir)


# In[]

# *args, **kwargs

    from __future__ import (print_function, division)

    # tuple!
    def test_args(*args):
        print ('*args: ', type(args))
        print ('*args contents: ', args, '\n')

    # dictionary!
    def test_kwargs(**kwargs):
        print ('**kwargs: ', type(kwargs))
        print ('**kwargs contents: ', kwargs, '\n')
        print ('kwargs.keys(): ', type(kwargs.keys()))
        keys_list =  kwargs.keys()
        print (keys_list)
        # various ways of accesing the keyword arguments
        print (kwargs[keys_list[0]])
        print (kwargs[kwargs.keys()[0]])
        print (kwargs[keys_list[1]])
        print (kwargs[kwargs.keys()[1]])
        print (kwargs['kw1'])
        print (kwargs['kw2'])

    test_args('one', 'two', 'three')
    test_kwargs(kw1='kw1 value', kw2='kw2 value')



# In[]


# variables  --> POINTER to bucket!
    # Consider this:
    x = 4

    # This may seem straightforward, but if you have the wrong mental model of
    # this operation, the way Python works may seem confusing.

    # In many languages, variables are best thought of as 'containers' or
    # 'buckets' into which you put data. In C, when you write

    // C code
    int x = 4;

    # you are essentially defining a memory bucket named "x", and putting the
    # value "4" into it.

    # But Python variables are best thought of not as 'containers' but as
    # 'pointers'. So in Python, when you write
    x = 4

    # you are essentially defining a pointer named "x" which points to some
    # other bucket containing the value "4".

    # One consequence: because Python variables just point to various objects,
    # there is no need to "declare" the variable, or even require the variable
    # to always point to information of the same type!

    # This is the sense in which people say Python is dynamically-typed:
    # variable names can point to objects of any type.


# complex numbers

    # Complex numbers
        u = 2.5 + 3j         # Creates new complex number
        u = complex(2.5, 3)  # Another way to create the same complex number
        u.real               # Returns the real part
        u.imag               # Returns imaginary part
        u.conjugate          # You get it!

    from cmath import *
        # Maths module which handles complex numbers and always
        # outputs a complex. Ordinary "math" module will fail if
        # arguments are complex.


# finite state machine

     regex: r"[0-9]+%"

     →→ (1) →→→ 0-9 →→→ (2) →→→ % →→→ ((3))

     start
           - arrow coming out of nowhere on the left

     3 circles
           - e.g. (1) = a state. Some states have self-loops

     other arrows
           - "edges" or "transitions". Each edge has a label
           which is kind of the condition on that edge

     string supplied: "2x"

     state 1:  ok because theres a "2"
     state 2:  falls off the state machine because no
               outgoing edge from state 2 on an "x"

### python tuples
    - Every introductory python course presents tuples as
      just immutable lists.
    - But a "more accurate" way of describing tuples is
      as _records_ with no field names.
    - When you see tuples as records then the fact that are
      inmutable make sense, since the order and quantity of
      the items matters (it remains constant).
    - Records usually have field names and here is where
      namedtuples are useful.
    - Also helps to clarify what the tuples wear (see
      https://youtu.be/wf-BqAjZb8M?t=44m45s).
    - If you are thinking why don't you define a class, I'll
      give some reasons:

    1. You know beforehand that the number of items wont
       be modified and the order matters since you are
       handling records. So it is a simple way of
       accomplishing that constraint.

    2. Because they extend tuple they are inmutable too and
       therefore they dont store attributes per instance
       __dict__, field names are stored in the class so if
       you have tons of instances you save a lot of space.

    - Why create a class if you only need a read-only
      interaction? But what if you need a method? Then
      extend your 'namedtuple' class and add the
      functionality you want.
    - Eg: if you want to control the values of the fields
      when creating the namedtuple you can create your own
      namedtuple by overriding "__new__". At this point its
      worth looking at:
      https://pypi.python.org/pypi/recordclass.


# Accept command line args (used in my OU masters "create grid" script)
    opts, args = getopt.getopt(sys.argv,'')

    # Check command-line arguments
    # args[0] is always the name of the script
    if len(args) < 2:
        print "You must specify an output folder."
        print "Exiting..."
        sys.exit()
    else:
        output_folder = str(args[1])


    if os.path.exists(output_folder):
        print "This output folder exists already"
        print "Exiting..."
        sys.exit()
    else:
        # Create an output folder
        make_folder_parents(output_folder)


# links

    - old pdb++ (pdbpp) debugger         $MY_NOTES/cs/misc/archive/pdbpp-debugging.sh
    - old pudb debugger                  $MY_NOTES/cs/misc/archive/pudb-debugger.txt
    - Python Standard library            https://docs.python.org/3/library/
    - Effective Python source code       https://github.com/bslatkin/effectivepython
    - how does python path find packages https://leemendelowitz.github.io/blog/how-does-python-find-packages.html
    - Python web Server (Andrea)         https://gunicorn.org/
    - pytudes Peter Norvig

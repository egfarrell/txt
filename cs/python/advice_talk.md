py advice talk

### Paraview
    Large Datasets for python

# Numpy Arrays
    All numpy arrays are "C" ordered

    Python is a wonderful language, but some parts should really have
    bright WARNING signs all over them. There are features that just can't
    be used safely and others are that are useful but people tend to use
    in the wrong ways.

    This is a rough transcript of the talk I gave at my local Python group
    on November 15, with some of the audience feed back mixed in. Most of
    this came from hanging around the Python IRC channel, something I
    highly recommend.


# Easy Stuff First
    Starting with the non-controversial: Anything that has been marked
    deprecated should be avoided. The deprecation warning should have
    instructions with safe alternatives you can use.

    Some of the most frequent offenders are parts of the language that
    make it difficult to safely call other programs:

    >os.system()
    >os.popen()

    import commands

    We have the excellent __subprocess__ module for these now, use it.

# Ducks in a Row
    Explicitly checking the type of a parameter passed to a function
    breaks the expected duck-typing convention of Python. Common type
    checking includes:

    >isinstance(x, X)
    >type(x) == X

    With type() being the worse of the two.

    If you must have different behaviour for different types of objects
    passed, try treating the object as the first data type you expect, and
    catching the failure if that type wasn't that type, and then try the
    second. This allows users to create objects that are close enough to
    the types you expect and still use your code.

    >See also isinstance() considered harmful.


# import pickle or cPickle
    Objects serialized with pickle are tied to their implementations in
    the code at that time. Restoring an object after an underlying class
    has changed will lead to undefined behaviour. Unserializing pickled
    data from an untrusted source can lead to remote exploits. The pickled
    data itself is opaque binary that can't be easily edited or reviewed.

    This leaves only __one place where pickle makes sense__ — short
    lived data being passed _between processes_, just like what the
    multiprocessing module does.

    Anywhere else use a different format. Use a database or use JSON with
    a well-defined structure. Both are restricted to simple data types and
    are easily verified or updated outside of your Python script.

# Toys are for Children
    Many people are drawn to these modules because they are part of
    Python's standard library. Some people even try to do serious work
    with them.

        >asyncore / asynchat
        >SimpleHTTPServer

    The former resembles a reasonable asynchronous library, until you find
    out there are no timers. At all. Use Twisted instead, it's the best
    we've got.

    The latter makes for a neat demo by letting giving you a web server in
    your pocket with the one command python -m SimpleHTTPServer. But this
    code was never intended for production use, and certainly not designed
    to be run as a public web server. There are plenty of real, hardened
    web servers out there that will run your python code as a WSGI script.
    Choose one of them instead.

# Foreign Concepts
    > import array
    All the flexibility and ease of use of C arrays, now in Python!

    If you really really need this you will know. Interfacing with C code
    in an extension module is one valid reason.

    If you're looking for speed, try just using regular python lists and
    PyPy. Another good choice is NumPy for its much more capable arrays
    types.

# Can't be Trusted

    `def __del__(self):`

    The mere existence of this method makes objects that are part of a
    reference cycle uncollectable by Python's garbage collector and could
    lead to memory leaks.

    Use a weakref.ref object with a callback to run code when an object is
    being removed instead.

    See also Python gc module documentation

# Split Personality
    `reload(x)`

    It looks like the code you just changed is there, except the old
    versions of everything is still there too. Objects created before the
    reload will still use the code as it was when they were created,
    leading to situations with interesting effects that are almost
    impossible to reproduce.

    Just re-run your program. If you're debugging at the interactive
    prompt consider debugging with a small script and python -i instead.

# Almost Reasonable
    `import copy`

    The copy module is harmless enough when used on objects that you
    create and you fully understand. The problem is once you get in the
    habit of using it, you might be tempted to use it on objects passed to
    you by code you don't control.

    Copying arbitrary objects is troublesome because you will often copy
    too little or too much. If this object has a reference to an external
    resource it's unclear what copying that even means. It can also easily
    lead to subtle bugs introduced into your code by a change outside your
    code.

    If you need a copy of a list or a dict, use list() or dict() because
    you can be sure what you will get after they are called. copy(),
    however might return anything, and that should scare you.

# Admit You Always Hated It
    `if __name__ == '__main__':`

    This little wart has long been a staple of many python introductions.
    It lets you treat a python script as a module, or a module as a python
    script. Clever, sure, but it's better to keep your scripts and modules
    separate in the first place.

    If you treat a module like a script, then something imports the module
    you're in trouble: now you have two copies of everything in that
    module.

    I have used this trick to make running tests easier, but setuptools
    already provides a better hook for running tests. For scripts
    setuptools has an answer too, just give it a name and a function to
    call, and you're done.

    My last criticism is that a single line of python should never be 10
    alphanumeric characters and 13 punctuation characters. All those
    underscores are there as a warning that some special non-obvious
    language-related thing is going on, and it's not even necessary.

    See also setuptools/distribute automatic script creation

# Don't Emulate stdlib
    It's in standard library, it must be well written, right?
    May I present the implementation of __namedtuple__, which is really handy
    little class that used properly can significantly improve your code's
    readability.

    >def namedtuple(typename, field_names, verbose=False, rename=False):
        # Parse and validate the field names.  Validation serves two purposes,
        # generating informative error messages and preventing template injection attacks.

    Wait, what? "preventing template injection attacks"?

    This is followed by 27 lines of code that validates `field_names`. And then:

    >template = '''class %(typename)s(tuple):
    > '%(typename)s(%(argtxt)s)' \n
    > __slots__ = () \n
    > _fields = %(field_names)r \n
    > def __new__(_cls, %(argtxt)s):
    >     'Create new instance of %(typename)s(%(argtxt)s)'
    >     return _tuple.__new__(_cls, (%(argtxt)s)) \n
    > @classmethod
    > def _make(cls, iterable, new=tuple.__new__, len=len):
    >     'Make a new %(typename)s object from a sequence or iterable'
    >     result = new(cls, iterable)
    >     if len(result) != %(numfields)d:
    >     raise TypeError('Expected %(numfields)d arguments, got %%d' %% len(result))
    >     return result \n
    > def __repr__(self):
    >     'Return a nicely formatted representation string'
    >     return '%(typename)s(%(reprtxt)s)' %% self \n
    > def _asdict(self):
    >     'Return a new OrderedDict which maps field names to their values'
    >     return OrderedDict(zip(self._fields, self)) \n
    > __dict__ = property(_asdict) \n
    > def _replace(_self, **kwds):
    >     'Return a new %(typename)s object replacing specified fields with new values'
    >     result = _self._make(map(kwds.pop, %(field_names)r, _self))
    >     if kwds:
    >         raise ValueError('Got unexpected field names: %%r' %% kwds.keys())
    >     return result \n
    > def __getnewargs__(self):
    >     'Return self as a plain tuple.  Used by copy and pickle.'
    >     return tuple(self) \n\n''' % locals()

    Yes, that's a class definition in a big Python string, filled with
    variables from locals(). The result is then execed in the right
    namespace, and some further magic is applied to "fix" copy() and
    pickle().

    I believe this code was meant some sort of warning to people that
    would contribute code to Python — something like "We make it look like
    we know what we're doing, but we're really just nuts" (love ya
    Raymond)

See also _collections.py_ source code

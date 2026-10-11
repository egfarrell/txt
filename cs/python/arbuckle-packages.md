Mastering Python course

### namespace comment
    A Python _module_ is simply a Python _source file_, which can expose
    classes, functions and global variables.

    When imported from another Python source file, the file name is
    treated as a _namespace_.!!

    A Python _package_ is simply a _folder_ of Python module(s).

### packages
    - Packages are multiple _modules_ combined together.
    - Packages live as a _folder_ on the file system.

    Two things turn a regular folder into a package:
    1. must be in `sys.path`
    2. `__init__.py` in the folder 
        (not neccessary since Python 3.3)

### namespace packages
    These don't have an `__init__.py` in them.
    Python combines all namespace packages into a master package?

    Namespace packages define a _logical_ relationship rather
    than explicitly referencing the file structure on disk?

### package structure v interface
    - _structure_
        the stucture is the various module files inside the package
        folder. this should be well broken up into many files.
    - _interface_
        is whats presented to the end user when they import the
        package. The user should only have to use 1 or 2 import
        statements and work with a _minimal_ number of functions
        or class.

### relative import
    inside a package if you have:
        `import module`
    does that mean look in sys.path for the module
    or look inside the current package?

    To reduce ambiguity, we do a relative import:
        `import .module`
    which will look (first?) in the current package.

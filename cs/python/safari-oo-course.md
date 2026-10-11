Python Beyond The Basics - 
Object Oriented Programming by David Blaikie

### pytest
    David thinks its better than 'unittest'
    `sudo pip install pytest` or anaconda has it already
    if:
        program: `myprogram.py`
        function: `double_it`

    then  use:
        `test_myprogram.py`
        `test_double_it`

    to run the tests:
        `py.test`


### serialisation of objects
    YAML, JSON & pickle will store object instances,
    but when you _reload_ the instance,
    the actual class for the instance
    __must__ be available.
    So really, we are just storing the
    state of an instance, but not the
    actual code of the class etc.
    
### yaml
    `import yaml`
    `myvar = yaml.load(file_handle)`
    `yaml.load()` will accept a file or string
    `yaml.safe_load()` can block malicious saved objects

### JSON
    `myvar = json.load(file_handle)`
    myvar is type {dict}
    `json.dump(myvar, file_handle)`
    can use JSON to pretty print a YAML object!
    `print json.dumps(my_yaml, indent=4, separators=(',', ': '))`

### pickle
    pickle.dump()
    pickle.load()
    pickle.dumpS --> for a string
    `pickle.dump(myvar, file_handle)`
    `myvar = pickle.load(file_handle)`

### variable naming conventions
    public variables/attributes
        `regular_lower_case`
        (can be accessed by importer of the module 
        or user of the class)

    private variables/attributes
        `_single_leading_underscore`
        internal use in the module or class

    private attributes
        `__double_leading_underscore`
        shouldn't be subclassed. You can actually
        access it like this:
        `myclass._GetSet__double_leading_underscore`
        (its 'mangled')

    magic attributes
        `__double_underscores__`

### @property decorators
    * _@property_ can be used instead of 'getters' and
      'setters'... 
    * tip: @property methods shouldnt encapsulate
      __expensive__ operations (e.g. database access,
      network writes) because setting an attribute looks
      __cheap__...

### breaking Encapsulation
    * instance attributes can be changed anywhere, breaking
      encapsulation.
    * 'Getter' and 'setter' methods only _encourage_
      encapsulation but user not forced to use them.
    * By design Python does __not enforce privacy__ and it
      is considered 'unPythonic' to do so

### inherit from python builtins
    - e.g. subclass the 'dict' or 'list' builtin objects

### common magics
    - var[1]      `var.__getitem__(1) `
    - var[1:3]    `var.__getslice__(1,3) `

### magic attributes
    - denoted with double underscore
    - e.g. `__add__`
    - usually called __implicitly__ 
    - and not directly by us.

### everything is an object
    - `var1 + var2`
    - is the same as
    - `var1.__add__(var2) `
    - Python reads the '+' sign as a method call on the 'L' value
      (left hand object)  (came across "Lvalue" in C programming
      book too!)

### delegation (compose)
    inheritance         -> __implicit__ delegation 
    class composition   -> __explicit__ delegation 

    - extra note: composition: Creating objects with other
      objects as members. Composition should be used for
      a "has-relationship".

    composition leads to simpler systems, 
    which are _decoupled_ 
    while inheritance can be _brittle_.

    inheritance  
        Below we call `Child.implicit()`
        which (implicitly) gets the method 
        from its inherited parent.
        `class Parent(object):
            def implicit(self):
                print "PARENT implicit()"  `

        `class Child(Parent):`
            `pass`

        `Child.implicit()`

    class composition  
        In the init() method, we instantiate
        the class 'Other' and _explicitly_
        have to call `other.implicit()`.

        `class Other(object):`
            `def implicit(self):`
                `print "OTHER implicit()"`

        `class Child(object):`
            `def __init__(self):`
                key line here!
                `self.other = Other()`
            `def implicit(self):`
                no we have to explicitly call it
                `self.other.implicit()`

### specialisation
    Object B is said to be a specialization 
    of Object A when:
    * B has all the features of A
    * B can provide new features
    * B can perform (some of) A tasks in a different way

### abstract base classes 'abc'
    - create a 'template' or 'contract' which other subclasses must
      follow. 
    - These classes are _not_ instantiated.

    ```
    import abc
    __metaclass__ = abc.ABCMeta
    @abc.abstractmethod
    def set_val(self, input):
        """ Set a value in the instance """
        return 
    ```
    note: abstract methods dont _do_ anything,
    the simply have 'return' at the end.
                         

### methods
    * instance methods - 
        bound to the _instance_, use 'self'

    * class methods - 
        `use @classmethod `
        takes _class_ as argument and works
        with the class object

    * static methods
        - `use @staticmethod `
        - utility method, doesn't work specifically with either the
          _class_ or _instance_ methods
        - note: don't pass 'self' argument, just work directly with
          whatever value is passed in

### 'diamond shape' inheritance
    extra MRO rule: if the same class appears
    more than once in the MRO, remove earlier
    occurances...
            A `do_this() `
        B       C `do_this() `
            D
    Python MRO: 
        D -> B -> {A-deleted} -> C -> A

    even though this looks like a '_breadth-first_' 
    search, its not really. Its implementing
    an extra rule.

### multiple inheritance lookup order
    Python MRO: __depth-first__

### inherit parent constructor
    ```
    def __init__(self, name):
        super(Dog, self).__init__(name)
        self.breed = random.choice(['breed1', 'b2', 'b3'])
    ```
    this combines _generalised_ functionality 
        (i.e. call superclass __init__ to set name)
    with _specific_ functionality
        (i.e. the subclasses own init to set breed)

### builtin functions
    `len(my_string) `
    is syntactic sugar that translates into a __method call__:
    `my_string.__len__() `

### duck typing
    - reads an objects __attributes__ 
    - to decide if its the proper type,
    - instead of checking _datatype_ of the object itself

### polymorphism
    * really a technique 
    * doesnt use method order resolution or any magic
    * two classes expose the same __interface__ 
    * two classes expose the same __method names__
    * often there is a _contract_ for a method interface

    - 'Dog' and 'Cat' classes inherit from 'Animal'
    - Both implement their own method `show_affection`
    `Dog('rover').show_affection() `
    `Cat('fluffy').show_affection() `

### class attributes ("class data")
    are accessible by all instances
    classic example: 
        instance counter variable at the class level
        ``
        class InstanceCounter(object):
            count = 0

            def __init__(self, val):
                self.val = val
                InstanceCounter.count += 1
        ``

    __note__: 
        must use "InstanceCounter.count" because
        you might have a global variable called "count"

### attribute lookup order
    - lookup INSTANCE attribute first,
    - then lookup CLASS attribute of the same name

### encapsulation
    - getter and setter methods

### instance attributes
    - instances can have __their own__ data 
    - ie their own variables 
    - that were not defined at the class level

### self
    - is the __instance__ upon which the method is called

### classes 
    - begin with a captial
    - are a "factory" (blueprint) for an instance (widget)

### OOP three pillars
    * encapsulation
    * inheritance
    * polymorphism




# In[]

# Ray recommends:
defaultdict

# when opening a file, use 'utf-8'
open file ... encoding='utf-8'...

# In[]


it  = iter('something')
next(it)
next(it)
next(it)

# consume rest of iterator
remaining = list(it)
remaining

# In[]


# create tuple
t = ('one', 'two', 'three', 'four')

# unpack it
a, b, c, d = t
print (a, b, c, d)

# In[]


# looping idioms
names = 'john mary pat donald'.split()
colors = 'red blue yellow'.split()
cities = 'dublin london paris new-york paris madrid berlin dublin'.split()

for name in names:
    print (name)

for i, name in enumerate(names, start=1):
    print (i, name)


# show a list backwards!
for color in reversed(colors):
    print(color)

# zip
for name, color in zip(names, colors):
    print(name, color)

# alphabetical order
for color in sorted(colors):
    print(color)

# order by length(!)
for color in sorted(colors, key=len):
    print(color)

# remove duplicates
for city in set(cities):
    print(city)

# all these idioms COMPOSE together
for i, city in enumerate(reversed(sorted(set(cities)))):
    print(i, city)


# In[]

# counters!
import collections

c = collections.Counter()

c['red']    += 1
c['blue']   += 1
c['blue']   += 1
c['yellow'] += 1
c['red']    += 1
c['red']    += 1

list(c.elements())
c.most_common(1)
c.most_common()


# In[]


# use assertions to check things!
assert 3 + 5 == 8
assert 3 + 4 == 8

# In[]

# named tuples
Person = collections.namedtuple('Person', ['name', 'age', 'status'])
p = Person('gerard', 43, 'married')

# has all normal methods of a tuple!
isinstance(p, tuple)
len(p)

a, b, c = p
print(a, b, c)

p[:2]
p[0]

# self-documenting!
p.name
p.status

# In[]

bisect
# search ranges eg grades, tax rates

from heapq import merge
from itertools import islice

a = [1,2,3]
b = [4,5,6]
c = [7,8,9]
d = [10]

# merge ALREADY SORTED lists
list(merge(a,b,c,d))

# merge actually produces an iterator ('list' consumes this)
it = merge(a,b,c,d)
next(it)
next(it)

list(islice('asdsdfkljsdflfsdfsf', 0, 8, 2))

# more memory efficient
list(islice(it, 3))

# In[]

# sys.intern
# random.exovariate
# time.sleep() and time.time()
# hashlib
# repr of a tuple
# joining strings
# floor division

# ternary operator
score = 40
'pass' if score > 50 else 'fail'

# "and/or" short-circuit boolean operators that return a value
# they return THE VALUE that makes an expression true or false!

# the following is a "short circuit" cos we dont even have to evaluate the
# second expression cos the first one is already false
False and True

# 'hello' is non-empty so is "truthy"
'hello' and True
# surprise!
True and 'hello'


# In[]


# testing

# better than a linter: (Ray says linters produce a lot of 'noise'. True!)
pyflakes quadratic.py

# doctests!
# encourages you to put more examples in your documentation
if __name__ == '__main__':
    import doctest
    doctest.testmod(verbose=True)


# mypy
# type inference checking
# add types to your function signatures
from typing import Tuple

# py.test
# Raymond says its good and lightweight
test_quadratic.py


# In[]


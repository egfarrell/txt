# In[]


# 'defaultdict' means if a key is not found in the dictionary,
# then instead of a 'KeyError' being thrown, a new entry is
# created. 

# The type of this new entry is given by the argument of
# defaultdict. For example:

mydict = {}
mydict[3]
# KeyError

mydefaultdict = defaultdict(int)
mydefaultdict[3]
# '3' doesnt exist but it adds it anyway! (as an int(), which is 0)

# now check that '3' is added as a key
mydefaultdict


# In[]

# mad example!
# Quick way of creating nested dictionaries.
# Useful for keeping track of data thats parameterised.


from collections import defaultdict

d = defaultdict(lambda: defaultdict(dict))

d['temp'][2000]['ndata']=100210101
d['temp'][3000]['ndata']=100210101
d['temp'][2000]['ndata']=10

d.keys()
# dict_keys['temp']

d['temp'].keys()
# dict_keys['2000','3000']


# In[]

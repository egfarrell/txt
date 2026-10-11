# py formatting printf

    %s             # string
    %d             # integer
    %f             # float - decimal with 6 decimal places
    %g             # compact decimal OR scientific notation (using "e")
    %G             # compact decimal OR scientific notation (using "E")
    %%             # percentage sign itself
    %10.4f         # float with 4 decimals in a field 10 wide
    %.2f           # float with 2 decimals in as narrow a field as possible


# In[]

>>> 'Coords: {lat}, {long}'.format(lat='37.24N', long='-115.81W')
# 'Coords: 37.24N, -115.81W'


# In[]

>>> coord = {'lat': '37.24N', 'long': '-115.81W'}
>>> 'Coords: {lat}, {long}'.format(**coord)
# 'Coords: 37.24N, -115.81W'



# In[]

# the nested {1} takes the 2nd argument, the current value
# of n, and applies it as specified (here, to the
# "precision" part of the format -- number of digits after
# the decimal point), and the outer resulting {0:.4f} then
# applies. 

# Of course, you can hardcode the 4 (or whatever number of
# digits) if you wish, but the key point is, you don't have
# to!

import math
n = 4
p = math.pi
'{0:.{1}f}'.format(p, n)
# '3.1416'


# In[]

# Much better!!!

>>> '{number:.{digits}f}'.format(number=p, digits=n)
# '3.1416'

# In[]


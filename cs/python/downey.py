# discussion on classes, objects and SELF!

# Allen Downey

# 7.2 Printing objects
# --------------------

# Previously we defined a class named "Time" 
# and a function named "print_time":

class Time(object):
    """Represents the time of day.

    attributes: hour, minute, second
    """

def print_time(time):
    print '%.2d:%.2d:%.2d' % (time.hour, time.minute, time.second)

# To call this function, 
# pass a Time object as an argument:

>>> start = Time()
>>> start.hour = 9
>>> start.minute = 45
>>> start.second = 00
>>> print_time(start)
# 09:45:00

# To make "print_time" a method, all we have to do is move the
# function definition inside the class definition. Notice the change
# in indentation.

class Time(object):
    def print_time(time):
        print '%.2d:%.2d:%.2d' % (time.hour, time.minute, time.second)

# Now there are two ways to call print_time. 
# The first (and less common) way is to use:

# FUNCTION syntax:                             # METHOD syntax (second more concise way)  
>>> Time.print_time(start)                     >>> start.print_time()                     
# 09:45:00                                     # 09:45:00                                 

# In this use of dot notation, Time is         # In this use of dot notation,           
# the name of the class, and print_time        # print_time is the name of the method   
# is the name of the method. start is          # (again), and start is the object the   
# passed as a parameter.                       # method is invoked on, which is called  
                                               # the subject.                           
                                                                                        
                                               # Just as the subject of a sentence is   
                                               # what the sentence is about, the        
                                               # subject of a method invocation is what 
                                               # the method is about.                   

                                               # Inside the method, the SUBJECT is      
                                               # assigned to the first parameter, so in 
                                               # this case "start" is assigned to       
                                               # "time".                                



# 17.3. Another example
# ---------------------

# By convention, the first parameter of a method is called
# "self", so it would be more common to write print_time
# like this:

class Time(object):
    def print_time(self):
        print '%.2d:%.2d:%.2d' % (self.hour, self.minute, self.second)

# The reason for this convention is an IMPLICIT METAPHOR: 

# The syntax for a function call, "print_time(start)", suggests that the
# function is the active agent. It says something like: “Hey print_time! Here’s
# an object for you to print.”

# In object-oriented programming, the objects are the active agents. A method
# invocation like start.print_time() says: “Hey start! Please print yourself.”

# This change in perspective might be more polite, but it is not obvious that it
# is useful. 

# In the examples we have seen so far, it may not be. But sometimes shifting
# responsibility from the functions onto the objects makes it possible to write
# more versatile functions, and makes it easier to maintain and reuse code.


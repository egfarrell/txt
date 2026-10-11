software carpentry regex

# key info
    * \* is a POSTFIX operator
    * (.\*) means zero or more characters
    * (.+) means ONE or more characters
    * (.?) means zero or ONE characters (ie an optional character iiee same as (.|))
    * (.{4}) is postfix operator meaning match 4 times
    * (.{m,n}) match a character from M to N times
    * [aeiou] create a "SET". This will match exactly one vowel
    * [0-9] matches exactly one digit
    * [^}]    negate. Set Matches every possible character EXCEPT the curly brace "}"
    * \s  match the set of whitespace characters. has to be escaped with an extra "\". ie "\\s"

# Some character sets are so common they get an abbreviation
    \d  digits
    \s  white space (lower case s!!!!!)
    \w  word characters (same as [A-Z0-9a-z\_])

# Example of bad design
    \S  _non_ space characters (upper case S!!!!!)
    \W  _non_ word space characters - upper case aswell!!!!
 
# basics
    re.search('pattern', "data we are scanning")
    Dont get it reversed!

# how does it actually work?
    * Uses finite state machines
    * They have no memory of how that got into that state.
    * All decision making is local to that state.

Sooo you cant do bracket balancing "(((....)))"
- because requires memory or at least a counter

# Why use regex if its limited?
    - theyre fast,
    - after precalculation only has to look at each
      character once
    - more readable than procedural equivalent

# re.search returns a *match* object
    re.search returns 'none' of no match found

# check for any three years using a group
    match = re.search('(2009|2010|2011)', "some text")

# check for any DATES using "dot" and split into 3 sub-groups
    match = re.search('(....)-(..)-(..)', "some text")

# Groups are index from 1 to N not alike array indexes.
    print match.group(k)    -   returns match group k
    print match.group(0)    -   returns all text

# OR      
    use |         -   "06|07"

# GROUPS  
    use ()    -   '(2009|2010|2011)'

re.findall  - HANDY!!!
re.split  - HANDY!!!
re.compile  - HANDY!!! Speed. 
(SPLIT = re.compile('\\s*, \\s*'))



# Non character matching
    _^_   match at the start of string 
            _match_
            re.search('^mask', "mask size") 
            _no match_
            re.search('^mask', "unmask") 

    _$_   match at the end of string 
           _match!_
            re.search('$temp', "high-temp") 
            _no match_
            re.search('$temp', "temperature") 

# \b match the boundary between a word and non word
    _match!_
    re.search('\\bage\\b', "the age of ") 
    _no match_
    re.search('\\bage\\b', "phage") 


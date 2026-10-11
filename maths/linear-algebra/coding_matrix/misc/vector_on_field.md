
I wonder why we have to use field to define vectors? Can we
just use __set__ instead. Why we obligated to define vectors
on fields ?

### answer 1
    Some properties of a Vector depends on the fact that the
    __field__ is a field. 

    For example, if 
        u = (u1,u2,...,un),
        v = (v1,v2,...,vn)
    then 
        u+v = (u1+v1, u2+v2, ... ,un+vn). 

    If the values are not _commutative_ (can't form a field), 
    then `u+v = v+u`, a property of vector, wouldn't be true.


### answer 2
    This is related to the definition of a _vector space_ and
    properties in linear algebra. If F is a Field and V is
    a vector space over F. We have

    for every a,b in F and every v in V 
        `(a+b)v = av+bv`

    for every a,b in F and every v in V 
        `(ab)v  = a(bv) `

    So It is necessary to have two operations for the set that
    a vector space is over it. Moreover the field creates some
    properties that are studied in linear algebra.

    However sometimes we define vector space over the sets that
    have two operations but have some properties less than
    a field.In that cases we call it a  "_module_" instead of
    "vector space".

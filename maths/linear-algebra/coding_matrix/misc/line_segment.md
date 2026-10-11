
talking about convex and affine combinations

### key concepts:
    * linear hull (is just the __span__ of two vectors!)
    * affine hull
    * convex hull
    * conic  hull

### random comment
    In general, 
    * convex combinations gives a _closed_ shape,
    * affine combinations gives a __space__.  

### hulls
    The hull of a boat rests in the water; it contains the
    occupants and cargo. Hulls are a fundamental concept in
    convex geometry.  

    The _convex hull_ of two points, for example, comprises
    those points and the line segment between them.  

    Their _affine hull_ is the unique line containing them,

    while the _conic hull_ is the union of all rays,
    emanating from the origin, intersecting the convex hull
    of those two points.

### linear, affine and convex combinations
    Suppose you have two different points 
    1. P1=(x1, y1)
    2. P2=(x2, y2)

    Then you can make linear combinations _α_P1 +_β_P2 of
    those points. If you _restrict_ the choices for α and
    β to those values for which `α+β=1`, then you're making
    affine combinations. Together they make the line that
    goes through P1 and P2

    And if you restrict α, β to be _non-negative_ and sum to
    1, then you're making a convex combination which is the
    line-segment between P1 and P2


# Coding the Matrix - lecture question

### Why symmetric?
    In an attempt to rationalize it, I notice that at 7:52,
    he's demonstrating that the function:

    { α[3,2] + _[0.5,1]_ : α∈R, 0 ≤ α ≤ 1}

    And he says it's __not symmetric__ with respect to the
    endpoints.  

    My guess is that he means, it's not easy to discover the
    endpoints of the line segment: 

    * letting α=0 leads to your _origin_ point (0.5, 1), 
    * but you can't discern the end point is necessarily [3.5,3], 
      without evaluating the upper constraint of α. (i.e. α=1)


### My first thought:
    Switch around to make the _anchor_ (origin) point clear!
    { _[0.5,1]_ + α[3,2]  : α∈R, 0 ≤ α ≤ 1}


### Comment continues:
    However, his final formulation:

    {α[3.5,3] + β[0.5,1] : α,β∈R, α,β≥0, α+β=1}

    It's easy to see the _two end points_ by substituting
    0 for α gives --> (0.5, 1), and 
    0 for β gives --> (3.5, 3).  

    I'm not clear why this is called _symmetric_ (perhaps
    because as α slides up, so β slides down, and they
    "balance" each other out, hence symmetry?)


### main answer:
    My understanding is that the expression α[3.5,3]+β[0.5,1] is
    symmetric in the sense that it does __not matter which end
    point you choose__ to multiply by α and which you choose to
    multiply by β. The end points have equal status. In the
    initial expression, one end point was expressed explicitly
    and the other as α[3,2]+[0.5,1] for `α=1`.

    The symmetric version is much easier to remember that the
    initial version. Compare the two versions for the convex
    hull of three points:
    _symmetric_:
        αP1 + βP2 + γP3 for α+β+γ=1 
    _non symmetric:_
        P1 + β(P2−P1) + γ(P3−P1) for (0 < β+γ ≤ 1)


### russian comment:
    If a=1/2, then 1/2∗[3.5,3] + 1/2∗[0.5,1] .
    So, should we now add 
    1/2∗[0.5,1] to [0,0] and add
    1/2∗[0.5,1] to 1/2∗[3.5,3] ?
    If so, we get [0.25,0.5] and [2,2]. ?? (check this)

### answer:
    You get only one point for each choice 
    of α and β such that α+β=1.

    The line through 
    P1=[3.5,3] and 
    P2=[0.5,1] is drawn by
    letting α and β take all possible values such that α+β=1 (in
    practice you choose α and let β=1−α). The point αP1+βP2 is
    on the line P1P2. If you choose α between 0 and 1, you will
    get a point on the line segment P1P2.


other thread: (staff reply)
    Suppose you have two distinct points u and v.

    If you want u, you just say u=1u+0v.
    If you want v, you just say v=0u+1v.
    If you want the midpoint between u and v, you say (u+v)/2=0.5u+0.5v.
    If you want a point which is between the midpoint and u, you say (u+(0.5u+0.5v))/2=0.75u+0.25v.

    Under the constraint that coefficients are not more than 1,
    as you weight the coefficient of u closer and closer to 1,
    the point will move toward u. On the other hand, as you
    weight the coefficient of v closer and closer to 1, the
    point will move toward v. This is the convex combination,
    and it forms a segment line between u and v.

    However, if you allow the coefficient of u to be more than
    1, the point will go beyond u. As the coefficient is larger
    and larger, the point moves further as well. This is affine
    combination, and it forms a line passing through u and v.

    Suppose you have three non-colinear points u,v,w.

    With coefficient of u being 1, you will get point u.
    With coefficient of v being 1, you will get point v.
    With coefficient of w being 1, you will get point w.
    With coefficient of u and v being 0.5, you get midpoint between u & v.
    ...
    With coefficient of u,v,w being 1/3, you get midpoint between u,v,w (a.k.a. centroid).

    As you adjust coefficients under the constraint that they
    are all between 0 and 1, you will get all possible points in
    a triangle with vertices being u,v,w. However, if the
    coefficients can be more than 1, point will not be
    restricted to be in the triangle, but can go outside as
    well. This therefore forms a plane with u,v,w being on it.

    With higher dimensions, you can use the same way to reason
    about them. In general, convex combination gives a closed
    shape, while affine combination gives a space. 


### random pdf
    Linear, affine, and convex sets. A set A  X is called:

    * _linear_ 
    if A is a vector subpace of X (i.e., A is nonempty, and
    x + y 2 A whenever x; y 2 A; ;  2 R);

    * _affine_ 
    if the line passing through any two points of
    A is entirely contained in A (i.e., (1 􀀀 t)x + ty
    2 A whenever x; y 2 A; t 2 R); 

    * _convex_ 
    if any segment with endpoints in A is contained in
    A (i.e., (1􀀀t)x+ ty 2 A whenever x; y 2 A; t 2 [0; 1]).

    __Obviously__, (!!!)
    * each linear set is affine, and 
    * each affine set is convex. 

    Moreover, any translation of an affine set is affine. 
    Any translation of an convex set is convex. 



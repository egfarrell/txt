# Preliminaries

1. Newtons's laws and their conceptual framework
2. Invariance properties of Newtonian Dynamics
3. Why it took so long to find the laws of motion
4. Why the first breakthrough occurred in astronomy
5. General comments on the absolute/relative debate
6. Was dynamics discovered or invented?




### 1. Newton's laws and their conceptual framework

We begin by recalling Newton's laws and his concepts. For
a modern reader, the most illuminating approach to dynamics is to
start with a clear understanding of what we know and trace the
gradual clarification and emergence of the key concepts from
their earliest beginnings.

Even the reader who is familiar with Newtonian dynamics may find
this survey valuable, since it stresses the discovery of the
concepts as well as their relevance to the absolute / relative
question. Note: all quotations are from Ref.[^1]

Of all Newtonian concepts, _absolute space and time_ are the most
important, as they provide the framework for everything else.
Newton imagined absolute space as an infinite block of
translucent glass. However this is only a conceptual block;
objects move through it perfectly freely. The purpose of absolute
space is to provide a _definite frame_ of reference:

> each and every body, however it may move, is always at some
> quite definite point.

All the relations of Euclidean geometry hold in the block; above
all, any two points are joined by a _unique_ straight line.
Conceptually (at least) its meaningful to say a body follows
a definite path in absolute space.

Newton conceived absolute time as, 'from its own nature', flowing
'equably without relation to anything external'. One could
imagine God holding a watch that keeps perfect time as He
observes all bodies travelling through absolute space. To God at
least its meaningful to say a particular body is moving at
a particular time at a certain speed in a certain direction.

Newton specifically introduced absolute space and time to
overcome the problem of _kinematic relativity_ (see Introduction)
and to have an unambiguous concept of the MOTION of any body.
After space and time, motion is the most fundamental concept.

Its implicit in his scheme that space, time, and motion are
_conceptually prior_ to the actual laws of motion. God could have
chosen different laws but he had no alternative to placing and
moving bodies in space and time.

For now we'll ignore the problem of kinematic relativity and
assume absolute space and time are somehow accessible to human
senses - so all Newtonian concepts are well defined.
A significant feature of Newtonian dynamics is that the motion of
bodies has far reaching _directional_ aspects. The _speed_ of
a body in absolute space has only restricted dynamical
significance. A more significant concept is _velocity_, ie, speed
in a definite direction. This couldnt possibly be deduced from
the mere concepts of space, time and motion and was a realization
that came _very late_ in the discovery of dynamics.

The most natural language for the directional aspects of physical
motions is _vectors_, which are characterized by a magnitude and
direction. Although vector theory was not developed until the
19th century several Newtonian ideas are clearer when expressed
with them.

In Newtonian dynamics, the most important characteristic of
motion is its _DUAL NATURE_. At any instant, a body is responding
simultaneously to two distinct influences:

1. _absolute space and time_ on one hand
2. the _remaining bodies_ in the universe on the other.

The influences are characterized by their effect on the
instantaneous velocity of the body moving through absolute space
at the time considered.

According to Newton's First Law (Lex Prima), the consequence of
the _first influence_ (exerted by space and time) is:

- if the second influence were not present... (ie if external
  bodies caused no disturbance)

    - then the instantaneous velocity of a body at any particular
      moment would persist forever.

Thus a body set in motion initially in a given direction with
a given speed would continue forever in that given direction at
that _same given speed_ were it not for the influence of other
bodies.

The First Law states specifically:

    > Every body continues in its state of rest, or of uniform
    > morion in a right line, unless it is compelled to change
    > that state by forces impressed upon it

To define the second influence, we must first introduce other
fundamental concepts, above all the _mass_ of a body. Each body
is characterized by a _positive number_, the mass, which Newton
calls the quantity of matter a body possesses.

At this stage we won't examine this (apparently) simple concept
that actually requires a sophisticated definition. In Newtonian
mechanics, mass is neither created nor destroyed. A body's mass
can only change if new mass is added to it or if some mass is
removed.

Using the mass concept we form the most important dynamical
concept in Newtonian dynamics:

    that of a body's _momentum_ (quantity of motion)

It is defined as the product of a body's mass and velocity.
Because velocity is a vector, while mass is simply a scalar,
momentum is also a vector. If `m` is the mass of small body we
regard as a mass point, and `v` its instantaneous velocity, then
the momentum `M` of the body is:

        `M = m ∙ v`       (1.1)

By Newton's First Law, `v`, and therefore `M` too, remains
constant in time unless the body under consideration is acted
upon by some other body.

Newton's 2nd Law (Lex Secunda) defines how the momentum is
changed by other bodies. This can happen in 2 ways:

1. through _direct contact_ in a collision or
2. an 'influence' exerted through space by a _distant_ body.

In both cases, Newton says the momentum `M` of the body is
changed by the application of a _force_.

1. If direct contact: abrupt change in `M` by finite amount.
2. If distant influence: change in `M` is continuous.

Its implicit that there are definite rules of nature which
determine the forces acting on any given body, for any definite
configuration and state of the remaining bodies in the universe.
(?) For the moment, we'll consider the simplest applications of
Newton's 2nd Law.

Force is a vector - it acts in a definite direction and has
a definite strength or magnitude. Consider the force in
a collision. In modern terminology it produces an _impulse_
denoted by `F`. (impulse will turn out to be the actual change in
momentum `δM`, not the _RATE_ of change of momentum!) As a result
of a collision with another body, a body is subjected to an
instantaneous impulse `F`. Newton's 2nd Law tells us the
consequence.

-------------------------------------------------------------- 
My summary:

1. VELOCITIES:

    `ṽ' =  ṽ + δṽ`      <--- no mass

2. MOMENTA:

    `M  -> M + δM`      <--- includes mass


where `F` is:

    `F  = (δṽ)m`      <--- impulse (for collisions)
    `F  = δM`         <--- 

and later:

    `F = f(δt)`       <--- continuous version where `f=dM/dt`
                           (instantaneous impulse)

--------------------------------------------------------------


The consequence can be thought of in two ways:

1. the body retains the momentum `M` it had before the collision
   and consequently has the same tendency it had beforehand to
   continue in the original direction of the velocity `ṽ` with
   unchanged speed `v`.

2. however, _superimposed_ on the body is a 2nd tendency. The
   body has been subjected to the given impulse `F`. This impulse
   produces a tendency for the body to move in the direction of
   `F` at speed equal to `F/m`. The resultant motion is obtained
   by the law of vector addition.

First we'll express the result in terms of _velocities_. The
first tendency - to continue with unchanged momentum `M`, causes
the body to have a velocity component along `M` of magnitude `M/m
= v`. As a result of the collision, there is added to this
a second tendency: to move with speed `F/m` in the direction of
`F`. This additional velocity component `F/m` must be added to
`M/m` using the vector parallelogram rule to find the resultant
velocity. Let `v'` be this new, postcollision velocity and let
`F/m = δv`. Then:

        ṽ' =  ṽ + δṽ     (1.2)

However, Newton doesnt express his 2nd Law in terms of velocities
but in terms of the momentum and force. This is because in any
situation the force has a definite direction and magnitude but
_the change in the velocity it produces depends on the mass of
the body_ to which it is applied: the larger the mass, the
smaller the change in the velocity.

To obtain a _universal form_ for the 2nd Law, (a form that
doesn't depend on the particular mass of the body), Newton
expressed the law in terms of forces and momenta. As a result of
the collision the original momentum `M` is changed by:

    δM = F            (1.3)   <---- 2nd law in impulse form

so that:

    M  -> M + δM M  -> M + F


In Newton's words:

    > "The change of motion [in Newton's terminology _motion
    > means momentum_] is proportional to the motive force
    > impressed [motive force means here `F`, i.e., the magnitude
    > of F]; and is made in the direction of the right [i.e.
    > straight] line in which the force is impressed."

The law _(1.2)_ is shown in Fig. 1.1. (vector addition of ṽ and
δv) It might seem that _(1.2)_ is just _pure mathematics_ or at
least kinematics, ie, a consequence of the mere concept of motion
as a vectorial quantity. However, this is not the case. Two
points are important:

1. as a result of the collision, the body's tendency to move in
   the original direction _is not lost_. This is very important;
   the 'slate is not wiped clean' by the collision. Indeed, the
   very fact of persistence (with or without collision) is
   _highly significant_.

2. As we have seen, in any situation the force (or impulse for
   collisions) is given but its effect (an observable change in
   velocity) _depends on the mass_ of the body _F_ is applied to.

Both results are pre-eminently _physical_; neither follow from
the bare concepts of space, time, and motion.

Newton initially discovered his 2nd Law for _collisions_. The
more familiar expression in terms of accelerations is _used_ in
the Principia but is not stated as a primary law. That
development was due to Euler.[^2] Its discovery by Newton for
gravitational forces was the final insight that completed the
discovery of dynamics. According to the law of universal
gravitation, bodies attract each other with a definite force.
Since this force produces _continuous changes_ in the momentum
(and hence velocity) of the body to which it is applied, it is
truly a force in the modern usage of the word; we'll denote such
a force by `f`. For such a force Newton's 2nd Law is expressed:

            dM/dt = f   (1.4) <--- 2nd law continuous form

Since `M = mṽ`, this can be written as

            d/dt(mṽ) = f

Finally, since the mass remains constant, `m = const` (unless
mass is added to or removed from the body), and `dṽ/dt` is the
acceleration, we can also write:

            ma = f                (1.5)

which is the familiar form. It can be shown this form is
equivalent to (1.3) `(δM = F)`.

Let the force `f` act for an infinitesimal amount of time `δt`.
From (1.5) the corresponding acceleration will be `a = f/m`. The
resulting change in velocity will be `δv = aδt`. Thus, the result
of the force is to produce a velocity increment `δv` and change
the initial velocity `v` to `v + δv` [this is actually (1.2)]. 

  The effect of the force `f` acting for time `δt` is, in the
  limit when `δt -> 0`, equivalent to an instantaneous impulse 
  ```
  F  =  (f)δt 
     =  (dM/dt)δt 
     =  δM
  ```

As a simple application of Newton's first two laws, we prove the
_area law_. This demonstrates the power of Newtons laws and
clarifies the significance of many astronomical discoveries from
the pre-telescope period.

<!-- Fig. 1.2. -->

Consider a single particle moving _inertially_ along a straight
line `ABC`, where `AB = BC`. Thus, it takes equal times to
traverse `AB` and `BC`. Also consider any point `P` that does not
lie on `ABC` (Fig. 1.2). Drop the perpendicular `PD` from `P`
onto `ABC`. Then since triangles `∆PAB` and `∆PBC` have:

    - the same height _PD_
    - and equal bases _AB_ and _BC_
    - and equal areas as a result.

Thus, as the particle moves along `ABC` the radius vector from
`P` to the instantaneous position of the particle sweeps out
equal areas in the plane `PABC` in equal intervals of time. _For
purely inertial motion, this is true for any point P not on ABC._
Let the unit of time correspond to the time taken to traverse AB
(or BC). Then `AB` represents the magnitude of the velocity of
the particle.

Now suppose when the particle reaches `B` it receives an impulse
exactly along the direction to `P`. Let the impulse have
a strength such that, in the absence of any inertial motion along
`ABC`, the impulse would give the particle a velocity to take it
to X (Fig. 1.3) in a unit of time. Now find the _resultant_
motion due to the combination of:

1. the original inertial component
2. and the impulse.


<!-- Fig. 1.3. -->

To do this, we create `C X' ` parallel to `BX` and of equal
length. Now `B -> X -> X' -> C` is a parallelogram, and it
follows from parallelogram vector addition that the _actual path_
of the particle after the impulse will be `B X' `, and it will
arrive at `X'` after the second unit of time. Now triangles
`∆PBX'` and `∆PBC` have the same base `PB` while their vertices
`X'` and `C` are on a line parallel to this common base.
Therefore the areas of these two triangles are equal. But:

* _PAB_ and _PBC_ have equal areas,
* therefore ` PAB ` and ` PBX' ` also have equal areas.

This shows that the equal area result is still true with respect
to P for an impulse directed exactly along the direction of P (of
course it may be either towards or away from P).

Thus a particle which moves inertially except for a series of
instantaneous impulses directed exactly along the line to a fixed
point `P` at the corresponding instants of time will always sweep
out equal areas with respect to P. Equally important is the fact
that the _motion remains forever in the plane_ defined by `P` and
the direction of the _initial_ velocity.

To pass from the case of _discrete_ impulses to a force
generating an acceleration continuously, Newton supposed the
impulses occur much more frequently and that their magnitude is
simultaneously decreased, so that the resulting _polygonal
figure_ described in space approaches ever closer to
a _continuous curve_. For the curve obtained in the limit, Newton
argued that the equal area result will still hold, i.e., that the
radius vector from `P` to the moving particle will describe equal
areas in equal times in the plane defined by the radius vector
and the initial velocity.

This will always be true provided the instantaneous force always
_acts exactly along the line towards the centre P_, which must be
_fixed_. As we are just demonstrating Newton's use of his
physical concepts, we shall not discuss the rigour of his proof;
the result is certainly correct.

As we will see in Chapter 10 (Newton I: the discovery of
dynamics), Newtons discovery of this result around 1680, marks
the point where the full structure of Newtonian dynamics was
found. It is a special case of the _conservation of angular
momentum_.

    The proof makes it clear that the area law arises almost
    entirely from the First Law.

Although the instantaneous velocity suffers innumerable changes,
the perpetual UNIFORMITY of the inertial motion is reflected in
the equality of the area swept out, while the RECTILINEARITY of
pure inertial motion is reflected in the fact that the motion
remains perpetually in one plane. (Of course, it is essential
that the acceleration be always in the line towards P - in
Newton's words, it must be produced by a _centripetal force_.)

Of equal importance for both astronomy and dynamics is the the
conservation of _angular momentum for the Earth_. Except for
small perturbations, the earth rotates with constant angular
velocity and its axis remains pointing along a fixed direction in
space (ignoring the precession of the earth's axis).

This result almost exactly _parallels the area law_, the constant
angular velocity being a special case of the equality of the area
swept out (it is obvious that for motion in a circle equality of
the area swept out is converted into equality of the angular
velocity), while the fixed direction of the polar axis
corresponds to the fixity of the plane of the motion in the area
law.

Newtons 3rd Law (Lex Tertia) states that:

    > To every action there is always opposed an equal reaction:
    > or, the mutual actions of two bodies upon each other are
    > always equal, and directed to contrary parts.

This law has a precise meaning only if we know what Newton means
by 'action' and 'reaction'. In fact, _'action' means change of
momentum_. 

Thus, if there is an interaction between two bodies of masses
`m1` and `m2` and no other bodies involved, the meaning of the
3rd Law is as follows.

Let their initial velocities be `ṽ1` and `ṽ2`, so their momenta
are:

    M1 = m1 * ṽ1 
    M2 = m2 * ṽ2

Now suppose body 2 causes an infinitesimal change `δM1` in body
1 by exerting a force on it, so that

    M1 -> M1 + δM1

Then it follows:

1. that there will necessarily be a change `δM2` in the momentum
   of body 2.

2. this accompanying change in the momentum of body 2 will always
   be exactly equal in magnitude to `δM1` but in the _opposite
   direction_.

That is:

    δM2 = - δM1

Since the _changes in momentum are proportional to the forces_
that produce them, Newton's 3rd Law can also be stated in the
form that the _forces_ which bodies act on each other are equal
and opposite.

The generalization of the 3rd Law to three or more bodies states
that the _vector sum_ of all the individual changes `δMi`,
induced in the momentum of each body 'i', _i = 1, 2, ..., n_, is
exactly zero:

     ```
     ∑ δMi = 0
     ```

Newton's laws say nothing about the actual forces that occur in
Nature. These depend on the configurations and specific nature of
the bodies involved. It Newton's supreme achievement to separate
out his 3 laws as valid no matter the nature of the forces
acting. The fruitfulness of this scheme was demonstrated by his
discovery of universal gravitation, which provided an explicit
rule for calculating the force of gravity in any situation.

For the simple case when two bodies are involved, Newton's law of
gravity states that if two bodies of mass `m1` and `m2` are
separated by a distance `r` then each exerts a force on the other
proportional to the product of the two masses, inversely
proportional to the square of the distance between them, and acts
along the line joining them. The force acting on body 1 is:

    force_1 = é * G * m1 * m2 / r^2       (1.7)[#eq-7]

where `G` is the constant of universal gravitation, and `é` is
the unit vector that points from body 1 to body 2.

We should note that gravitation is _unique_ among Natures forces
because the masses `m1` and `m2` occur in (1.7) in the expression
for the force itself. This has a remarkable consequence. By the
2nd law, the acceleration of body 1 due to the force (1.7) is

    a1 = force_1 / m1

from which it follows that:

    a1 = é * G * m2 / r^2

Thus, the acceleration of body 1 is independent of its own mass!
All bodies fall in a given gravitational field with the exact
same acceleration. This remarkable result is solely due to the
_double appearance of the mass_: in 'Lex Secunda' and also in the
rule for determining the gravitational force.

Now consider some basic features of Newtons laws. The first is
the universality and generality of the world that underlies them.
Throughout the entire universe matter is assumed to have
completely uniform properties. Above all, a body is characterized
by having mass. The stuff of the universe is _all the same_, at
least regarding dynamics. In its essential properties mass is the
same everywhere and the laws it obeys are the same throughout the
universe. Thus, a uniform view of the world is a most important
part of dynamics.

Related to this is the important part played by 'physical
quantities', above all the _masses_ of bodies. Strictly speaking,
because the masses also occur in the law of gravitational force,
Eq. (1.7), they are the only physical quantities we have so far
met. However, in the case of electrostatic attraction the masses
`m1` and `m2` in (1.7) are replaced by the electric charges `e1`
and `e2` of the two bodies and the electrostatic force is
proportional to `e^/r2` (Coulomb's Law). The electric charge is
a quantity quite _independent of the mass_ and is a second
physical quantity.

To highlight the exceptional nature of the gravitational law
(1.7), many authors distinguish between 2 roles played by mass.
The mass `m` that appears in the universally valid 2nd Law in the
form `ma = f` is called the _inertial mass_, while mass occurring
in the gravitational force law (1.7) is called the _gravitational
charge_, or active gravitational mass.

Interesting: Regarding the fundamental part played by _physical
quantities_ in Newtonian dynamics, its significant that they play
no role in Newonts 1st Law. In this respect the 1st law is
sharply distinguished from the other two laws.

The distinguished role of the 1st Law reiterates an important
point: the _dual nature_ of factors governing a body's motion:

1. Through _Lex Prima_, absolute space and time keep a body
   moving in a straight line at a uniform speed and would do so
   for ever only for the intervention of other bodies in the
   universe.

2. Through _Lex Secunda_ the bodies mutually deflect each other
   from one inertial motion _to another_. We note the law of
   inertia itself has two quite distinct parts:

   - the rectilinearity of the motion (absolute space)
   - and the uniformity of the motion (absolute time)

The next feature is that the laws of motion _dont completely
determine motions._ (!)

A typical problem in dynamics is: At a given time, a body is set
in motion from a given point, with a given speed in a certain
direction: find its subsequent motion.

If the body is a _test body_, (ie its mass and charge so small it
exerts a negligible influence on all other bodies) and if the
initial positions and subsequent motions of the other bodies are
known, then Newton's laws, along with the laws determining the
forces, are enough to _uniquely_ determine the subsequent motion
of the test body.

This means the motion of the test body is determined only up to
the specification of _6 quantities_:

* its 3 _coordinates_ at the initial time and

* the 3 components of its _initial velocity_ along whatever
  coordinate axes happen to be chosen in absolute space.

The need to specify both

* initial positions
* and initial velocities

is a characteristic feature of Newtonian dynamics. It reflects
the fact that the fundamental law of motion (1.5), is _second
order in time_ : it contains 2nd derivatives of the position
coordinates with respect to the time. This is the reason why both
the initial coordinates and also the initial first derivatives of
coordinates with respect to time (ie velocity) must be specified
in the initial condition.

    - 0   order:   position coordinates
    - 1st order:   1st derivative of position (velocity)
    - 2nd order:   2nd derivative of position (acceleration)

The next feature of Newtonian dynamics (invariance) is so
important it needs a separate section.



###  2. Invariance properties of Newtonian dynamics

Newton's laws of motion contain no reference to place or time.
They are assumed to be _universally_ true - exactly the same in
all parts of absolute space and at all instants of absolute time.
Its implicit that the rules governing the strength of forces in
any situation have the same universality. Because of this assumed
universality of the laws and their vectorial nature, Newton's
laws possess important properties, called INVARIANCES.

For example, suppose we choose a definite fixed point `O` in
absolute space as the origin of Cartesian axes, which we align
along definite directions. (Assume we can 'see' absolute space)
Now consider a system of noninteracting bodies, which therefore
move in straight lines in absolute space. They'll obviously
follow straight lines in the chosen Cartesian system.

Its clear that if we either:

* shift the entire coordinate system so that its origin is moved
  to a new point `O'` without any change in the direction of the
  coordinate axes

* or we keep the origin fixed and change (once and for all) the
  orientation of the axes (keeping them mutually perpendicular),

the bodies will _still follow straight lines_ in the new
coordinate systems even though, relative to the old coordinate
axes, they will be different straight lines.

This is what the form of the laws of nature remainaing invariant
means. The specific description is obviously changed but the key
property of rectilinearity of undisturbed motion is _not
affected_. The same invariance holds for Newton's Second and
Third Laws (this is mainly because of their _vectorial nature_
and the fact that the rules of vector addition are invariant with
respect to both transformations above)

Newton's laws are therefore invariant regarding:

* translations (shifting of the origin) and
* rotations (a once and for all rotation of the coordinate axes
  into new orientations).

Note if we displace the origin or rotate the axes in some
arbitrary manner which _depends on the time_, the motion of
inertially moving bodies will be neither rectilinear nor uniform
in the new system, so Newton's laws are not invariant under such
transformations.

    However there is one further transformation which leaves the
    1st Law invariant. This is the famous _Galileo
    transformation_ (as we shall see in Chapter 7, what is called
    the Galileo transformation is not quite the same as the
    transformation Galileo considered).

First we consider a reference frame fixed in absolute space,
which we call the _absolute frame_. We also consider a 2nd frame
whose axes are always parallel to the 1st frame but which move
relative to it with _uniform speed_ in a _fixed_ direction in
absolute space. We call this 2nd frame the _moving frame_.

Therefore bodies that move inertially in the absolute frame also
appear to move uniformly in straight lines in the moving frame.
Therefore for bodies moving purely inertially we come to
a surprising conclusion. As far as their motion is concerned, we
are _unable to say_ if we are observing that motion

* in a reference frame at rest relative to absolute space
* or moving uniformly in a straight line through absolute space.

Now consider the situation with regard to the 2nd and 3rd Laws.
Here we must distinguish two different things;

* a matter of pure mathematics
* and a matter of physics

The 2nd and 3rd Laws deal with changes in motions, i.e.,
accelerations. Suppose we follow the motion of a body in the
'absolute frame' and that it initially moves uniformly with
velocity `v`, and then is subject to a change in velocity `δv`,
after which it moves uniformly again.

Thus, in the absolute frame the velocity changes from `v` to `v
+ δv`. Now in the 'moving frame' the velocity before the change
is `v + V` (where `-V` is the velocity of the moving frame in
absolute space) while after the change it is

        v + δv + V

Thus, in the moving frame the change is `δv`, just _the same_ as
the fixed frame. This is a purely mathematical result and shows
that all changes in inertial motions, and thus accelerations, are
identical in both the absolute and moving frames. Thus, if we
observe a body of mass `m` and wish to deduce the force acting on
it from the change in its momentum `mṽ`, we obtain identical
answers in both frames.

Now consider the physical side of this question and begin with
Newton's law of gravity. The gravitational force law (1.7) has
a remarkable property; namely the force is completely determined
by the _relative configuration_ of the two interacting bodies:
the force acts along the line that joins the two bodies and its
strength is inversely proportional to the distance between them.
Therefore this law for gravitational force is completely
_independent_ of the position and velocities of bodies in
absolute space.

Thus the (gravitational) force only depends on the relative
configuration of the bodies; it is therefore the same in both the
absolute and moving frame. But we have already seen by pure
mathematics, the accelerations are the same in both frames. Thus,
both sides of newton's second law, `ma = f`, are the same in both
cases, so the 2nd law is also invariant. it is easy to see that
the 3rd law is too.

It is important to note the '_passive_' and '_active_' aspects of
this transformation. Let us still assume absolute space is real.
Consider a collection of gravitationally interacting bodies whose
centre of mass is _at rest_ in absolute space and whose motion we
follow from an initial time `t = 0`. We call this _system A_.

We transition now to a moving frame and look at the interactions
in system A from a frame moving with velocity `-V` relative to
the absolute frame. This is the _passive_ aspect.

But now imagine in the absolute frame an identical set of bodies
with the _same initial relative positions and relative
velocities_ but with an overall velocity `V` added to all
velocities. In the absolute frame this is physically a different
system, which we call system _B_. Yet, because the law of
gravitational interaction only depends on the relative
configuration, the accelerations of the bodies in system B are
identical to system A. But their initial velocities are the same
as those in system A _when viewed from the moving frame_. Thus:

* the motion of system B when observed in the absolute frame

will be identical to:

* the motion of system A when observed from the moving frame

Thus for gravitational forces, we are unable to say if system
A or B is moving in absolute space if we cannot actually see
absolute space. Such a system of bodies, which we assume is free
of all disturbance from other bodies, is called a _closed
dynamical system_.

Now Newton made an interesting implicit assumption that the
property which holds for gravitational forces, i.e., they do not
depend on overall motion through absolute space, is universally
true of _all forces_ in Nature. He assumed[^3] (without proof)
that the forces which act between bodies depend:

* solely on the relative configuration of the bodies,
* OR else on their relative configuration and relative velocities
* but in no case on their position or overall velocity in
  absolute space.

Property:

    In particular, he assumed that a uniform rectilinear motion
    common to two bodies would have no effect at all on the force
    that acts between them.

_This property is not a consequence of his laws of motion_. For
example, the force that acts between two bodies could have
depended on the velocity of their centre of mass through absolute
space without violating any of the laws of motion.

If this property of forces is assumed (which is in fact confirmed
by experiment), then the result we showed for purely inertial
motion is true for any motion governed by Newton's laws and
forces which have the above property.

This result was stated by Newton in his famous Corollary V to the
laws of motion:

> The motions of bodies included in a given space are the same
> among themselves, whether that space is at rest, or moves
> uniformly forwards in a right line without any circular
> motion.'

This property is now called the _Galilean invariance_ (or
Galilean relativity) of Newtonian dynamics. It clearly puts
a question mark over the concept of absolute space. If no
experiment can reveal our motion through it, what use is the
concept?

But Newton did have good grounds for his assumptions and they
make sense. For example, by Newtons time the astronomers had
established how the planets orbit the sun relative to the distant
stars. In conjunction with his law of gravitation, this motion
clearly demonstrated the viability of Newtons scheme provided the
distant stars are _nonrotating relative to absolute space_.

That is, it shows that the motion of the planets can be conceived
as the superposition of the gravitational effect of nearby bodies
on a rectilinear motion _relative to the (distant) stars_. Thus
there is powerful constituent to actual motions that is
manifestly _nothing to do with local bodies_.

This shows up in two effects:

1. a body that passes by the sun with a very high velocity tends
to follow a path that approximates more and more to a straight
line (ignoring relativistic effects). (So its ignoring the local
Sun and is being tugged along by something distant!)

2. if the earth's motion were solely governed by its interaction
with the sun and nothing else (neither by absolute space nor
other bodies), it's difficult to see why the earth should not
always _fall straight into the sun_, since it is undoubtedly
attracted by the sun's gravity. (but is this just not from the
rotation of the planetary disk when planet was formed?)

Consider an initial condition in which the distance between the
earth and the sun is not changing. In the frame provided by the
distant stars, such is the case when either the earth is at rest
in that frame or is moving with any velocity at right angles to
the line joining the earth and the sun. But as far as the
earth-sun system is concerned, such a motion is nonexistent
(note: we treat the earth and sun as mass points). Thus, in
a purely relational theory of motion, when we look at things from
the point of view of kinematic relativity, it is completely
inexplicable why the earth falls to the sun in only the _single
case when the transverse velocity is zero_; in all other cases
a completely different motion results. Thus, there is evidently
much more to motion than just the earth-sun relative separation.

Newton said the 'something else' was absolute space, and the
problem of Galilean relativity only slightly diminishes its
worth. This can be put graphically in terms of frames of
reference. Take a given frame of reference and a 2nd frame that
moves in an arbitrary manner with respect to it. Space is
certainly invisible and if it had no influence at all on the
motion of bodies it is hard to see why one frame of reference
should be distinguished with respect to any other. Yet we know:

1. such frames exist (all of astronomy proves their existence)

2. If a dynamical role for space didn't exist, there would be
huge freedom in the allowed frames of reference.  Yet their
choice is amazingly circumscribed. Only the family of nonrotating
frames in uniform rectilinear motion seem to be allowed.
Moreover, all bodies in the universe respect these same set of
reference frames which allow the _remarkable decomposition_ into
inertial motion and locally determined force-induced changes in
inertial motion.

(This last statement will require modification when we come to GR
but this does not affect the basic point made here.)

Newton was wrong to imply that there is a uniquely determined
frame of reference. There is not one such frame of reference _but
rather a family of them_. But from the point of view of kinematic
relativity, the family is inexplicably restricted.

We began by asking what use is the concept of absolute space if
our motion through it cannot be detected by experiment? The
answer is that the motion must be _highly special_. A uniform
motion remains undetectable but any acceleration can be detected.
_Why this is so we do not know_. It is this puzzle Mach hoped to
solve by suggesting that the distant stars somehow determine the
allowed frames of reference.

As already noted, it is necessary to distinguish between:

1. Galilean relativity.
2. Kinematic relativity.

_They are not the same thing_. One should guard against the
common assumption that although they are not identical, Galilean
relativity is at least a necessary consequence of kinematic
relativity. It is argued that if motion is entirely relative and
space plays no part in dynamics, any motion through 'space,'
including uniform motion, should obviously be undetectable.

This is clearly true if the system is the entire universe, but
doesn't follow for a small system of bodies (e.g. the solar
system) within a much larger collection of bodies taken to
represent the rest of the universe. In this case we could imagine
that motion relative to the masses of the universe as a whole
would be observable dynamically. However, this is _not_ the case.

Now more terminology: assuming we can 'see' absolute space, we
define an inertial frame of reference (also called _inertial
system_) as either:

* a system at rest in absolute space
* a system moving uniformly through it in a fixed direction

Or we could ignore all references to absolute space and simply
say an inertial frame is one where Newton's laws hold in the form
he stated them. (circular?)

In conclusion, Volumne 1 covers the events needed for the
Newtonian synthesis, the synthesis itself, and jumping forward
a few centuries, the clarification of the true empirical content
of his laws by Neumann, Lange, and Mach.

Of special interest is the operational definition Lange found for
an inertial frame of reference. We shall see that it puts the
relationship between space and motion in a new and _most
intriguing perspective_.


###  3. Why it took so long to find the laws of motion

It took a remarkably long time for humanity to discover dynamics.
But what chances did Nature give us? There almost seems to have
been a conspiracy by nature to hide the laws of dynamics.
Einstein called the Lord 'subtle but not malicious'.[^4]  At
times one could wonder. If we look at the main features of
Newton's laws we see that, even without the self-imposed
obstacles of preconceptions, the odds were against the discovery
of any of them.

The prospects seemed best for the discovery of the 1st Law. The
behaviour of arrows and slings did offer a glimpse of the law but
there were formidable obstacles to its recognition. The most
obvious is air resistance. The forward speed of the thrown object
is diminished. This presented an huge obstacle to
mathematization; the ability to describe nonuniform motions
mathematically developed very slowly. Until there was an
awareness that eternal _continuation_ of motion was possible,
mathematization of this aspect was ruled out. But from what
activities could we have gained such an awareness? Skating
perhaps, but that was hardly available to the ancients. (One
wonders if it is a coincidence that the law of inertia in its
modern form was unveiled by Descartes, who spent time in Holland
at a time in which skating was popular.)

We should not forget that modern rapid transport gives us vastly
more opportunities to observe inertial motion. Particularly
important is the insight (not clearly expressed before 1630) that
motion of a _transported_ body can continue (of its own accord)
when the _transporting_ body ceases to move. When the car we are
travelling in comes to an abrupt halt, our bodies automatically
continue their motion. This gives us an insight into inertial
motion quite different from that gained by watching a javelin
thrower. For in the case of a javelin, the motion has clearly
been initiated by a forceful act and this led, in medieval times,
to the idea that the projectile is kept in motion by the
transference of a 'force' or 'impetus' or even 'spirit' from the
thrower to the projectile.

Although this was an important step towards the law of inertia,
it remained restricted: a particular cause was invoked for
a restricted class of motions - those initiated by a thrower.
There was no real awareness that the factor keeping the javelin
moving is universal and at work in all the other motions we
notice. Equally difficult was the notion that a motion of this
kind must be decomposed into two parts:

1. the horizontal inertial component
2. the vertical motion, decelerated and then accelerated by
gravity.

It was a decisive step by Galileo to divide projectile motions
into two parts. Crucial to this was his perception that without
air resistance the horizontal motion remains perfectly uniform.
This property identified the horizontal component as something
autonomous and simultaneously rendered it open to
mathematization.

The difficulties were even greater for the 2nd Law. How could its
most important feature, the role of acceleration, be discovered?
Consider what is involved in studying motion.

First, we need to see objects and follow the various paths they
take. Here we are well endowed by our senses. Objects are easy to
see and nature provided us with a perfect backcloth to trace
their motions - the fixed stars in the sky and the solid ground
on earth. Thanks to the stability of the ground, the existence of
solid objects, and the excellence of our vision, we acquire
a good grasp of geometrical relationships as children.

Arithmetic belongs to prehistory, but geometry too was developed
early into a precise science. Measurement with rulers is an easy
way of making quantitative observations. There is little doubt
that the early discovery of geometry was due to these favourable
circumstances. Particularly important was that measurements were
accurate enough to highlight the existence of exact
relationships. The recognition of such relationships and their
formal statement as axioms appears to be a key step in the
development of science. It is only absolutely exact relationships
that admit mathematization and can provide a theoretical
framework for the measurement of particular quantities.

Thus, if we ask what creates an exact science, it seems there
must be a _means of observation_ accurate enough to alert us to
simple numerical or geometrical relationships behind empirical
phenomena. In the case of geometry and pitch, excellent means of
measurement are available - rulers for geometry and the human ear
for pitch. Even the unmusical can hear acoustic frequencies with
remarkable accuracy, so the conditions were favourable for
Pythagoras's discoveries in harmony.

In addition to accurate observation there must be suitable
phenomena to observe. They must be reproducible and sufficiently
striking to attract attention. Now for the 1st Law, suitable
phenomena were simply not available. However, for the 2nd Law it
seems nature did provide a reproducible and striking motion that
should have been appropriate: the free fall under gravity of
heavy objects. As Aristotle himself commented:[^5]

> His must surely be a careless mind who does not wonder how it
> is that a small particle of the earth, if raised to a height
> and then set free, should refuse to remain where it was but
> begin to travel.

Why was it so long before this remarkable phenomenon developed
into quantitative science? The answer must be: there was _no
suitable clock_.

The typical speeds of motions on Earths surface are measured in
metres per second but _accelerations_ are typically in
metres-per-second a second. For this reason, the motions
themselves only last a few seconds. Whereas there was an
abundance of means to measure distance (rulers etc.), so that
a metre can easily be measured to an accuracy of one part in
a thousand, Nature failed to provide us with an adequate clock.

It is well known that Galileo made his discoveries using the
pulse-beat - an erratic clock with an accuracy not better than
a second. Thus, the speeds of motions from which basic dynamics
might have been learnt could be measured only to an accuracy of
say 50%. This accuracy was not enough to develop the quantitative
study of motions. Accelerations, which ultimately unlocked the
mystery of motion, were beyond measurement. This sheer inability
to '_see_' accelerations must be the main reason why free fall
and other terrestrial motions failed to attract quantitative
study.

The difficulty of getting knowledge about terrestrial motions due
to the absence of a clock is illustrated by one of the few
ancient passages with a valuable insight into non-uniform motion.
_Strato_, who in 287 BC became the head of Aristotle's Lyceum,
comments[^6] that a falling body:

> completes the last stage of its trajectory in the shortest
> time. . . . For if one observes water pouring down from a roof
> and falling from a considerable height, the flow at the top is
> seen to be continuous, but the water at the bottom falls to the
> ground in discontinuous parts. This would never happen unless
> the water traversed each successive space MORE SWIFTLY

Strato was not the first person to note this phenomenon, but he
is completely reliant upon a secondary effect, from which only
a qualitative judgement can be made. He has succeeded in grasping
only the grossest features of the motion.

It is worth mentioning two further errors about terrestrial
motion that were common before Galileo's time. The most famous is
the mistake by Aristotle that heavier bodies fall faster than
lighter ones. The effect of air resistance provides some excuse,
but this was an extraordinary error, which neither air resistance
nor the absence of a suitable clock can explain. As late as
Galileo's time many people believed that a two pound weight would
fall twice as fast as a one pound weight.

The other error is very peculiar. In Aristotle's _On the Heavens_
there is a curious passage[^7]  which states:

> 'for things whose motion is that of a missile' the greatest
> speed occurs in midflight.

It seems probable there is some transcription error here or
a misunderstanding. Nevertheless, on the basis of this statement,
in the Middle Ages it was widely believed[^8] that a thrown
projectile does not acquire maximum speed immediately after
leaving the thrower's hand but only in the middle of its flight.

According to this notion, taken as an empirical fact, there is
therefore an initial build-up of speed and only then does
deceleration commence. As we shall see in Chapter 4, this was the
belief of one of the great medieval natural philosopher, Nicole
Oresme.

Under such circumstances, presented with a plethora of diverse
motions and a focus inadequately sharp to pick out the salient
details, it is not surprising that ancient and medieval physics
was content with a purely _qualitative_ description. How and when
did the shift to quantitative study occur?

Throughout the history of dynamics, one striking fact is the
occurrence of key events when someone unwittingly decides to look
at long-known phenomena from a different view-point. The initial
shift of emphasis is often quite small, but the end result
appears out of all proportion to the initial step. In fact,
subsequent events show that it is a step into a new world.

An example was Galileo's decision to examine accelerations. Once
he got this idea, he was forced to use a clock to make accurate
measurements. Galileo's originality was not in the clock he
invented but in deciding to use it on terrestrial motions. It
says much about the separate ways astronomy and terrestrial
physics developed that according to Ptolemy[^9], water clocks
were already used before his time (circa AD 150) in an
unsuccessful attempt to measure the apparent diameter of the sun
(by measuring the time taken for the sun to rise) and thereby
establish if the distance to the sun varies significantly.

This clearly shows Ptolemy's predecessors were convinced there
was something worth finding in heavenly motions and efforts were
made to wrest secrets from the celestial bodies. But before
Galileo no-one seems to have thought of using accurate water
clocks to study terrestrial motion. This provides a further
explanation for that extraordinary error about the falling times
of objects of different weights. There was simply a lack of
awareness that any significant insight could be gleaned from
quantitative observation of terrestrial motions. What thinking
went into the subject concentrated on the seemingly more
important question of:

* WHY the apple falls
* not HOW it falls

Here is Galileo's description of the clock he used in the
experiment that finally set terrestrial motion on the right
road:[^10]

> For the measurement of time, we employed a large vessel of
> water placed in an elevated position; to the bottom of this
> vessel was soldered a pipe of small diameter giving a thin jet
> of water, which we collected in a small glass during the time
> of each descent, whether for the whole length of the channel or
> for a part of its length;

> the water thus collected was weighed after each descent on
> a very accurate balance. The differences and ratios of these
> weights gave us the differences and ratios of the times, and
> this with such accuracy that although the operation was
> repeated many, many times, there was no appreciable discrepancy
> in the results.

It has been said that a scientific discovery can be expected
whenever the accuracy of measurement is increased tenfold. This
is beautifully confirmed in Galileo's case. Galileo measured the
time:

> 'with an accuracy such that the deviation between two
> observations never exceeded one-tenth of a pulse-beat.'

More than enough facts were constantly under our nose but were
for that very reason out of focus. I still have a vivid memory of
watching American astronauts working on the moon. By chance, one
of them kicked up some moon dust, which could be seen travelling
slowly about five or six metres in a perfect parabola. The motion
was sufficiently slow for the mind to be struck by the uniform
persistence of the horizontal (i.e., inertial) motion and the
gradual deceleration and acceleration of the vertical motion.

As the moon's surface gravity is about a sixth of the earth's,
the voyage to the moon achieved much the same effect as Galileo's
clock described above. In addition, the disturbing influence of
air resistance was completely eliminated. To inhabitants of the
moon, the laws of motion would have been as transparent as
geometry to the Greeks. The irony is that life requires an
environment rich in change and motion, but this very richness
prevented us seeing into the inner essence of motion.

Even now are there  _other clues_, literally before our eyes,
that could transform our conceptions as profoundly as Galileo's
clock? The history of dynamics suggests there could be.[^*1]

We still have not completed the survey of nature's perversity in
hiding the clues of dynamics. Recall that acceleration is only
part of the story of the 2nd and 3rd Laws. Just as important are
the _physical quantities_ that appear, above all the mass of the
accelerated body and the charge which causes the acceleration.
What chance was there of discovering the physical essence of both
laws: that bodies accelerate each other through forces. To answer
this, we must look at the forces separately. Nuclear forces were
quite out of reach but there were abundant manifestations of
electrical and gravitational forces albeit none in a form that
could have easily led to the 2nd Law.

Consider electrostatic forces: these should have been ideal for
recognizing the inverse square law. Quite the contrary; for
a start, due to the existence of both positive and negative
charges, almost all the electrical charges are locked up in
neutral complexes. The Coulomb forces are thus withdrawn from the
macroscopic world and all that remains are _contact forces_. This
greatly strengthened the view that motion is all about pulling
and pushing and put material characteristics of bodies such as
their geometrical shape or hardness in the foreground. No one
looked for the existence of properties such as charge. And even
in cases in which an electrostatic charge can be accumulated
(known to the Greeks), controlled laboratory conditions are
needed to achieve repeatability and observe genuine effects.

In the case of gravity the situation was slightly more
favourable. There is no mutual cancellation, but the extreme
weakness of gravity means its most obvious manifestation is free
fall to Earths surface. But this is just a single phenomenon; its
not possible to directly recognise that the strength of gravity
depends upon distance or on the gravitational mass of the
accelerating body. Nor is there any chance of perceiving that
gravity is a force of _mutual attraction_: The pull of the
massive earth totally outweighs the effect of the attracted stone
or apple. There is no manifestation of the law of action and
reaction.

Thus, although Galileo brilliantly overcame the problem of timing
the descent of bodies and achieved an understanding of
terrestrial motions under the joint influence of gravity and
inertia he made no progress towards Newton's law of universal
gravitation. His insight was crucial but still partial. Thus,
many factors taken together contributed to the extreme difficulty
of perceiving the physical aspect of motion.

The only chink left in Nature's physical armour was magnetism. In
permanent magnets, those miraculous lodestones, humanity had one
reliable force that came in manageable amounts and could be
controlled in experiments. The conditions were not favourable
enough for the discovery of the actual law of force, but good
enough to suggest a qualitative concept of physical force acting
over distances. Gilbert's book on magnetism[^11] in 1600 marked
a significant development and suggested the concept of force in
a form capable of mathematical development. But that did not
occur in magnetism. Kepler took the idea of force from Gilbert
and applied it to the heavens. Here at last were motions suitable
for mathematical analysis and they eventually yielded their
secret.

It was a curious paradox that the key to terrestrial dynamics was
found in the heavens, but first we should summarise that a major
reason for the non-discovery of dynamics was the doctrine that no
body could move unless it was moved by some other body.[^12]  In
the Middle Ages, this was expressed by:

> Omne quod moveturab olio movetur.

However, the motion of the pushed body was believed to come to
a stop as soon as the pushing stopped. This was based on the even
more fundamental doctrine that when a cause ceases to work the
effect it produces disappears:

> Cessante causa, cessat effectus.

In the light of the above discussion, we can see how such an idea
arose. Most bodies on the earth are in a state of rest. In
accordance with Newton's Third Law, they can only be set in
motion by the action of some other body. But air resistance,
friction, and the absence of an accurate clock hide the fact that
the pushing body produces _an acceleration rather than the motion
itself_. Also, because resistance brings most motions quickly to
a halt, it is very easy to see how the idea that motion itself
must be sustained by a pusher rather than merely _initiated_ by
the pusher took such a hold.

Finally, the effective absence of electrostatic forces means that
in most cases direct contact is needed to produce motion. All
these factors together conspired to produce Aristotle's doctrine,
which was all the more misleading because it was not totally
wrong. As so often, partial truth is more dangerous than straight
error.

> Read the following paragraph again!!! (Why should Earths
> surface approximate an inertial frame. Is it related to time
> - Earth is slowly rotating)

Finally, there is a further deep reason why dynamics took so long
to discover. In accordance with Newton's laws, the earth is in
a state of rotation. Nevertheless, a frame of reference fixed to
the _surface of the earth approximates an inertial frame_ to
a very good degree, and since according to Newton, a state of
uniform motion is indistinguishable from one of rest, the
Galilean invariance of dynamics produces a powerful impression
that the earth is immobile. The following chapters examine how
the belief in terrestrial immobility held back the discovery of
dynamics.

This all serves to emphasize the crucial role of astronomy. It
was astronomical observations, accumulated over centuries, that
finally produced the most convincing evidence the earth rotates
and moves (both with respect to the stars and the family of
inertial frames of reference). This broke the log-jam and
provided the hints that enabled Galileo and Newton to synthesise
the disparate parts and create the science of dynamics.


###  4. Why the first breakthrough occurred in astronomy

We are endowed with two clocks by Nature. With one, our
heartbeat, we have lived for millennia in a cornucopia of motions
but have not had an inkling of their secret. The other clock was
so incredibly accurate and convenient that astronomy became
a sophisticated science long before Galileo obtained useful
results in terrestrial dynamics.

I refer, of course, to the rotation of the earth and the apparent
motion of the sun and the moon. In Chapters 2 and 3, we will
consider the nature of time from philosophical and empirical
view-points and establish what it means to say that time passes
uniformly. But for now, we take the concept of uniform flow of
time as granted. This uniform flow is measured by the rotation of
the earth with an accuracy of about one second in a year, i.e.,
one part in thirty million. Almost as important as the accuracy
is the convenience. 

The alternation of day and night marks the 'second', the very
ticks of the clock. The sun and moon are its big and little
hands, the star-studded welk in the clock face, on which the
twelve signs of the zodiac mark the twelve 'hours' in the
astronomical system of time keeping.

No wonder Plato called celestial bodies the 'eternal image' of
time.[^13]  And it was not just the existence of a suitable clock
that helped astronomy. The motions themselves were of such
a different kind. Terrestrial motions exhibit bewildering variety
- from the purposeful locomotion of animals to the falling of
rain.

Moreover, all terrestrial motions are distorted by extraneous
factors (from the point of view of a theory of motion). Above all
air resistance and friction, being highly variable and differing
in their action on different bodies (streamlined or not, dense or
light, rough or smooth). The celestial motions are so simple in
comparison and are describable with clarity!

Seven lights (sun, moon, and five planets) creeping regularly
across a black backcloth laid with perfect markers, the stars,
which never move or fail. It is almost like a system of polar
coordinate axes were painted on the sky: azimuth measured round
the zodiac, declination from the pole of the ecliptic. For those
prepared to make the effort, Nature in her bounty made simple to
pluck precise data from the heavens. This indicates why astronomy
was to prove the high road to dynamics and how ancient
astronomers were able to make the significant discoveries they
did.

There is another factor that favoured the quantitative
development of astronomy and held back terrestrial dynamics. We
already mentioned the bewildering variety of terrestrial motions.
But this is only a part of the story. In a study concentrated on
dynamics, it is easy to forget that motion is but one of
innumerable phenomena that take place on the earth. The variety
of motions is nothing compared to the profusion of earth-bound
events that involve qualitative changes where the motional
aspects often appear insignificant.

Yes, the falling apple is striking but not half as marvellous as
the ripening apple, the golden corn, and the fermentation of
grape juice. Or the mystery of fire, the freezing of water, and
the deep blue of the sky. It is not surprising that under such
circumstances Aristotelian and medieval physics was essentially
a theory of _qualitative changes_. 

Was it not the purest speculation to suppose that the
_quantitative aspects of motion alone_, the least exciting of all
these unbelievable transformations, should hold the key to their
understanding?

In contrast, the celestial spectacle was pure ballet; attention
was forced on motion, for almost nothing else could be observed.

It is worth quoting the opening passages of Ptolemy's 'Almagest',
written 500 years after Aristotle and another 1,500 years before
Galileo. It reveals a remarkable awareness that the study of
motions, especially _celestial motions_, represented almost the
only place where humanity could hope to make a breakthrough to
a secure understanding of things. 

Here are Ptolemy's words; note in particular the parts I have
italicized:[^14]

    > For Aristotle divides theoretical philosophy too, very
    > fittingly, into three primary categories:

    > 1. physics,
    > 2. mathematics
    > 3. and theology

    > For everything that exists is composed of matter, form and
    > motion; none of these [three] can be observed in its
    > substratum by itself, without the others: they can only be
    > imagined.

    > Now the first cause of the first motion of the universe, if
    > one considers it simply, can be thought of as an invisible
    > and motionless deity; the division [of theoretical
    > philosophy] concerned with investigating this [can be
    > called] 'theology', since this kind of activity, somewhere
    > up in the highest reaches of the universe, can only be
    > imagined, and is completely separated from perceptible
    > reality.

    > The division [of theoretical philosophy] which investigates
    > material and ever-moving nature, and which concerns itself
    > with 'white', 'hot', 'sweet', 'soft' and suchlike qualities
    > one may call 'physics'; such an order of being is situated
    > (for the most part) amongst corruptible bodies and below
    > the lunar sphere.

    > That division [of theoretical philosophy] which determines
    > the nature involved in forms and motion from place to
    > place, and which serves to investigate shape, number, size,
    > and place, time and suchlike, one may define as
    > 'mathematics'. Its subject-matter falls as it were in the
    > middle between the other two, since, firstly, it can be
    > conceived of both with and without the aid of the senses,
    > and, secondly, it is an attribute of all existing things
    > without exception, both mortal and immortal: for those
    > things which are perpetually changing in their inseparable
    > form, it changes with them, while for eternal things which
    > have an aethereal nature, it keeps their unchanging form
    > unchanged.

    > From all this we concluded: that the first two divisions of
    > theoretical philosophy should rather be called guesswork
    > than knowledge, theology because of its completely
    > invisible and ungraspable nature, physics because of the
    > unstable and unclear nature of matter; hence there is no
    > hope that philosophers will ever be agreed about them; and
    > that only mathematics can provide sure and unshakeable
    > knowledge to its devotees, provided one approaches it
    > rigorously. For its kind of proof proceeds by indisputable
    > methods, namely arithmetic and geometry.

    > Hence we were drawn to the investigation of that part of
    > theoretical philosophy, as far as we were able to the whole
    > of it, but especially to the theory concerning divine and
    > heavenly things. Fo that alone is devoted to the
    > investigation of the eternally unchanging. For that reason
    > it too can be eternal and unchanging (which is a proper
    > attribute of knowledge) in its own domain, which is neither
    > unclear nor disorderly.

Note how Ptolemy identifies mathematics with the study of motion
and sees no hope of progress in either 'physics' or 'theology'
and only the study of 'divine and heavenly things', gives hope of
genuine progress, because of the 'eternally unchanging' nature of
what happens in the heavens.

For the discovery of dynamics, astronomy offered other advantages
including a fortunate fluke: the existence of the moon with its
eclipses of and by the sun. Thanks to the perfect clock which
enabled them to be recorded with accuracy, they revealed a most
mysterious feature of celestial motions, which is already hinted
above by Ptolemy. Although the motions themselves were not
perfectly regular (even the sun which has the simplest motion is
not perfectly uniform) the _predictability of eclipses_ was
nevertheless evidence of some deep interconnection of things.

The eclipses were also such awesome events, drawing human
curiosity to ponder their origin. It was the experience of an
eclipse which turned Tycho Brahe into a great astronomer. It
struck him as: [^15]

    > something divine that men could know the motions of the
    > stars so accurately that they were able a long time
    > beforehand to predict their places and relative positions

The cyclic regularity of celestial motions was probably the
single _most important factor_ in the discovery of dynamics.
Quite generally, astronomy appears to have attracted attention
because of its 'divine' attributes which awoke a sense of awe
before the starry heavens, the perfect uniformity of the diurnal
rotation, and the seeming eternity of the celestial
constellations.

In the case of terrestrial motions, it was an example of
familiarity breeding contempt; but the celestial motions, few as
they were, exerted a pull upon the imagination while also
imposing a severe discipline on the investigator. He had no
choice but to investigate their motion; there was nothing else to
study. 

Thus, the great bulk of Ptolemy's Almagest is in a terse, factual
style. Most of it could be printed in the Physical Review without
appearing out of place. _But every now and then there are lyrical
passages in which Ptolemy reveals his enthusiasm for the subject
and the inner drive that sustained him through hours of
observation and computation._ We have seen how he identifies
heavenly bodies with the divine. Later when commenting on the
celestial affairs and their proximity to perfect divinity, he
writes:

    > From the constancy, order, symmetry and calm which are
    > associated with the divine, it makes its followers lovers
    > of this divine beauty

What was the physical cause of this inspiration in Ptolemy? What
made him want to study what _he was convinced was divine_ and
thereby lay the foundations of a science that ultimately killed
the divinity he worshipped? Basically the advantage of celestial
motions (in discovering the secrets of dynamics) is that the moon
and planets move in the _vacuum_ of space and in the central
force field of the sun, so the effect of the law of inertia is
manifested in an almost undiluted form, as we saw in Sec. 1.1.
with the _area law_.

All earth-bound motions come to an end, but the celestial motions
go on for ever. This is what made them appear an eternal image of
time and divinity. The search for immortality was the first
stimulus to the discovery of dynamics.

But even in astronomy, though the conditions were more
favourable, Newton's laws could still not be 'read off' directly.
Because of the overwhelming mass of the sun and of the earth in
the earth-moon system, there is no real manifestation of the 3rd
Law. More seriously, the observed motions arise from the
combination of the 1st and 2nd Laws, neither of which are
manifested in pure form. Without hints that were finally supplied
by terrestrial motions, the clear separation of the effects of
these _two laws_ in the heavenly motions could never have been
made.

Thus Kepler achieved marvels in the quantitative description of
the motions and had several ideas which Newton showed were
basically sound, yet he completely failed to overcome the main
impediment to the discovery of dynamics: Aristotle's dictum:

> Omne quod movetur ab olio movetur.



###  5. General comments on the absolute/relative debate

The absolute or relative nature of motion revolves around two
basic questions.

1. How is motion to be described? (or more generally any kind of
change irrespective of its causes and properties)

2. What is the nature of motion? What laws does it obey?

The two questions are more closely interrelated than might
appear. What is at stake is not so much a description in any
unambiguous terms but rather a description that both describes
and puts motion into its most _comprehensible_ form.

For it turns out that the same objective state can be described
in many ways. This is the origin of the endless debate about
whether the earth actually moves or not. It is essential to
distinguish between features of motion that exist objectively
from the means of description from those that vary with them.

The clarification of these questions is an ongoing enterprise,
and the conclusions reached at any stage are always liable to
radical revision when new objective relationships are discovered.
For example, since Copernicus's proposal of the earth's mobility,
the question of whether the earth moves or not has passed through
_three different stages_, each of which has shown previous
conclusions in a new light. It seems that the conceptual
difficulties get more complex as more progress is made.

Let us briefly anticipate the main stages. Up to the discovery of
dynamics by Newton and its conceptual clarification in the 19th
century there did not appear to be any restriction on the means
of description. The main question appeared to be finding the most
appropriate means. Nevertheless, the end result of the process
was quite startling in its implications for the relationship
between space and motion, as we shall see in Chapter 12.

The next significant development came with the growing awareness,
crystallized in Einstein's work, that our means of observation,
on which our description ultimately rests, is itself governed by
the laws of nature. Therefore the possibility of describing
motion meaningfully is not independent of the actual laws that
govern the very motion one is wishing to describe. Therefore it
is not possible to lay down 'a priori' a framework in which
motion can be adequately described come what may, i.e. whatever
the actual nature of motion turns out to be.

The instinctive approach is to say that motion is to be measured
by _rods and clocks_. But once it is realized that the behaviour
of rods and clocks is itself governed by laws of nature that are
not known in advance it becomes clear that the choice of the
means of description goes hand in hand with the establishment of
concrete empirical facts about motion as it is actually observed.
_[Harvey Brown, physical relativity!!]_

A further stage in our appreciation of the complexity of
describing Nature is represented by Quantum Mechanics. Here the
existence of a unique well-defined externally existing world is
questioned in a most acute form. The problems presented by
_quantum mechanics_ go beyond the scope of this study and will
only be considered peripherally. They are mentioned here only to
indicate the further level of sophistication that is needed to
think about the world.

Realising the provisional status of our conclusions about motion
should not cause pessimism however. The successes already
achieved belong to the finest accomplishments of the human
intellect; they are associated above all with Newton and
Einstein.

After these comments about the interconnection of the two
questions mentioned above, let us now look at them separately to
the extent this is possible. In this volume their mutual
interdependence does not become acute. We begin with the first
question.

1. How is motion to be described? (or more generally any kind of
change irrespective of its causes and properties)

If scientific discourse serves any useful purpose, statements
about the motion of a body are meaningless unless it is stated
_with respect to what_ the motion takes place. The 'thing'
a moving body moves with respect to must be just as clearly
defined as the body itself. This is an epistemological
imperative, but it is remarkable how often this has been ignored
in the history of science. What is the cause of the neglect?

There is little doubt the neglect is due to a pure accident, the
fortunate fact we live in a relatively stable environment. From
earliest times Nature presented us with two seemingly stable
structures:

1. the ground beneath us and
2. the unchanging appearance of the heavens.

The rigid structure of the earth provided a perfect framework
within which motion could be observed and studied. Because
nothing significant in the framework changed, it acquired the
status of the frame, or arena, of motion. It is certain this
apprehension of an all-pervading frame of reference occurred
instinctively. _For practical purposes is indistinguishable from
Newton's absolute space_.  It takes an effort of will to question
the existence of this space, which may be called _intuitive
space_.

The first figure to question it was Aristotle. He started the
strand of philosophy that seeks to demonstrate the relative
nature of motion and space. However, the instinctive belief in
intuitive space is very deep. In this connection Anneliese Maier
(writing on the subject of medieval concepts of place and space)
makes the following comments:[^16]

    > In general, the philosophers of late scholasticism behaved
    > in the face of concrete physical questions just like the
    > natural scientists of all times: when the all too abstract
    > philosophical concepts became uncomfortable, they tacitly
    > replaced these concepts by the naive empirical concepts of
    > prescientific thinking and in practice worked with them.

    > This explains why all kinematic problems were treated, not
    > on the basis of the ... Aristotelian space and time
    > definitions, but rather on the basis of a purely
    > descriptive determination in which motus localis [i.e.,
    > motion] is treated simply as a successive change of
    > position, this change of position moreover being by no
    > means relative to an ultimum continentis [ultimate
    > container] in the Aristotelian sense but relative to the
    > empirical space of practical experience;

    > this space is the same as the one Galileo meant and was
    > finally officially introduced into physics as 'absolute
    > space' by Newton. And the change of position takes place in
    > a time of which the same can be said.

The truth of what Maier says[^\*2] about empirical space (what
I call intuitive space) is borne out in the writings of
Aristotle, in the medieval period and later in the work of the
17th century philosophers. Only on such a basis is it possible to
explain the gross inconsistencies of many major figures who
contributed to the creation of dynamics. The point is that the
concept of space is shaped by whatever problem the scientist
confronts and is adapted accordingly. We may encounter the
concepts of space and motion of both the philosopher and the
natural scientist and realize that they need not be the same,
even when the same person is involved!

I would add to Maier's division of spatial concepts into those
that are:

    1. practical
    2. philosophical

a third strand which runs between them:

    3. the concepts used by working _astronomers_.

By the nature of their work, astronomers need to determine the
position of one object relative to others, and are constantly
reminded of that epistemological imperative which might only
occur to a reflective philosopher. On the other hand their work
is pre-eminently practical and, in the tradition of theoretical
astronomy initiated by the Greeks, is at the same time
a fully-fledged science of motion.

This is one reason why a large amount of space will be given to
the work of astronomers. I feel it is a part of the
absolute/relative debate that has been neglected. For example,
Capek has published an excellent selection[^19] of extracts in
his book '_The Concepts of Space and Time_' yet Ptolemy,
Copernicus, and Kepler are represented only in an essay by Koyre,
and that on the finiteness of the Copernican cosmology rather
than the absolute/relative question.

Just as the stability of the earth and heavens gave rise to
_intuitive space_, another accident gave rise to an equally
pervasive concept: the _uniform flow of time_.

The origin of this notion is clearly the rotation of earth. It is
interesting that an inbuilt belief in the uniform flow of time
was clearly established long before scientific evidence was
forthcoming to demonstrate that there was a sound basis for it.
Aristotle was the first who clearly posed the question: what do
we mean by the flow of time? But just when the philosophical
enquiry becomes both interesting and difficult Aristotle lapses
into intuitive practicality.

The clearest evidence that the Greeks had an instinctive
awareness of both _space_ (reflected in the development of
Euclidean geometry) and also the _uniform flow of time_ is found
in the development of kinematic geometry. There is evidence it
began to emerge as early as the middle of the fifth century
BC.[^20]  This branch of mathematics was very important for the
development of Greek astronomy and later played a crucial role in
Galileo's work. The distinctive feature of _kinematic geometry_
is that it is used to generate more sophisticated curves than the
circle, using points and lines assumed to move uniformly.
A classic example is provided by Archimedes' Spiral Lines, which
contains the famous definition:[^21]

    > If a straight line one of whose extremities is fixed turns
    > with uniform speed in a plane, reassuming the position from
    > which it started, and at the same time a point of that
    > rotating line is moved uniformly fast on that line,
    > starting from its fixed extremity, the point will describe
    > a spiral in the plane

We now summarise the prevailing notions of space and time at
stages in the discovery of dynamics. Throughout the entire
period, the concept of time seems to have given very little
trouble. Many pondered its nature but none seriously _doubted
that it flowed uniformly_.

    > This uniform flow was the only thing the dynamicists needed
    > to transform kinematic geometry into physical dynamics.

In Chapter 3 we will see that the _practical problem_ of
time-keeping was solved by Ptolemy's time, and this explains why
the nature of time, as opposed to its measurement, played such
a small role in dynamics up to Einsteins time. The early
intuitive concept passed unscathed through the two major events
that necessitated a drastic reconsideration of space and motion:

1. the Copernican revolution
2. the revival of atomism

Regarding space and motion, we find in Aristotle an anticipation
of the debate that raged in the 17th century and still has not
subsided. It was largely a reaction to atomism. Perhaps even more
than the Copernican revolution it is _atomism_ that makes the
relativity of motion an acute issue. We have seen that our
environment provided two alternative frames of reference for
describing motion:

1. the earth
2. the fixed stars.

As long as neither was believed to change, the problem of
describing motion never became acute. Motion was recognized as
relative but only relative to the frame of the solid earth or the
stars. In the presence of an unchanging framework, the question
of motion being relative to space or matter is academic. It is
only with the awareness that _the frame may not be rigid at all_,
that the universe may be a seething mass of atoms, that the real
dilemma of motion becomes acute.

This was what Aristotle sensed about atomism and did not like.
His alternative cosmology refroze the firmament of the stars and
placed an immobile earth at the centre of a spherical rotating
cosmos. Although the Copernican revolution reversed the motions
of the firmament and earth, it did not immediately unfreeze what
Aristotle had refrozen in reaction to the atomists.

It was in this immediately post-Copernican period that Galileo
established many important results in dynamics, using what he
regarded as truly fixed stars as an effective framework
. Virtually all the major discoveries making up the Newtonian
synthesis were in the period where kinematic geometry appeared to
have a natural validity. The early discoveries in astronomy were
made in the post-Aristotelian period where the earth provided the
_fiducial body_ at rest in an effective space where kinematic
geometry was clearly the appropriate tool to describe motion. The
Copernican revolution merely transformed the fixed stars into the
fiducial body, where were the explicit frame of reference for
Kepler's great discoveries. Galileo too had no cause to worry
about the frame of reference.

The fact that Galilean dynamics seemed to work well in the
_intuitive space of kinematic geometry_, in which Galileo
instinctively believed the stars to be at rest, made it easier
for Newton to believe in real space, even though he was aware of
the potential unfreezing of the cosmos. In fact, Newton's
formulation of absolute space and time was a _blessing after the
event_, not the setting up of a general framework where the laws
of motion had yet to be found.

This is a general outline of the intuitive concepts of space and
time and why they were used by Newton in almost the same form as
they were instinctively conceived 2000 years earlier by Greek
geometers and by philosophers such as Aristotle.

It is also helpful to distinguish between typical forms through
which the laws of motion passed, as this also has a bearing on
the absolute/relative debate. It is helpful to coin new words to
underline the conceptual differences between the different types
of laws of motion.

First are the _mechanical_ (or contact-mechanical) theories. The
crudest are those that posit a mechanical contrivance as an
explanation of observed motions. For example, Aristotle's solid
spheres to carry the planets etc. around the earth. Although not
explicit, it seems Copernicus had a similar conception.

Less crudely machine-like are the mechanical theories developed
in antiquity and revived in the 17th century. They come in two
classes:

1. _Plenum theories_, where the world is assumed to be full of
a fluid-like matter (which may also contain some solid matter),
so that motion results from the direct pushing of one part of the
fluid on another.

2. _Atomistic theories_, in which particles of fixed shape are
assumed to move through the void, experiencing intermittent
collisions.

A characteristic feature of early mechanical theories is they
seek to explain observed phenomena in 3D geometrical terms. In
histories of dynamics, such _geo-metro-mechanical _explanations
of motion are often described as _physical_, but we reserve this
word for genuinely dynamic concepts such as mass and charge, as
defined in Sec. 1.1.

Next were approaches I shall call '_motionic_'. These theories
mark an important step towards full dynamics but are neverthless
different enough to warrant a special name. Their hallmark is
they concentrate on motion and aim to describe the observed
motions, either qualitatively or quantitatively. They seek
neither a hidden mechanical explanation for motion nor a visible
source of forces that cause motion, as in Newton's theory of
gravitation. For instance Aristotle's approach was by no means
exclusively mechanical; it also contained much that can be dubbed
'motionic'.

The main exponents of the 'motionic' approach were the
_Hellenistic astronomers and Galileo_, who refused to look for
physical or mechanical causes of motion. Within the general
motionic approach, it is worth introducing a special word to
denote a particular of law of motion that appeared in antiquity
and has special significance for the debate about motion.

Historically, the first laws of motion were purely geometrical in
nature; they were inspired by _kinematic geometry_. Thus, ancient
Greek astronomy stated that all celestial bodies move in _perfect
circles_ at a uniform (perfectly constant) speed. In accordance
with this law, the motion is entirely _independent_ of all the
other bodies and matter in the universe.

Since this law was formulated by astronomers, they had a clear
idea that the motion was actually taking place at some definite
position relative to their fundamental reference body (the
earth), and they attempted to determine that position:
'independent' in the previous paragraph means the position of the
centre of the circular motion and its speed were not determined
by the remaining bodies in the universe.

Provided there is an clear specification of the reference frame
and a means for measuring time, such a law is epistemologically
unexceptionable. Since its formulation involves a minimum of
concepts and is _aphysical_ because physical concepts such as
mass or charge do not appear in it, we may call it
a _geometrokinetic law_.

Such a law can be contrasted with physical laws of motion, such
as  Newton's law of universal gravitation. _Such laws cannot be
formulated without the introduction of essentially physical
concepts such as mass and charge._ These are concepts that go
beyond the purely kinematic concepts of space and time and can in
no way be derived from them. They belong to dynamics proper, the
study of motion in relation to the forces that produce the
motion.

Why should we introduce '_geometrokinetic_' when Ampere
introduced the perfectly good distinction between kinematics and
dynamics. The point is Ampere defined kinematics as the science
of _pure motion_, without reference to matter or
objects moved or to the force producing or changing the motion.
I.e. the purely geometrical science of motion in the abstract.
But this means the adjective "kinematic" cannot properly be
used to describe either the ancient Greek law of celestial motion
nor Newton's law of inertia.

For these are laws of Nature and they apply to real bodies.
Moreover they hold as empirical laws. They cannot be obtained as
geometrical theorems, in contrast to genuine kinematic
relationships. For example, the purely mathematical relationships
for the transition from one coordinate system to another moving
relative to it at some given velocity.

Nevertheless, since the Greek law of astronomy and the law of
inertia do not references to a force 'producing or changing the
motion', one does quite commonly find both laws referred to as
'kinematic'. This is normally not serious and will probably be
understood to mean that _forces_ do not figure in the laws.
However, when Greek astronomy is characterized as 'entirely
kinematic' I suspect that many readers would take this to mean
that astronomers like Hipparchus and Ptolemy were concerned
solely to fix the positions of the celestial bodies and dispensed
entirely with theory. This would be wrong; they had a low of
motion, but it was a geometrokinetic law - not physical, and we
lack a word to describe it.[^\*3]

The distinction is important since, through a series of
metamorphoses the ancient Greek geometrokinetic law of astronomy
_split in two_ and became by stages:

1. Newton's law of inertia (which remained geometrokinetic, i.e.,
aphysical; we recall from Sec. 1.1 how the 1st Law is set apart
in this respect from the other two.)

2. Newton's law of universal gravitation (which became a fully
fledged dynamical, i.e., physical law).

Now the question at the heart of the debate about absolute and
relative motion is this:

> Is the law of inertia truly a GEOMETROKINETIC LAW or is it,
> like the other half of the ancient Greek law (law of
> gravitation), physical too and only apparently geometrokinetic?

This question is particularly relevant, since Kepler used the
same epistemological and physical arguments when performing his
Herculean task that helped prise the Newtonian dynamical law of
gravitation out of its geometrokinetic antecedent in Greek
astronomy as Mach did when he argued that _inertia has a physical
origin_.

It was in this sense that Kepler's discovery of the laws of
planetary motion was a pre-Machian (and pre-Newtonian) _triumph
of Machian ideas_ and suggests that Newton's formulation of
inertia appears in geometrokinetic garb only because its physical
origin was more hidden than for his 2nd and 3rd Laws.

As outlined in the Introduction, such considerations are the main
justifications for the historical approach to these problems.


###  6. Was dynamics discovered or invented?

One of the leitmotifs of this book is Machs belief in an
ultimately indissoluble unity of the universe:[^23]

> Nature does not begin with elements, as we are obliged to begin
> with them. It is certainly fortunate, that from time to time we
> can turn our eyes from the overpowering unity of the All, and
> allow them to rest on individual details.

> But ultimately we should not forget to complete and correct our
> views by a thorough consideration of the things which we
> temporarily left out of account.

The attempt of science to find a rational description of Nature
suffers from an occupational hazard which must be highlighted.
The scientist is constantly seeking 'basic' elements to weave
into a rational scheme. This analytic method still followed 2,500
years after its formulation in ancient Greece, was articulated by
Aristotle:[^24]

> ... knowledge is always to be sought through what is primary,
> and the primary constituents of bodies are their elements... .

> Let us then define the element in bodies as that into which
> other bodies may be analysed... and which cannot itself be
> analysed into constituents differing in kind.

Such a definition of an '_element_' is what all thinkers are
striving for. In fact the word analyse derives from _unravel_.
However the danger is that new insights into Nature are liable to
harden into unquestioning belief that the world is cast in
a particular mould. This danger particularly applies to the
recognition of 'elements' from which many phenomena can be
understood. It slowly becomes inconceivable that the world could
be any other way. While the extent to which this happens depends
on particular historical circumstances, the danger is inherent in
Science.

An obvious example is the early belief in a flat earth. The world
around us appears flat, ergo the whole world is flat. Proofs of
the earth's sphericity (by Aristotle and Ptolemy) belong to the
first solid achievements of science. They demonstrated how
observations of small effects combined with rational arguments
and geometrical theorems could change a premature view of the
world formed by its apparent local flatness.

Nevertheless Aristotle's recognition of the sphericity of the
earth did not prevent him making mistakes about Nature every bit
as misleading as a flat earth. The flat earth mistake and these
mistakes of Aristotle spring either from:

* unjustified extrapolation (local flatness extended to infinity)
  or

* an inability to see distant things clearly enough. (this was
  ultimately why Aristotle and Ptolemy thought the heavenly
  bodies were divine)

There is also a more subtle danger and one less easy to eliminate
by experimental advance. It is this: a certain assumption made
when a striking facet of the world is postulated as a basic
element and used to build up the whole. The assumption is that
the facet retains the essential properties for which it was
selected even when _detached from its context_.

The danger is the facet may only have the desirable property
because it is _in the context of the whole_. In such a case, to
regard the facet as capable of existing on its own with all these
properties and to imagine the whole built up from such facets
will lead to an incorrect understanading of the interrelation of
the _whole and the parts_.

To give a simple illustration. Suppose a cathedral were built of
bricks that under pressure change their colour, the colour
depending on the pressure. Because of different pressures exerted
on the bricks, the cathedral, will obviously glow with different
colours. Then a naive 'atomistic' interpretation is that bricks
come in different colours and different proportions of bricks
were used to achieve a particular colour. Short of dismantling
the _cathedral_, it is difficult to recognize the fallacy of the
theory. (Though not in principle impossible, e.g. by observing
carefully the relationship between colour and position in the
overall structure).

This is the problem we face with inertial motion: the actual
phenomenon is not in doubt (even though it took remarkably long
to discover);

    the problem is the nature of its relation to the whole

It is particularly acute since the 'cathedral' in this case is
the entire universe, so there is no way to 'dismantle' it to see
if inertia still persists in its absence.

Here we anticipate the Mach's criticism of Newton's conclusion
that inertia exists independently of the stars from the undoubted
existence of inertia in the presence of the stars. From Mach's
Mechanics:[^25]

    > When we say a body "K" alters its direction and velocity
    > solely through the influence of another body "K'", we have
    > asserted a conception that it is impossible unless other
    > bodies A,B,C ... are present with reference to which the
    > motion of the body K has been estimated. In reality,
    > therefore, we are simply cognizant of a relation of the
    > body K to A, B, C 

    > If now we suddenly neglect A, B, C ... and attempt to speak
    > of the deportment of the body K in absolute space, we
    > implicate ourselves in a twofold error.

    > 1. We cant know how K would act in the absence of A, B, C.. 

    > 2. Every means would be wanting of forming a judgement of
    >    the behaviour of K and of putting to the test what we
    >    had predicated, which therefore would be bereft of
    >    scientific significance.

Mach is pointing out that underlying Newton's apparent proof of
the existence of absolute space there is a major hypothesis. It
may be called the _detachment hypothesis_:

    that a phenomenon observed within a given environment is in
    essence independent of the environment.

Moreover, the logical possibility that a phenomenon could be
independent of the environment is not a proof that it actually is
independent. In fact the word _absolute_ carries the detachment
hypothesis in its _etymology_. The Latin 'absolutum' meant
originally loosened, free, separate. Moreover, the concept of
absolute space is closely related to the _atomic concept_ of
matter, according to which the world, which is presented to us
through the senses as an indissoluble whole, is dissolved
conceptually into atoms and space.

Atomic concepts are so familiar that we forget what a huge
assumption underlies them. It is arguable that many working
physicists, as opposed to philosophers of science, are quite
unaware that any assumption is made at all.

    But it should not be forgotten that we never actually see
    space; all we ever see is matter against the background of
    other matter.

If we were to stick to the bare facts, all our talk would be
relative - about how certain matter stands with respect to other
matter. With the assistance of the concept of space, the atomic
hypothesis breaks the bond between matter and matter, detaches
individual parts of matter from the overall material
concatenation, and sets them _loose in conceptual space_.

This discounts the possibility that the material concatenation is
the cause of the very existence of the parts. Mach's Principle is
a suggestion of this kind, not so much about the existence of
material bodies as such but rather the motion they execute. (???)

In light of this which implies Newton may have given us
a distorted picture of the world, it may be asked why this volume
is entitled The Discovery of Dynamics. Does the title not imply
that dynamics is something definite, sitting out in the world
waiting to be discovered like America? Is it correct to equate
Newton with Columbus?

Is it not much truer to say that Newton put together elements in
a particular way, but that there is nothing particularly
sacrosanct about the actual structure he chose? Should one not
speak of the invention of dynamics? And did not Einstein himself
give support to such a view in his Herbert Spenser lecture[^26]
by saying the basic concepts of physics are:

> 'free inventions of the human mind'?

Let us look at what Einstein actually said. He was against the
view that the laws of nature can be deduced with pure logic from
facts of experience. There can be no doubt Einstein was correct
to point out that this is not the case. The simple fact that his
own general theory of relativity describes gravitation every bit
as well as Newton's theory (better indeed) puts his case beyond
any question. Nevertheless, the expression 'free inventions,'
which has often been quoted out of context is unfortunate. It
could imply experience puts little constraint on theorizing.

But this is far from true and as Einstein later says:

> Experience can of course guide us in our choice of serviceable
> mathematical concepts'. And then comes the explicit statement:
> 'Experience of course remains the sole criterion of the
> serviceability of a mathematical construction for physics

But the fact that a physical or mathematical concept, which is
a free construction, is actually useful for describing a natural
phenomena is itself a discovery. The _construct itself_ is not
discovered but created; but the _congruence_ between the
construct and the phenomena (the fact they match to within the
experimental errors) is truly discovered.

Seen in this light, all the individual parts used by Newton in
his synthesis represent true discoveries. Not the parts and the
synthesis itself but the fact they are _congruent to contingent
facts_. The congruences are real, every bit as real as America,
and it is their existence that is significant. Mathematical
constructs are many but such congruences, which are never more
exact than the accuracy of experimental tests, are very rare in
the history of science.

It is in this sense of the _discovery of congruences_ that it
seems appropriate to speak of the discovery of dynamics, rather
than its invention or creation.

Such considerations help answer the sceptics who maintain that
science does not rest on objective facts, and that its notion of
making steady progress is an illusion. It is asserted that there
is no such thing as a bare observation, that all observation
contains an element of theory, which is in turn a 'free
invention'. According to this view, we are brainwashed into
seeing a 'reality' in the world that does not exist at all.

Now since the purpose of this book is to _raise questions about
some of our most basic concepts_ - concepts that undoubtedly
shape our picture of the world, this last view is a thesis with
which I tentatively agree. There is undoubtedly an element of
brainwashing. On the other hand, I am convinced we are making
progress in understanding the nature of our existence. How are
these two viewpoints to be reconciled?

I suggest the reconciliation is found in the essentially
_open-ended but at the same time partially rational nature of our
existence_. Up to now humanity has not come up against a limit to
the flux of new experiences nor the ability of great minds to
find rational constructs congruent to these experiences. And the
development of dynamics is proof that finding _objective
congruences_ between the rational constructs and experience is
genuinely progressive.

Once a real congruence has been established, it is never
discarded; it is merely fitted into a new whole. Of course, in
the process our view of the congruence is changed out of
recognition. In this sense all discovery and progress in science
is a _journey into the unknown_, in which shock follows shock.
But why do we not sink into the sea of our new experiences?

The answer is we are still carried by the discoveries that lie
_behind us_, even if we now see them in a different perspective.
They are still there. As long as people can agree that the moon
is the moon and the sun the sun there will still be a great deal
of truth and utility in the Ptolemaic system which was also true
science, hardly less than Newtonian.

The past discoveries of true congruences are the raft that
carries us into the unknown future.



[^1] Principia, pp. 1-28.
2. M. Jammer, Concepts of Mass in Classical and Modern Physics,
   Harvard University Press, Cambridge, Mass. 1961, pp. 87-9.
3. In the proof of Corollary V of the Axioms on pp. 20/1 of Ref.
   1.
4. A Pais, 'Subtle is the Lord. . .'. The Science and Life of
   Albert Einstein, Oxford University Press, Oxford (1982), p.
   vi.
5. De Caelo, pp. 223-5 (Book II, xiii, 294a).
6. M. R. Cohen and I. E. Drabkin, A Source Book in Greek Science,
   New York (1948), p. 211.
7. De Caelo, p. 171 (Book II, vi, 288a).
8. A. Maier, Die Vorlaufer Galilei's im!4. Jahrhundert, Edizoni
   di Storia e Letteratura, Roma (1966), p. 137.
9. Almagest, p. 252 (HI, 416/7).
10. Discori, p. 179.
11. W. Gilbert, De Magnete, Magneticisque Corporibus, et de Magno
    Magnete Tellure, London (1600); transl. by P. F. Mottelay: On
    the Loadstone and Magnetic Bodies, and on the Great Magnet
    the Earth, Bernard Quaritch, London (1893).
12. De Caelo, p. 171 (Book II, vi, 288a).
13. Plato IX Timaeus (transl. by R. G. Bury), Loeb Classical
    Library, Heinemann, London (1981), p. 77.
14. Almagest, pp. 35-6 (HI, 5, 6).
15. J. L. E. Dreyer, Tycho Brake, Adam and Charles Black,
    Edinburgh (1890), p. 14.
16. See Ref. 8, Chapter 1, Part 1, p. 23.
17. Physics, translator's footnote on pp. 274-5.
18. Oxford English Dictionary, entry for phoronomy.
19. M. Capek, The Concepts of Space and Time (selections from the
    philosophical literature on space and time), D. Reidel
    Publishing Company, Dordrecht (1976).
20. Clagett, pp. 168-9.
21. Quoted from Clagett, p. 171.
22. d'Alembert, Traite de Dynamique, quoted from the article by
    A. Gabbey in Descartes: Philosophy, Mathematics and Physics,
    ed. S. Gaukroger, Harvester Readings in the History of
    Science and Philosophy, Vol. 1, Brighton (1980), p. 231.
23. Mechanics, pp. 287-8.
24. De Caelo, p. 283 (Book III, iii, 302a).
25. Mechanics, p. 281.
26. A. Einstein, On the Method of Theoretical Physics. The
    Herbert Spencer Lecture delivered at Oxford, 10 June 1933,
    Clarendon Press, Oxford (1933).


[^\*1]  As a striking example of what can escape notice (though
with no suggestion it has any bearing on fundamental questions of
dynamics!) the following may be mentioned. In a department store
in the centre of Brussels the undersides of the escalators have
been covered with mirrors at exactly 45° to the vertical. If one
stands and looks at the mirrors, all the public is seen walking
upside down, and the curious swaying and rising and sinking
manner in which people walk is suddenly made apparent. The effect
is so surprising as to be almost hypnotic.


[^\*2] The curious expression _motus localis_ ( = local motion)
has the following origin. Aristotle's physics did not give motion
the predominant status it has accquired in modern physics since
the discovery of dynamics. It therefore treated motion within an
overarching framework that encompassed _all forms of change_
(e.g. hot to cold, blue to red, etc.) and not just change of
place. Although the Greek word kinesis (from which both kinetic
and kinematic derive) has a primary meaning of movement, it can
be used of all transitions, in particular from one _qualitative
state to another_. This was Aristotle's practice.

When he required an exclusive word for motion in the modern
sense, he used 'phora' Plato[^17] (Phoronomy is a rarely used
synonym of kinematics, coined in fact before the latter (in 1716
by Hermann as the Germa word Phoronomie[^18])

In Latin the word corresponding to 'kinesis' is 'motus', and in
this case, the modern meaning of motion was distinguished by
adding the adjective 'localis'. This construction persists in our
word locomotion.

Modern physicists should therefore be aware that 'local' in local
motion (which is often found without any explanation in
translations of early texts on motion) is _nearly always
redundant_ in modern English and has a meaning quite different
from the same word in local field theory.

As we shall see in later chapters, medieval physics was full of
expressions like 'motus ad formam', 'motus ad calorem', 'motus ad
cjuantitatem' applied to processes which involve changes in
shape, heat, and quantity respectively.



[^\*3]  Its interesting to note the absence of an adequate word
to describe Galileo's work on motion, which is described
variously as 'kinematic', 'dynamical', or even occasionally
'mechanical' (the least appropriate). I shall mostly refer to it
as _motionic_. It is worth noting that the general term mechanics
(still widely used today) became established in the 17th century
at the time, before the creation of dynamics by Newton, in which
mechanical explanations of motion were assumed as an article of
faith.

The word dynamics, which derives from the Greek word for power
and force (cf. dynamite), was originally coined by Leibniz to
describe his own theory of motion but by the 18th century was
used to mean 'the science of the motion of bodies acting on each
other in any way whatever.'[^22] Ampere's distinction between
dynamics and kinematics came later. The distinctive
characteristic of dynamics is the _interactive nature_ of the
motion it describes; the word dynamics will be used throughout
this book with this connotation.


[^2] test

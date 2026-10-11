
- Holonomic:     coordinates + time
- Non-Holonomic: coordinates + time + velocities + higher derivatives

Also: Holonomic: the constraint can be integrated (see Herz below)

### Later explanation: ChatGPT4o
    - In classical mechanics, the difference between holonomic
      and non-holonomic systems is vital when analyzing the
      _constraints_ applying to a system's motion. 

    ### HOLONOMIC SYSTEMS
        - Definition: 
            - In Holonomic systems the constraints can be
              expressed as equations relating the `coordinates`
              and possibly `time`.
        - Constraints: 
            - These constraints are called holonomic constraints
              and can be written as equations like
              `f(q1,q2,…,qn,t)=0`.
        - Example: 
            - Imagine a bead sliding along a fixed, smooth wire.
              The bead's position is restricted to the wire's
              path, and this path can be described by an
              equation, say `y = f(x)`. 
            - This equation is a holonomic constraint because it
              directly relates the coordinates `x` and `y`.

    ### Non-Holonomic Systems
        - Definition: 
            - In Non-holonomic systems, the constraints cannot be
              expressed as equations SOLELY in terms of
              `coordinates` and `time`. 
            - Instead, these constraints often involve the
              VELOCITIES or HIGHER DERIVATIVES of the
              coordinates.
        - Constraints: 
            - These constraints are called non-holonomic
              constraints and can be inequalities or equations
              involving differentials, such as
              `g(q1,q2,…,qn,q˙1,q˙2,…,q˙n,t)=0`.
        - Example: 
            - Consider a car driving on a flat surface. The car
              can move forward or backward and turn left or
              right, but it cannot move sideways without turning.
              The constraint here involves the car's velocity and
              direction, which can be expressed as
              a non-holonomic constraint, like `y˙−x˙tan(θ)=0`,
              where `θ` is the steering angle.
                

    ### Key Differences
        - Nature of Constraints: 
            - Holonomic constraints are purely POSITIONAL,
              depending on the coordinates and time, 
            - non-holonomic constraints involve the system's
              velocities or higher derivatives.
        - Equations vs. Inequalities: 
            - Holonomic constraints are usually expressed as
              equalities, whereas non-holonomic constraints can
              be expressed as _inequalities_ or _differential
              forms_.
        - Examples: 
            - Holonomic example: A pendulum constrained to move
              in a circular arc. 
            - Non-holonomic example: A rolling wheel, where the
              wheel's no-slip condition is a velocity constraint.

        ### Visualization
            - Holonomic: 
                - Think of a marble rolling on a smooth, fixed
                  track. The marble’s path is fully defined by
                  the track’s shape, and its position at any time
                  can be described by a simple equation.
            - Non-Holonomic: 
                - Think of a skateboard. You can control its
                  direction and speed, but its sideways movement
                  is restricted. The constraints on its motion
                  involve its direction of movement and speed,
                  not just its position.


### Definition
    - Holonomic (introduced by Heinrich Hertz in 1894 from the
      Greek "ὅλος" meaning _whole_, entire 
    - and "νόμ-ος" meaning _law_

### Watch this
    - Holonomic and Non Holonomic Systems (Ross Mcgowan)
    - https://www.youtube.com/playlist?list=PLZlHzKk21aImP_lvSUrthu9SElCM0wtnb
    - The rolling ball can only move forward, has one degree of
      freedom `x`, and it's motion can be described just as
      a function of `x` (and `t`). (although t is integrated out)
        - Also `x` is converted to a generalised coordinate `q`
        - $MY_IMAGES/maths/Ross-Mcgowan-holonomic-1.jpg


### Rolling ball
    - QUORA
        - A non-holonomic constraint is a constraint on the
          motion of a system that cannot be described by a set of
          algebraic equations. 
        - A spherical ball rolling on an inclined plane without
          slipping is an example of a non-holonomic constraint
          because the constraint on the motion of the ball is not
          described by a set of algebraic equations.
        - When a spherical ball rolls on an inclined plane
          without slipping, the constraint on its motion is that
          the ball must maintain contact with the plane at all
          times. 
        - This constraint cannot be described by a set of
          algebraic equations, as the exact path of the ball will
          depend on various factors such as the angle of the
          plane and the initial velocity of the ball. Therefore,
          the motion of a spherical ball rolling on an inclined
          plane without slipping is an example of a non-holonomic
          constraint.
    - June 2024: check this answer



### NONholonomic  system 

    - A mechanical system with constraints on their velocity that
      are _NOT DERIVABLE from position constraints_.

    - Nonholonomic systems arise, for instance, in mechanical
      systems that have rolling contact (for example, the rolling
      of wheels without slipping) or certain kinds of _sliding_
      contact (such as the sliding of skates).
        - But ChatGPT says 'rolling contact' _IS_ holonomic? 
        - GPT later: Jan 2024
            - In summary, 'rolling' contact is described as
              NONHOLONOMIC in mechanical systems because the
              constraints it imposes on the motion of the system
              involve velocities and are NOT simply reducible to
              POSITION constraints. 
            - This makes the mathematical treatment of such
              systems more challenging, as it requires
              considering the history and rate of motion, not
              just the current CONFIGURATION.


    - They are a remarkable generalization of classical
      Lagrangian and Hamiltonian systems in which one allows
      position constraints only.
        - Aside: John Bell thinks 'POSITION' is a key property of
          any system (e.g. in Bohmian mechanics) because in the
          end, the results of any experiment must show the
          position of something (e.g. a pointer on an apparatus)


### Hertz
    - Re: contact structures
    - Posted: Dec 16, 1997 3:50 PM

    > > I have two queries:
    > > The terms contact manifolds, contact structures, contact transformations
    > > are used by Geometers. What is the origin of this usage?
    >
    > Using contact transformations, one can design the shapes of teeth of
    > gearwheels so that they mesh perfectly (ie., remain in contact) while
    > each is uniformly rotating. I believe that this sort of application
    > was where these transformations first arose.
    ------------------------------------------------------------

    - This is interesting. Let me put forward some wishful
      thinking. I am currently a fan of Hertz. I believe that had
      Hertz lived, he would have provided new foundations to
      Physics.

    - Hertz started his work under Helmholtz and solved the
      'contact' problem in elasticity. This problem arose in his
      experimental work on interference fringes (Lens on a flat
      surface).

    - Hertz was the first to clearly distinguish the difference
      between 'Holonomic' and 'non-holonomic' constraints.
      Holonomic in this context is the INTEGRABILITY of
      a CONSTRAINT.

    - In fact Hertz was already aware of the so-called
      Caratheodory-Rashevsky-Chow theorem on accessibilty which
      was employed by Caratheodory in his justification of second
      law of thermodynamics. (Prinzipen der Mechanik, Leipzig,
      1894).

    - However, holonomy arises in another context (_from
      Levi-Civita's parallel transport of a vector_). 
        - Today this is referred to as Geometric phase or Berry's
          phase in Physics which seem to have deep consequences
          in quantum mechanics.

    - The fact that cyclical motion underlies every form of
      locomotion (Swimming of fish) is also explained in these
      terms.

    - Is it a pure co-incidence that we have a unit named 'Hertz'
      for 'cycles/sec'

    - My question is 'holonomy' in these two contexts seem to
      have different usages! It seems worthwhile to dig the grave
      of 'holonomy'.

    - Yes, ball rolling on a plane without slipping is the
      canonical example of a NON-HOLONOMIC system. (???)
        
    - Thanks for the information regarding the etymology of 'holonomy'.
    - Regards, Ravi


### Misc
    - In this sense we can always DISGUISE a holonomic constraint
      as a non-holonomic constraint. 
    - Given `f(q,t)=0`, just take the time derivative of this
      constraint and obtain a constraint which depends on `q'` as
      well as `q`. 
    - Thus we can think of holonomic constraints as a special
      case of non-holonomic constraints; those which are
      INTEGRABLE. (Ross McGowan, in his holonomic example, was
      able to integrate out the 't' time coord)
        - $MY_IMAGES/maths/Ross-Mcgowan-holonomic-1.jpg
    - Modulo constraints that cannot be described by equations,
      we can then write constraints generically in terms of a set
      of equations `f(q, q')=0`. 
    - For most cases of interest (including all holonomic
      constraints), we can focus on constraints that are linear
      in `q'`:
    - ```
    - X
    - i,j
    - f ij (q)q j ˙ = 0
    - ```

### Shankar Physics I

- Emphasis on problem solving and quantitative reasoning.

- Course covers:
    - Newtonian mechanics
    - Special relativity
    - Gravitation
    - Thermodynamics
    - Waves


### Contents

    01. Course Introduction and Newtonian Mechanics
    02. Vectors in Multiple Dimensions
    03. Newton's Laws of Motion
    04. Newton's Laws (cont.) and Inclined Planes
    05. Work-Energy Theorem and Law of Conservation of Energy
    06. Law of Conservation of Energy in Higher Dimensions
    07. Kepler's Laws
    08. Dynamics of Multi-body System and Conservation of Momentum
    09. Rotations Part I: Dynamics of Rigid Bodies
    10. Rotations Part II: Parallel Axis Theorem
    11. Torque
    12. Introduction to Relativity
    13. Lorentz Transformation
    14. Introduction to the Four-Vector
    15. Four-Vector in Relativity
    16. Taylor Series and Other Mathematical Concepts
    17. Simple Harmonic Motion
    18. Simple Harmonic Motion (cont.) and Intro to Waves
    19. Waves
    20. Fluid Dynamics, Statics, Bernoulli's Equation
    21. Thermodynamics
    22. Boltzmann Constant and First Law of Thermodynamics
    23. Second Law of Thermodynamics and Carnot's Engine
    24. Second Law of Thermodynamics (cont.) and Entropy



### Lecture 04

    - differential equations
        - only way to solve a differential equation is by guessing!
        - table of integrals! tabulated over hundreds of years

    - spring equation
        - want a function whose 2nd derivative is minus itself...
        `Df^2 = -f`
        - could try exponential or trigonometric functions...
        - in this case `5cos(t)` is nice

    - `F = ma`
        - the way it's applied in real life:
        - half the world working on LHS
            - the spring guys will tell you `F = -kx`
        - other people look at RHS:
            - studying the mass of various objects
        - You put BOTH sides together for Newton!


    - new forces
        - btw people always looking for new forces:
        - you find a charge on a table, its not connected to
          a spring.
        - You bring another charge next to it and it starts
          moving!
        - what do i do?
        - a body accelerating without any force?
        - is Newton wrong?
        - Or maybe theres a new force!
        - Which there is, and it turns out to be the electrical
          force.
        - so we're not finished with the LHS - still looking for
          new forces!

    - increase difficulty
        - mechanics problems in the plane
        - `F = ma` becomes vector equation.
        - its really 2 equations with
            - `Fx = m ∙ Ax`
            - `Fy = m ∙ Ay`
            - using the `i` and `j` vectors

    - solving tips
        - in newtons laws I often know EITHER
        the LHS or the RHS.
        - Either I know
        the force acting or the acceleration.

        - `N - mg = mA` but no acceleration so
        - `N - mg = 0` => N = mg

    - static friction
        - coefficient doesnt seem to depend on surface area...
          strange


### Lecture 05

    - loop the loop
        - it doesnt fall down because it already has a non-zero
          velocity in the horizontal direction.
        - A bit like Newtons cannonball around the Earth which is
          how we launch satellites

    - Work
        - start with formula for constant acceleration and
          substitute `F/m` instead of `a`
        - `∆k = k2 - k1` = work done = `∆W` = `force x ∆X`

    - Joule
        - Newton.Metre

    - But when lots of forces tugging?
        - use net FORCE or TOTAL force

    - power
        - rate at which work is done
        - Joules per second = Watts
        - ∆k/∆t = dk/dt = F.dx/dt = F.V

    - Force varies with `X`
        - e.g. spring
        - so force isn't constant
        - for some small ∆x: `∆k = F(x).∆x`

        - add them all up and you get an integral:
        - K2 - K1 = integral F(x)dx from x1 to x2
        - K2 - K1 = G(X2) - G(X1)
        - K2 - K1 = G2 - G1
        - K2 - G2 = K1 - G1
        - K2 + U2 = K1 + U1
        -      E2 = E1
        - which leads to CONVSERVATION OF ENERGY!!!

        - note: (U2 = -G2) and (G2/dx = F)


    - friction
        - why does friction not fit into this nice neat scheme?
        - i.e. why not integrate the force due to friction?
        - Because `Friction(X)` isnt a function of `X`.
        - if you push a block one way, friction acts in one
          direction, but if you push it the other way, friction
          acts in the opposite direction (at the same position x)
        - its actually a function of position AND velocity
            - (Nov 2024) So it's nonholonomic?

    - math digression
        - approximate the change in a function using the
          functions derivative
        - `ΔF = dF/dx` (at the point x) . `Δx`

    - approximate a function
        - at 0: (1 + x)^n = 1 + xn + ... if n is small
        - very useful result
        - and he uses it to show einsteins `e = mc^2`!!!

    - Taylor approximation
        - if you knew every derivative of a function at the
          origin, you could reconstruct the function!
            - as long as the sum adds up to something FINITE!

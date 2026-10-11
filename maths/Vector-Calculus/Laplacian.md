laplacian

### Point of view 1: Concavity
    - The Laplacian of a function is a multi-dimensional version
      of _CONCAVITY_.

    - In the 1D case its just the second derivative.
        - Think about the wave equation for a string: it states
          the vertical acceleration of a point on the string is
          proportional to the _CONCAVITY_ of the string at that
          point.

    - The 2D case can be visualised as a membrane (eg drum head).
        - Again there's the wave equation, which states the
          vertical acceleration of a point on the membrane is
          proportional to the _Laplacian of the membrane_ shape
          at that point: ie the sum of the concavity in _both
          directions_.

    - In 3D it's harder but it still makes sense.
        - Think about a sound field - the wave equation states
          the acceleration of the pressure at a point (second
          derivative in time) is proportional to the laplacian of
          the pressure field at that point:
            - changes in the change of the pressure in time are
              caused by 2nd order spatial changes in the
              pressure.

### Viewpoint 2: Divergence of gradient
    - After going back to it, something finally clicked. It's
      hard to put it into words why ...

    - The laplacian is simply the _FORCE_ instead of the _FLOW_
      out of each point. Or something like that.
        - (July 2019: yes I suppose force like concavity: how
          "curved" is the line)

    - I think by looking at it in general terms (divergence of
      the gradient), it's just:
        - the SUM of 2nd derivatives in EACH ORTHOGONAL direction

    - just didn't sink in until I came back to it.


### Geometrical significance of the Laplacian

    - JC Maxwell: 'A Treatise on Electricity and Magnetism'
        - 2nd Ed, volume I, page 29.

    - If, with any point `P` as centre, we draw a small _sphere_
      whose radius is `r`,

    then if:
    - `q0` = value of `q` at the centre (point `P`?),
    - `q̄`  = mean value of `q` for all points within the sphere

        `q0 − q̄ = (1\10) (r^2) (∇^2)q`

    - so the value at the centre exceeds or falls short of the
      mean value according as `(∇^2)(q)` is positive or negative.

	- I propose therefore to call `(∇^2)(q)` (del squared) the :

        > concentration of 'q' at the point 'P'

    - because it indicates the excess (or shortage) of the value
      of `q` at that point over its mean value in the
      neighbourhood of the point.

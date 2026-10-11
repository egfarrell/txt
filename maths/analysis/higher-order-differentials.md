Differentials, higher order differentials
and the derivative in the Leibnizian calculus

by Hendrik Jan Maarten Bos


# key point:
    - This Leibniz example shows that the introduction of the
      derivative in calculus was largely motivated by problems
      regarding **higher-order differentials** with respect to
      the progression of the variables.


- Early calculus was _not based on a notion of function_.
- Instead it was designed to relate geometrical variables such as
  the abscissa, ordinate, arclength, tangent, normal, etc. of
  a curve.

> "Contrary to the concept of function, the concept of variable
> does not imply dependence on a single 'independent' variable"
> (pp. 7-8).

- "[This] geometrical background ... explains why a concept of
  derivative was absent in [the early] calculus." Geometrically,
  "the derivative `dy/dx` occurs only as the ratio of the
  ordinate to the subtangent.

- This ratio has no obvious central position in the configuration
  and its choice as fundamental would therefore be very
  arbitrary." (pp. 10-11)

- "But there is still another reason why the derivative could not
  occur naturally in the geometrical context, and this is
  connected with the dimensional interpretation of geometrical
  quantities" (p. 11), namely the fact that the derivative is
  a ratio of lengths and therefore dimensionless and without
  immediate geometrical meaning.

Representing dimensionless quantities geometrically requires an
arbitrary choice of unit length, alien to the figure, "which infringes
on the generality of the treatment, and also dimensional homogeneity
assures natural geometrical interpretation of every step in the
algebraical analysis and thus it provides a useful check on
complicated calculations." (p. 10)

> The absence of a fixed "independent variable" made the early
> calculus very flexible and powerful.

To take x as an independent variable means to take it to grow
uniformly, i.e. that all the dx's are equal, or ddx=0, whereas in
Leibniz's calculus one can choose the dx's in whatever way is most
convenient for the problem at hand (e.g. one might specify the dx's by
the condition that ydx=constant). Indeed, Leibniz took this to be one
of the main differences compared to previous infinitesimal methods: "I
denote the area of a figure in my calculus thus: [integral of] ydx or
the sum of all the rectangles formed by the product of each y and its
corresponding dx. Whereby if the x are supposed constant, one has
Cavalieri's method of indivisibles."

"And this indeed is one of the advantages of my calculus ... for in
this way I can make dx explicit and I can transform the given
quadrature into others in an infinity of ways, and thus find the one
by means of the other." (p. 104)

However, this flexible notion of differentials also creates problems.
One example is the confusion that arose when Leibniz and Huygens
expressed the same assumption regarding motion in a resisting medium
as dv=vds and dv=v^2dt respectively. Whereas Leibniz considered the
decrease in velocity for a given element of space (i.e. he assumed
dds=0), Huygens considered the decrease in velocity for a given
element of time (ddt=0). Thus expressions such as "the resistance is
proportional to the velocity" are ambiguous.

> But the main problem occurs when it comes to higher-order
> differentials.

First-order differentials such as `d(arctan(x))=dx/(1+x^2)` hold no
matter how dx is chosen (p. 37), but "higher order differential
equations of the same curve, but applying with respect to different
progressions of the variables will differ considerable" (p. 39).

This corresponds to the fact that the second derivative involves the
difference of the derivatives over two consecutive dx intervals.

This is illustrated by the variety of formulas for the radius of
curvature of a curves derived at the time (pp. 47-55). The common
formula is the one corresponding to ddx=0 but many equivalent formulas
were derived, e.g. one corresponding to dds=0 (p. 51). It is even
possible to formulate a more general formula which makes no assumption
regarding the progression of the variables (p. 52), from which the
other formulas can be derived by setting ddx=0 etc. Indeed, Johann
Bernoulli called for finding such "complete" formulas, posing the
general problem: "To render incomplete differential equations of
arbitrary degree complete, that is, to transform them into others, in
which no differential has to be supposed constant." (p. 57)

Since higher-order differentials depend on the progression of the
variables whereas first-order differentials do not, Leibniz preferred
to avoid higher-order differentials whenever possible. For example, he
managed to find an expression for the radius of curvature which did
not involve higher-order differentials by expressing it in terms of
dy/dx and replacing these expressions by expressions in y and x by
solving for dy/dx in the differential equation of the curve (p. 54).

This example from Leibniz illustrates the important general point that
the introduction of the derivative in calculus was largely motivated
by the problems and ambiguities regarding **higher-order
differentials** with respect to the progression of the variables.

Indeed, Euler explicitly set out to "indicate a method by which second
and higher differentials can always be eliminated" (p. 92) in
precisely this way.

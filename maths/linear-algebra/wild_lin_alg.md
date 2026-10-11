### wildeberger view
    - its all about change of coordinates
    - whereas lots of courses just approach it as systems of
      linear equations

### two approaches
	- coordinates expressed in terms of each other
	y1 = 5x1 + 2x2,
	y2 = 3x1 + 4x2

	systems of linear equations
	4x -  y = 15
	3x + 2y = 9

### affine geometry
	- straight edge and the notion of parallel only?
    - yes - see Maudlin - affine is about straight lines.
	- no notion of distance or angle?
	- (because skew and shear transformations allowed)

### vector interpretation
	- 2 ways of interpreting a vector
	- a geometric line segment
	- or an ordered pair of numbers (algebraic)

### subdivide affine plane
	- each segment can be subdivided into n equal pieces
	- so each vector component can be a rational number

### resizing a vector
	- geometric resizing of a vector (3 times as big etc)
	- corresponds to the arithmetic of multiplying the components by 3

### the determinant appears
	- pair of simulataneous equations
	- multiply by a factor a or d, and subtract one equation from the other
	- by doing this multiplicaiton you get a coffefficent which is the determinant

### affine combination
    - (encountered this years later in "coding the matrix"!)
    - its a line parameterised by lambda + 2 vectors `a` and `b`
    - where the coefficients of `a` and `b` add up to 1

### center of mass
	- reformulate archimedes fulcrum principle
	- using vectors shooting out from centre of mass

### bivector
    - THE WEDGE!!!!!
    - invented by Grassman
    - a single vector is a directed LINE segment
    - a bivector is a directed PLANE segment 
        - made up of two vectors, (a ∧ b)

trivector
	a directed SPACE segment

upside down wedge
	nj likes to have wedge as "v"
	whereas mathematicians normally write it "∧"

torque
	its the AREA formed from the cross-product or wedge of r and f
    r ∧ f
	which is crucial

angular momentum
	represented by a bivector aswell
	the area of (radius) wedge (linear moment)
	represents the angular momentum
	rather than the individual vectors r and p

areas
	bivectors allow us to think of areas purely algebraically

determinant - new insight!!!
	determinant of (a ∧ b) is the multiple
	that (a ∧ b) is
	of the basis wedge (e1 ∧ e2)

area
	is a relative concept in affine geometry
	it is relative to the basis vector you used to map out an affine grid
	also area can be negative
	so we refer to the signed area

ratios of areas
	are invariant in affine geometry!

determinant zero
	method fails.
    Cannot express one set of coordinates in terms of the other?

two interpretations
	the same set of linear equations can be interpreted in 2 different ways
	as the intersection of a pair of lines
	as a possible combination of two vectors to give a third vector.

determinant zero (again)
	one interpretation: the two lines are parallel
	another interpretation: the two vectors are multiples of each other

matrices
	originally: book-keeping device to keep track of changes of coordinates

matrix multiplication
	the rule for multiplying matrices is forced on us by
	what was worked out when CHANGING VARIABLES
	when solving linear equations
    (see John Derbyshire - Unknown Quantity p. 172)

abstract column vectors
	one person could view the column vector (2,3) using basis vectors e1, e2
	another person could view the same abstract column vector in a different basis
	in each case, the maniuplation of the vectors is the same but the underlying
	geometrical picture is different

important determinant theorm
	det(AB) = det(A)det(B)

one by one matrix
	A = (a)
	AB = BA !!! This is for one-by-one matrices only!

inverse law
	det(A) not zero:
	Then we can invert the matrix A
	AB = BA = I

3 by 3 transformations
identity
	1 0 0
	0 1 0
	0 0 1

scale (dilation)
	λ 0 0
	0 λ 0
	0 0 λ  makes vector bigger if (λ > 1) etc

mixed dilation
	λ1 0  0
	0  λ2 0
	0  0  λ3

reflection in xy plane (PLANE)
	1 0  0
	0 1  0
	0 0 -1  Get it!? x and y stay the same, the z coord is flipped

reflection in y axis (LINE)
	-1 0  0
	0  1  0
	0  0 -1  only y stays the same

project onto xy plane
	1  0  0 |x| = |x|
	0  1  0 |y| = |y|
	0  0  0 |z| = |0|
    z co-ordinate gets zapped. Same as projecting onto xy plane

project onto z AXIS
	0  0  0 |x| = |0|
	0  0  0 |y| = |0|
	0  0  1 |z| = |z| x and y get zapped

Project matrices
	when you square a projection matrix
	you get the same matrix back
	think about it: the first projection whacks it down onto a plane
	so when you project again, youre already on the plane

eigenvectors intro
	change of basis vectors -
        Rachael's basis vectors,
        Bob's basis vectors
	change of linear transformation matrices

looks simpler
	a given linear transformation looks simpler
	in one framework compared to another
	a diagonal matrix is particularly easy to visualise
	its just stretching each coordinate by the amount
	on the diagonal

similar matrices
	A ~ B
	if A = CBC^-1
	the notion of "similarity" is an equivalence relation -
        symmetric,  A ~ B ⇔ B ~ A
        transitive, A ~ B, B ~ E ⇔ A ~ E
        reflexive,  A ~ A, IAI^-1

generalised dilation
	A is a transformation that in some basis looks like a diagonal matrix
	A = CDC^-1
	for some diagonal matrix D,
	for some change of basis matrix C

how to tell
	if A is a (generalised dilation) or (DIAGONALIZABLE)
	this is a very important problem in linear algebra
	with all kinds of applications

sympy tips

# Packages using sympy
    - diffgeom
    - GraviPy - Tensor Calculus Package for GR
    - GRPy - small symbolic GR package based on sympy
    - PyDy - python dynamics
    - physics.mechanics

# view latex from terminal/console
    (if library "GLU" not found: )
        ai libglu1-mesa-dev (this is dangerous!! on ubuntu 14.04, 16.04?)
    ai dvipng
    pip install pyglet
    preview ('$$ \int_0^{\pi} \sin(x) dx $$')

    # load in ipython config
    # Format latex displays (for Sympy's "preview"):
    from sympy import preview
    preamble = "\\documentclass[varwidth=\\maxdimen]{standalone} \\usepackage{amsmath,amsfonts} \\begin{document} \\Huge\\bigskip\\bigskip"
    preview('$$' + latex(some_expression) + '$$', preamble=preamble, viewer='viewnior')



# basic imports I need?
    import sympy as sp
    sp.init_printing()
    x, y, z = sp.symbols('x,y,z')
    from sympy import preview
    from sympy import latex

# Define functions
    # declare function variables? (from astro example)
    f, g, h = symbols('f g h', cls=Function)

    # 'sympy.Function' is for undefined functions. Eg:
    f = Function('f')
    # then f(x) remains unevaluated in expressions.

    # If you want an actual function
    # (eg f(1) evaluates x**2 + 1 at x=1)
    # you can use a Python function:

    def f(x):
        return x**2 + 1

    # Then you get a symbolic 'x**2 + 1' from:
    f(Symbol('x'))

    # and you get '2' from:
    f(1)

    # Or you can assign the expression to a variable
    f = x**2 + 1

    # If you want to substitute 'x' for a value, use 'subs':
    f.subs(x, 1)


# install on android (via gnuroot debian):
    sudo apt-get install python-sympy --no-install-recommends

# evaluate an expression
    - A common new user question is "how do I evaluate an expression?"
    - the answer is "doit()"
    - Sahas approach avoids this question by showing doit() from the outset.

# asmeurer recommends
    if (x + 5).is_positive ...
    # rather than:
        if (x + 5) > 0

# AVOID the following letters
    - Q, C, O, S, I, N, E

    'Q' - ask(Q.prime(7)) ... "ask keys"
    'C' - class registry "C.Naturals", "C.Rational"
    'O' - "big oh", behaviour of function as it goes to a limit
    'I' - Square root -1
    'N' - same as ".evalf()"
    'E' - e = 2.7128


# exp and log
    - by default sympy assumes input to 'exp' and 'log' are COMPLEX numbers

# equality checking
    simplify(expr1 - expr2) == 0
    # because all possible simplifications will be
    # tried when comparing the expressions

# solve
    returns a _LIST_ of solutions

# equation Eq
    Eq(100500*x - 2*y)
    implicitly defines:
        100500*x - 2*y == 0

# CAS systems
    are good for two things:
    1. integrals
    2. book-keeping (equation with 1000 terms and track minus signs)

# integrate
    - sympy may give you back a "special function" e.g. elliptic.e
    - sympy has a lot of "special functions" that it returns for integration
    - because its better to have some sort of closed form expression and get
      a numerical value for that,
    - than doing quadrature on some complicated expression.

# assumptions
    V, r = symbols('V,r', real=True, positive=True)

# substitute
    (x**2).subs({x: 10, 2: 3})

# solve
    - expects an expression that is implicitly
      set equal to zero.
    - solve returns a LIST!

# plotting
    # sympy story: use other plotting libraries!
    plot(x**2)
    textplot(x**2)

# shortcut
    sympify('x**2 - 2')
    S('x**2 - 2')

# immutable
    - most expressions are immutable if you do a "subs" or "simplify"
    - apparently theres one exception in the matrices.

# are two things mathematically equal?
    simplify(a-b)

# (symbols) v (python variables)
    two different things!
    python variable = symbol('symbol name')
    a = symbols('x')

# run sympy repo EXAMPLES
    - (needs to find anaconda)
    - export $PYTHONPATH = $PATH

# pretty printing
    from sympy import init_printing
    from sympy import *
    init_printing()
    from pysamples guy:
        init_printing(use_unicode=True)

    # from official docs
        from sympy import init_session
        init_session()

# Links
    - sympy programmer:                       http://www.theoretical-physics.net/dev/intro.html
    -  2017 tutorial                          https://www.youtube.com/watch?v=nfRyux3wEhw
    -  dot products:                          http://stackoverflow.com/questions/22126133/how-to-do-dot-cross-multiplication-of-vectors-with-sympy
    -  Variational Calculus:                  https://groups.google.com/forum/#!topic/sympy/cvOjJdEWprM
    -  euler-lagrange:                        https://github.com/sympy/sympy/pull/2431
    -  guy who did sympy variational:         http://stackoverflow.com/users/832621/saullo-castro
    -  skirpichev sympy clone fork :          https://github.com/diofant/diofant
    - Linear algebra with Sympy Prof. Klopper https://www.youtube.com/watch?v=MBhPaqKRehg&list=PLsu0TcgLDUiIpNUmKGsZhzdmXBTpJHKB0





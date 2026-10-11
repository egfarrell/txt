linear functions / linear maps

### "linear" is:
        1. polynomial of degree 0 or 1
        2. a "LINEAR MAP"

### Question:
    - Hi Kalid, I couldn’t figure out why `F(x) = x + 3` is not
      linear. After all, `y=x + 3` is a straight line meeting the
      y axis at (0,3), and a slope of 1. This definition of
      a straight line (i.e. linear) is different from the
      definition of ‘linear’ you gave. Am I missing something
      here?

### Kalid says:
    - Great question. The term “linear function” actually refers
      to two _separate_ (but related) concepts.
    - See: https://en.wikipedia.org/wiki/Linear_function

    1) A polynomial of degree 0 or 1,
            i.e. `f(x) = ax + b`

    2)  a "LINEAR MAP", meaning a function with properties:
            - scaling the inputs scales the outputs,
                - `f(c*a) = c*f(a)`
            - and adding the inputs adds the outputs,
                - `f(a + b) = f(a) + f(b).`

    - The function `f(x) = x + 3` meets the first definition
      (polynomial of degree 1), and is a straight line when
      drawn. But it doesn’t have the linear input/output
      relationship. For example:
        - f(1) = 4, but
        - f(2) = 5
    - We doubled the input, but didn't double the input.

    - The main reason a line is not “linear” (in the linear map
      sense) is because of that `+ b` term, which is `+ 3` in our
      case. That `+ 3` is unchanging, no matter how the input
      changes.

    - The two meanings are easily-confused. Linear algebra deals
      with functions that are _linear maps_.

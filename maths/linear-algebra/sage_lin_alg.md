sage linear algebra
(Hefferon and Beezer)


# parents and base_rings 
    C = matrix(2, 3, [[1, sin(2.2), 3], [4, 5, 6]])
    C.parent()
    C.base_ring()


# singular matrix - two types
    1. singular matrix - INFINITE solutions 
        M:  [1 1 1]
            [1 2 3]
            [2 3 4]
        v: (0, 1, 1)
        Reason: 
        first 2 rows add to 3rd row, 
        for both 'M' and and 'v'

        3rd row all zeros
        [ 1  0 -1|-1]
        [ 0  1  2| 1]
        [ 0  0  0| 0] <------------------

    2. singular matrix - NO solutions 
        M:  [1 1 1]
            [1 2 3]
            [2 3 4]
        v: (0, 1, 2)
        Reason:
        'M': first 2 rows add to 3rd row 
        'v': first 2 elements(rows) DO NOT add to 3rd element

        3rd row: zeros on left, NON-ZERO on right
        [ 1  0 -1| 0]
        [ 0  1  2| 0]
        [ 0  0  0| 1] <------------------


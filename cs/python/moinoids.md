moinoids

# key point:
    moinoids are just the type of object 
    you need when doing MAP/REDUCE!

    Moinoids capture the idea of FUNCTION COMPOSITION within a set!

# moinoids need 3 properties:
    * closure:        "chain jobs"
    * identity:       "simplify jobs"
    * Associativity:  "split jobs"

# a moinoid is:
    both a function and a type

    closure: (chain jobs) 
    --------
        takes (type X) and returns (type X)
            1   + 2     = 3
            int + int   = int

            "hello" + " world"  = "hello world"
            string  + string    = string

            object oriented!
            shopping_cart_items.add_items(other_shopping_cart) = more_shopping_cart_items 

        example - no closure!!
            5/2     = 2.5
            int/int = float

        means we can CHAIN operators together very easily!
            1 + 2 + 3 + 4 = 10
            connect_string = "http" + "://" + "...."
            if x==true or y==true: ...


    identity: (simplify jobs) 
    ---------
        we need a concept of nothing!
            something like 0 for addition 
            (or 1 for multiplication) 

        or from a CS point-of-view:
            something we give to our function,
            in addition to a "real" argument,
            that will always give us back the same
            "real" argument

        set of booleans
            x AND true  = x

        multiplication
            x * 1       = x

        set intersection: FAILS - NO IDENTITY!
            set1 ∩ set2 = set3
            gives you a new set! (set3) 
            not the same set back
            so not a moinoid

        why do we care about having an identity?
            in this example we set STARTING_VALUE = true

            check_list = [true, true, true] 

            def all_true (boolean_list) 
                running_value = STARTING_VALUE #(true) 
                for current in boolean_list:
                    running_value = running_value AND current
                return running_value

            print all_true (check_list) 


    Associativity: (split jobs) 
    --------------
        I can group the function however I want 
            2 + (3+4) = (2+3) + 4  

        this fails:
            2/3/4 != 2/(3/4) 

        why do we care about Associativity?
            HUGE jobs can be split into SMALLER ones
                count words in a book:
                    make it smaller - count 1 page at a time
                    make it parallel - you count page 1, I count page 2
                    make it incremental - count 5 pages today, count page 6 tomorrow
        
        
Why are these properties of moinoids useful?
    handy for REDUCE operations
        # add all numbers between 1 and 101
        reduce(lambda x, y: x + y, range(1,101))
        
    so now a more real-world problem:
        sum all the prices in our shopping cart
        we have a list of prices (floats) = [1.22, 3.60, 5.78]  

        rule 1: closure
            1.22 + 3.60 + 5.78

        rule 2: identity 
            distribute the task over some servers
            server 1: 1.22 + 3.60
            5.78 + 0.00 
            (0.00 is a dummy identity value, but needed to distribute on a server) 

            usually the reduce LIBRARY would handle low-level
            details like which server gets which values

        rule 3: Associativity
            ((1.22 + 3.60) + 5.78) 


But we have a list of shopping carts,
not a list of floats!!

So transform our (shopping cart) objects 
into MOINOIDS (floats) using the MAP function!!!!

see my example python: map_reduce.py


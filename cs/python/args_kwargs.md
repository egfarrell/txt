args kwargs

`def my_test(*args):`
    Because we have a `*` prefix on the args variable, all
    arguments are stored in `args` as a _tuple_. 

`def my_test2(**kwargs):`
    If a `**` prefix is used, the extra parameters are
    considered to be _key/value_ pairs of a _dictionary_.

handy tip
    'single star' syntax
    means don't allow any positional arguments beyond this point...
        `def total(a, b, *, mykey=None).`
                        /|\
                         |
                         |
        no postional -----
        beyond here



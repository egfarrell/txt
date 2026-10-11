pdbpp debugging

# debugging over loops
    keep executing "unt(il)"

# pdbpp for PYTHON 3
    # update Apr 2017. Works now:
       pip install pdbpp
    
    # Old: "pip install pdbpp" doesnt work for anaconda and python 3
        # method 1:
            export PYTHONPATH="$HOME/python_libs"
            copy "pdb.py" into "$HOME/python_libs"
            (get "pdb.py" from bitbucket repo (mercurial))
        # method 2:
            # download bitbucket mercurial repo
            pip install pdbpp
            # [crashes with error]
            # copy folder:
                _pdbpp_path_hack/
            # to:
                /$HOME/anaconda/envs/py3/lib/python3.4/site-packages

# Important Commands
    - repeat last cmd                 <Enter>
    - step over functions             (n)ext
    - step INTO functions             (s)tep into
    - jump out of function            (r)eturn
    - jump out of a loop              (unt)il
    - Set next line to be executed    (j)ump {line number}

    - list source code                l (list)
    - list current function           ll (long list)
    - frame stack                     w (where)
    - function arguments              a (args)
    - print                           p
    - pretty print                    pp
    - walk up a framestack            u (up)
    - walk down the framestack        d (down)
    - watch a variable                display [varible name]

# Breakpoint commands
    - list breakpoints            (b)reak
    - set line breakpoint         (b)reak [lineno]
    - set function breakpoint     (b)reak [function name]
    - set one-time breakpoint     tbreak [lineno]
    - disable a breakpoint        disable [lineno]
    - delete a breakpoint         (cl)ear [lineno]

# colorise prompt
    site packages -> debugger.py
    prompt = '\x1b[31mipdb> \x1b[0m'

# auto pretty print variable
    just type its name

# installation:
    pip install ipdb

# config
    ~/.pdbrc (many useful aliases)

# list
    if you keep pressing "l" it will scroll down
    through the source code, i.e. it wont
    stay centred around your current position

# command line
    # python 2x
        ipdb [script.py] [args]
    # python 3x
        ipdb3 [script.py] [args]

# Embed ipdb
    import ipdb; ipdb.set_trace()
    ultisnips:
        ipdb

# breakpoints
    A little know feature of pdb is that breakpoints can
    execute other debugger statements or even python code.
    So you can make a breakpoint print out some useful info
    and then continue.

    (Pdb) commands 1
    (com) p some_variable
    (com) continue

    prints the value of "some_variable" every time
    breakpoint "1" is executed.

# pdb
    run -d [module]
    invoke debugger right at start of module. c is continue

# Advanced commands
    commands    define commands to be executed at breakpoint
    jump        alter program flow without code change
    run         restart program from beginning
    debug       recursively invoke debugger using expression

# debug
    invokes debugger in current namespace

# Invoke pdb
    * script mode       python -m pdb buggy.py
    * postmortem mode
    * run mode
    * trace mode

# xmode plain
    Normal eXception mode reporting

# xmode verbose
    Shows source code and function arguments (very useful)

# manual intervention
    change current value of a variable
    e.g. divisor = 2

# evaluate expressions
    can evaluate a valid python expression
    from within a debug session
    but wont impact current variables
    its evaluated in a separate context


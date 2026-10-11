
Note: code snippets at bottom

### SHOW PLOTS from ipython COMMAND LINE!
    %matplotlib qt
    %matplotlib tk  # if qt not installed
    %matplotlib gtk # if qt not installed

### Show config locations!
    jupyter --paths
    jupyter --data-dir
    jupyter --version
    `Create default config / profile`:
        jupyter notebook --generate-config

# Turn off / disable all security authentication??
    v $HOME/.jupyter/jupyter_notebook_config.py
    c.NotebookApp.token = ''
    c.NotebookApp.password = ''


# jupyter notebook execute keys
    - Enter             create new line
    - Shift + Enter     execute cell and go (shift) to next cell
    - Alt   + Enter     execute cell and add (alt) a new empty cell after it
    - Ctrl  + Enter     quick experiments, output not saved, stays in cell
    - <shfit+tab>       inside function brackets, will show function arguments


### Embed image in notebook
    from IPython.display import display, Image
    path1 = "/path/to/img.jpg"
    img = Image(path1)
    display(img)

### Handy Vimscript
    - Convert 'ipynb' to '.py': (bash alias)
        - jup-conv *.py
    - Tidy up:
        - use my vim function: JupyterNotebookTidy()

### Access jupyter from Digital Ocean droplet
    - REMOTE: set password:
            jupyter notebook password

    - REMOTE: run notebook
            jupyter notebook --allow-root --no-browser --port=8888
            > (alias: jup-remote-start)

    - LOCAL:
            ssh -N -f -L localhost:8888:localhost:8888 do
            > ( alias: jup-local-tunnel do)

    - LOCAL Firefox:
            localhost:8888
            > (alias: "jup")

### Missing cell output
    - if stuff not displaying then click "File - _TRUST Notebook_"

### Volia
    - only display markdown, widgets + outputs of notebook
    - (user can only interact with the widgets)
    - use binder.org to publicly lanunch the app

### trick: attach qtconsole to current notebook....
    - then run individual one line commands!
    - So you don't have loads of individual test cells!


### increase cell size - in current notebook only
    from IPython.core.display import display, HTML
    display(HTML("<style>.container { width:90% !important; }</style>"))

### fastai jupyter notebook tip
    - get rich help "doc"
    - `doc(path.ls)`


### rebind keys?
    - inside ~/.jupyter/nbconfig
    - have a file called: "notebook.json"

    {
      "Notebook": {
        "Toolbar": true,
        "Header": false
      },
      "keys": {
        "command": {
          "unbind": [
            "0,0",
            "R"
          ],
          "bind": {
            "Ctrl-Space": "jupyter-notebook:show-command-palette",
            "R": "jupyter-notebook:run-cell-and-select-next",
            "0,0": "jupyter-notebook:confirm-restart-kernel-and-clear-output",
            "Ctrl-e": "jupyter-notebook:enter-edit-mode"
          }
        },
        "edit": {
          "bind": {
            "Ctrl-g": "jupyter-notebook:enter-command-mode"
          }
        }
      }
    }


### CoCalc: get normal juptyer notebook
    - Choose "plain jupyter" in project settings
    - or when already in notebook - choose "classic notebook"

### CoCalc: Show docstring in "Modern" Notebook
    mymodule.myfunc? [press ctrl+Enter, shift+Enter etc]

### run pyspark from jupyter
    https://github.com/jupyter-incubator/sparkmagic

### show version
    import IPython
    IPython.version_info

### handy:
    - https://github.com/jupyter/jupyter/wiki/A-gallery-of-interesting-Jupyter-Notebooks
    - mybinder http://mybinder.org/
    - %env
    - %run ./another-notebook.ipynb
    - %load ./my_code.py
    - %%writefile pythoncode.py
    - %pycat pythoncode.py
    - supress output: add semi-colon ;
    - %%latex
    - %%bash

    - R kernel
        > conda install -c r r-essentials

    - R mixed python/R code
        > conda install -c r rpy2
        - %load_ext rpy2.ipython
            %R require(ggplot2)

    - powerpoint presentation:
        conda install -c damianavila82 rise
        pip install RISE
        jupyter-nbextension install rise --py --sys-prefix
        jupyter-nbextension enable rise --py --sys-prefix




### pretty printing
    - By finishing a Jupyter cell with the name of a variable or
      unassigned output of a statement, Jupyter will display that
      variable without the need for a print statement. This is
      especially useful when dealing with Pandas DataFrames, as
      the output is neatly formatted into a table.

    - What is known less, is that you can alter a modify the
      ast_note_interactivity kernel option to make jupyter do
      this for any variable or statement on it’s own line, so you
      can see the value of multiple statements at once.

    > from IPython.core.interactiveshell import InteractiveShell
    > InteractiveShell.ast_node_interactivity = "all"


### list of all notebook keyboard commands
    https://github.com/jupyter/notebook/blob/179bb24fbf79d153812858126127a91431da3319/notebook/static/notebook/js/keyboardmanager.js

### just run notebooks from one folder
    c.NotebookApp.notebook_dir = u'/home/ef/notebooks'

### Run vpython:
    pip install vpython --upgrade
    then:
        "new workbook" - type: "vpython"
    in cell:
        %run Bounce.py
    to run new simulation:
        "Kernel" - "Restart and clear outputs"

### quickly run a remote note-book
    - ssh into remote machine, type 'jup'
    - set firefox into *proxy* mode, under 'advanced-network' settings
    - create firefox proxy tunnel: 'tun sc'


# Notebook themes / styles
    - DOESNT WORK NOW FOR JUPYTER NOTEBOOK/LAB 7
    - https://jupyter-notebook.readthedocs.io/en/latest/migrating/custom-themes.html
    - See: https://github.com/topics/jupyterlab-theme
    - pip install jupyterlab_theme_solarized_dark
    - pip install catppuccin-jupyterlab

    pip install jupyterthemes
    https://github.com/dunovank/jupyter-themes

    My favourite:
        jt  -t grade3   -altp  -fs 9 -nfs 10 -tfs 13  -ofs 13   -cursc o  -cursw 2  -cellw 60%

    option      option      desc
    ----------------------------------------------
    -h          -           Usage help
    -l          -           List Themes
    -t          -           Theme Name to Install
    -f          -           Code Font
    -fs         11          Code Font size
    -nf         -           Notebook Font
    -nfs        13          Notebook Font Size
    -tf                     Text/MD Cell Font
    -tfs        13          Text/MD Cell Fontsize
    -dfs        9           Pandas DF Fontsize
    -ofs        8.5         Output Area Fontsize
    -m          auto        Intro Page Margins
    -cellw      980         Cell Width
    -lineh      170         Line Height
    -cursw      2           Cursor Width
    -cursc                  Cursor Color
    -altp                   Alt Prompt Layout
    -vim                    Style Vim NBExt
    -T                      Toolbar Visible
    -N                      Name & Logo Visible
    -r                      Reset Default Theme
    -dfonts                 Force Default Fonts

    Available Themes:
    - chesterish
    - grade3
    - monokai
    - oceans16
    - onedork
    - solarizedd
    - solarizedl

### Custom Theme Style / Colour:
    copy "custom.css" to:
        $HOME/.jupyter/custom/

    tweak for _WOLFRAM_ jupyter notebook:
        $HOME/.jupyter/custom/custom.css

        /* resize images */
        .container img {
            width: 80%;
            height: auto;
        }

    for _SAGE_ jupyter notebook:
        - think it reads here: $HOME/.sage/jupyter-4.1/custom/
        cpr ~/.jupyter/custom/*  ~/.sage/jupyter-4.1/custom/

    debugging:
        curl 'http://localhost:8888/custom/custom.css'


# iPad problem solution (Apr 2017):
    - on remote VM, run jupyter notebook
    - activate VPN on ipad (for remote VM)
    - on Safari, navigate to http://xxx.xxx.xxx.xxx:8888
    - your notebook will display
    - note: no need to setup security certificate etc

# iPad problem (summer 2016 Berlin):
    you can't remotely access the jupyter notebook unless
    you have a CERT issued by a "certificate authority"
    thats installed as a profile on the iPad. Complicated!
    Basically you've to setup your own CA.

    See discussion:
        https://github.com/jupyter/notebook/issues/1421

    I tried to setup my own CA:
        http://acidx.net/wordpress/2012/09/creating-a-certification-authority-and-a-server-certificate-on-ubuntu/

# create public server
    jupyter notebook --generate-config
    # run ipython:
        from notebook.auth import passwd
        passwd()
            # paste generated password into config file:
            c.NotebookApp.password = u'sha1:...'


    # create ssl key
    openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout mykey.key -out mycert.pem

    # in config file
    > c.NotebookApp.certfile = u'/absolute/path/.jupyter/mycert.pem'
    > c.NotebookApp.keyfile = u'/absolute/path/.jupyter/mykey.key'
    > c.NotebookApp.ip = '*'
    > c.NotebookApp.open_browser = False


# ipython-tips

### ipython 8.x (prob with vim slime)
    - new auto-complete functionality messess with vim pasting
        - set this to TRUE inside $HOME/.ipython/profile_default/ipython_config.py
        c.TerminalInteractiveShell.simple_prompt = True
    -   or else use an old iPython 7.x config

# run ipython.exe in mintty/cygwin/GIT BASH!!!!!!
    winpty ipython.exe

# sympy latex preview
    # make the font large
    # file: preview.py
    # .../site-packages/sympy/printing

        preamble = r"""\documentclass[12pt]{article}
        ...
        \begin{document}
        \Large   <-------------- add this
        """

# set default startup folder
    in ../profile_default/ipython_config.py
    import os
    os.chdir('C:\\Users\\...repos\\study\\code')


# colourise terminal output
    # Set the color scheme (NoColor, Linux, or LightBG).
    c.TerminalInteractiveShell.colors = 'Linux'
    # c.TerminalInteractiveShell.colors = 'NoColor'

# history show line numbers
    hist -n

# attach terminal to running notebook
    # ipython console
    # for more help:
        ipython console -h

# show all local variables VALUES!
    whos

# my dark profile
    # "static" folder inside:
        "/home/ef/.ipython/profile_dark"

    # Have it as a git repo:
        git@github.com:egf25/ipython-static.git

# notebook convert
    ipython nbconvert --to python {somefile.ipynb}

# get sourcecode from web
    loadpy {URL}

# auto create script! good tip!
    # start notebook with '--script' flag will save a '.py'
    # file alongside '.ipynb' on every save.

# have nice equation printing in the ipython terminal
    from sympy import *
    init_printing()

# show package methods/attributes
    dir(atpy)

# Source Code info
    pycat <filename>
        display file with python syntax colouring

    # pydef
        import re
        pdef re.match

    # show function docstring
        pdoc re.match

    # same as re.match?
        pinfo re.match

    # outputs source code
        psource re.match

    # displays file where "re.match" is defined
        pfile re.match

# store
    # create and save macros/aliases
        > In [4]: plt.show()
        > macro ps _i4
        > store ps

    # delete stored macro
        store -d somevariable

    # persist macros/aliases
        "store -r" to recover them for another session
        or
            # ipython_config.py
            c.StoreMagics.autorestore = True

        # they are kept in file:
            /$HOME/.ipython/profile_default/db/stored_aliases

    # delete alias
        unalias <name>

    # define alias
            alias test echo %s
            store test
        # or
            ipython_config.py:
            c.AliasManager.user_aliases = [ ('test', 'echo %s') ]

# where is profile file?
    ipython locate
    ipython --profile=sympy
    ipython profile create <name>

# reload a changed module
    foo = reload(foo)

# delete single variable
    del fig1

# what command did I paste last
    print pasted_block

# show current sys path
    import sys
    sys.path

# '%doctest_mode'
    # magic command, makes it easier to copy and paste lines
    # ignores the ">>>" of the prompt

# sympyprinting
    puts latex printing on top of sympy

# bookmarks
    # give 'cwd' a nickname
    bookmark <nickname>

    # list all current bookmarks
    bookmark -l

# Run code
    run [MODULE NAME]       executes the named module
    run -p                  run with profiler
    run -d                  run with debugger

# Deeper info
    lsmagic??
    shows deeper info on the command
    including source code

page sys.path
    # prints using "pprint" (pretty print)
    # to get a neater look

# Function shortcuts
    some_func 3, 4          short for some_func(3, 4)
    /some_func              short for some_func()
    ,some_func 3 4          short for some_func("3", "4")
    ;some_func 3 4          short for some_func("3 4")

# Help
    /help
    call "pydocs" Python documentation system (q to quit)

    help(sys)
    show help on "sys" module (if imported)

    help('for')
    show help on "for" command

    help('topics')
    display list of topics for which help is available

edit -x re.match
    open file containing "re.match" in gedit
    iPython finds the file location!

# Navigation
    pushd,popd  push/pop directory onto stack
    dirs        lists directories on stack
    dhist       directory history
    cd -3       change to 3rd directory in "dhist"

# Bash
    > !               execute bash command
    > patt = '*.py'   define pattern
    > !ls -l $patt    list files matching pattern!

# content listing
    lf      list files only
    ldir    list directories only

# recent commands
    > _i         1 command back
    > _iii       3 commands back
    > exec _i    executes a nominated input command series
    > hist       show last 20 commands, eg hist 1 10 (commands 1:10).
    > hist -r    hide magic command wrappers - just show what was actually typed.

# edit recent commands
    > edit 1:5
    opens lines 1 to 5 in the text editor,
    where a single can be specified as
    > _i163  (for line 163)

    > save file1 1:5
    saves indicated lines to file1.py

    > cpaste
    for pasting in code blocks, type -- to end

    > myfunc();
    supress output from a function. Handy if a function dumps out a lot of junk.

# Timing
    # Coarse - Shows how much user and cpu time it took
    time sum(range(10000))

    # Fine - For very short commands. (Runs multiple times
    # to give average milliseconds.)
    timeit sum(range(100))

# Profiling
    prun zopedocs()     Profiles FUNCTIONS. Lots of info.
    prun -l math        limit (in this case) to MATH
    run -p walker.py    Profiles FILES.
    note: from travis:
    prun only looks in python files, not in cython, compiled c files etc
    also: runsnakerun is a graphical profiler

# Background jobs
    bg gofetch()
    # runs gofetch() function in background
    # A job number will be printed

    job[#].status
    # Check if job is finished
    # (ie should return 'Completed')

    job[#].result
    # Show what came back

# Learning iPython for interactive computing

    # install development ipython
        git clone https://github.com/ipython/ipython.git
        cd ipython
        python setup.py install

        # to update easily using "git pull"
        # as dev branch changes:
            python setupegg.py develop

    # output history
        > _
        > __
        > ___
        > _n

    # input history
        > _i
        > _ii
        > _iii
        > _in

    # scripts and namespace
        A script is executed in a fresh new Python namespace
        unless the -i option is used, in which case the
        current interactive Python namespace is used

    %pylab magic
        # just enter it at the input prompt

    # ipython notebook
        Enter           create new line
        Shift+Enter     execute cell and go (shift) to next cell
        Alt+Enter       execute cell and add (alt) a new empty cell after it
        Ctrl+Enter      quick experiments, output not saved, stays in cell

    # tab completion
        also works with "open" builtin function
        with open(0<TAB>

    # return output from shell
        files = !ls -1 -S | grep edges
        "files" is now a python list object

    # use python in shell commands
        {} syntax
        $ syntax
        !head -n5 {files[0]}

    # unzip something!
        with zipfile.ZipFile(filename) as zip:
            zip.extractall('.')

    # history
        %hist
        -o show output as well as input
        -n show line numbers
        -f save history to file
        -p show classic >>> prompt

    # store
        %store "name"
        # saves "name" for any future interactive session
        # (use store -r to recover it in another session)

    %edit accepts
        # - a python script filename
        # - a string variable containing python code
        # - a range of line numbers with the same syntax as %history
        # - any python object (ipython tries to open file where its defined)

    # private variables
        > # typing "_" before pressing TAB forces ipython to
        > # display all private variables

    # tab completion, custom classes
        ```
        class MyClass (object):
            def __dir__(self):
                return ['attr1', 'attr2']
        ```

    $pfile
    # accepts python filename, prints contents with syntax
    # highlighting

    # pdb debugger key map
        u/d - up/down the call stack
        s   - STEP INTO next statement
        n   - continue until NEXT line
        r   - continue until current function RETURNS
        c   - continue until next breakpoint or exception
  _where_   - print stack trace

        p   - print any expression
        a   - arguments of the current functions
        !   - prefix to execute any python command

    # notebook cell magics
        %%!     - executing several shell commands
        %%file  - creating text file

        e.g. $$file myfile.txt
            Hello world!

    create notebook from script
        drag script from system explorer to ipython dashboard

    create script from notebook
        all notebooks can be downloaded as "ipynb" or python script


### show custom.js
    from jupyter_core.paths import jupyter_config_dir
    jupyter_dir = jupyter_config_dir()
    import os.path
    custom_js_path = os.path.join(jupyter_dir, 'custom', 'custom.js')
    print("searching for custom.js in ", custom_js_path)
    #  my custom js
    if os.path.isfile(custom_js_path):
        with open(custom_js_path) as f:
            print(f.read())
    else:
        print("You don't have a custom.js file")


### ipy tips

# hide deprecation warnings
    import warnings
    warnings.filterwarnings('ignore', category=DeprecationWarning)

# run ipython.exe in mintty/cygwin/GIT BASH!!!!!!
    winpty ipython.exe

# sympy latex preview
    # make the font large
    # file: preview.py
    # .../site-packages/sympy/printing

        preamble = r"""\documentclass[12pt]{article}
        ...
        \begin{document}
        \Large   <-------------- add this
        """

# set default startup folder
    in ../profile_default/ipython_config.py
    import os
    os.chdir('C:\\Users\\...repos\\study\\code')


# colourise terminal output
    # Set the color scheme (NoColor, Linux, or LightBG).
    c.TerminalInteractiveShell.colors = 'Linux'
    # c.TerminalInteractiveShell.colors = 'NoColor'

# history show line numbers
    hist -n

# attach terminal to running notebook
    # ipython console
    # for more help:
        ipython console -h

# show all local variables VALUES!
    whos

# my dark profile
    # "static" folder inside:
        "/home/ef/.ipython/profile_dark"

    # Have it as a git repo:
        git@github.com:egf25/ipython-static.git

# notebook convert
    ipython nbconvert --to python {somefile.ipynb}

# get sourcecode from web
    loadpy {URL}

# auto create script! good tip!
    # start notebook with '--script' flag will save a '.py'
    # file alongside '.ipynb' on every save.

# have nice equation printing in the ipython terminal
    from sympy import *
    init_printing()

# show package methods/attributes
    dir(atpy)

# Source Code info
    pycat <filename>
        display file with python syntax colouring

    # pydef
        import re
        pdef re.match

    # show function docstring
        pdoc re.match

    # same as re.match?
        pinfo re.match

    # outputs source code
        psource re.match

    # displays file where "re.match" is defined
        pfile re.match

# store
    # create and save macros/aliases
        ```
        In [4]: plt.show()
        macro ps _i4
        store ps
        ```

    # delete stored macro
        store -d somevariable

    # persist macros/aliases
        "store -r" to recover them for another session
        or
            # ipython_config.py
            c.StoreMagics.autorestore = True

        # they are kept in file:
            /$HOME/.ipython/profile_default/db/stored_aliases

    # delete alias
        unalias <name>

    # define alias
            alias test echo %s
            store test
        # or
            ipython_config.py:
            c.AliasManager.user_aliases = [ ('test', 'echo %s') ]

# where is profile file?
    ipython locate
    ipython --profile=sympy
    ipython profile create <name>

# reload a changed module
    foo = reload(foo)

# delete single variable
    del fig1

# what command did I paste last
    print pasted_block

# show current sys path
    import sys
    sys.path

# '%doctest_mode'
    # magic command, makes it easier to copy and paste lines
    # ignores the ">>>" of the prompt

# sympyprinting
    puts latex printing on top of sympy

# bookmarks
    # give 'cwd' a nickname
    bookmark <nickname>

    # list all current bookmarks
    bookmark -l

# Run code
    run [MODULE NAME]       executes the named module
    run -p                  run with profiler
    run -d                  run with debugger

# Deeper info
    lsmagic??
    shows deeper info on the command
    including source code

page sys.path
    # prints using "pprint" (pretty print)
    # to get a neater look

# Function shortcuts
    some_func 3, 4          short for some_func(3, 4)
    /some_func              short for some_func()
    ,some_func 3 4          short for some_func("3", "4")
    ;some_func 3 4          short for some_func("3 4")

# Help
    /help
    call "pydocs" Python documentation system (q to quit)

    help(sys)
    show help on "sys" module (if imported)

    help('for')
    show help on "for" command

    help('topics')
    display list of topics for which help is available

edit -x re.match
    open file containing "re.match" in gedit
    iPython finds the file location!

# Navigation
    pushd,popd  push/pop directory onto stack
    dirs        lists directories on stack
    dhist       directory history
    cd -3       change to 3rd directory in "dhist"

# Bash
    !               execute bash command
    `patt = '*.py'`   define pattern
    !ls -l $patt    list files matching pattern!

# content listing
    lf      list files only
    ldir    list directories only

# recent commands
    ```
    _i         1 command back
    _iii       3 commands back
    exec _i    executes a nominated input command series
    hist       show last 20 commands, eg hist 1 10 (commands 1:10).
    hist -r    hide magic command wrappers - just show what was actually typed.
    ```

# edit recent commands
    edit 1:5
    opens lines 1 to 5 in the text editor,
    where a single can be specified as `_i163`  (for line 163)

    save file1 1:5
    saves indicated lines to file1.py

    cpaste
    for pasting in code blocks, type -- to end

    [Somefunction];
    supress output from a function. Handy if a function dumps out a lot of junk.

# Timing
    # Coarse - Shows how much user and cpu time it took
    time sum(range(10000))

    # Fine - For very short commands. (Runs multiple times
    # to give average milliseconds.)
    timeit sum(range(100))

# Profiling
    prun zopedocs()     Profiles FUNCTIONS. Lots of info.
    prun -l math        limit (in this case) to MATH
    run -p walker.py    Profiles FILES.
    note: from travis:
    prun only looks in python files, not in cython, compiled c files etc
    also: runsnakerun is a graphical profiler

# Learning iPython for interactive computing

# install development ipython
        git clone https://github.com/ipython/ipython.git
        cd ipython
        python setup.py install

        # to update easily using "git pull"
        # as dev branch changes:
            python setupegg.py develop

# output history
        ```
        _
        __
        ___
        _n
        ```

# input history
        ```
        _i
        _ii
        _iii
        _in
        ```

# scripts and namespace
        A script is executed in a fresh new Python namespace
        unless the -i option is used, in which case the
        current interactive Python namespace is used


# return output from shell
        `files = !ls -1 -S | grep edges`
        `"files" is now a python list object`

# use python in shell commands
        {} syntax
        $ syntax
        !head -n5 {files[0]}

# unzip something!
        with zipfile.ZipFile(filename) as zip:
            zip.extractall('.')

# history
        %hist
        -o show output as well as input
        -n show line numbers
        -f save history to file
        -p show classic >>> prompt

# store
        %store "name"
        # saves "name" for any future interactive session
        # (use store -r to recover it in another session)

### %edit accepts
         - a python script filename
         - a string variable containing python code
         - a range of line numbers with the same syntax as %history
         - any python object (ipython tries to open file where its defined)

# private variables
    - typing `_` before pressing TAB forces ipython to display
      all private variables

### $pfile
    # accepts python filename, prints contents with syntax
    # highlighting

# pdb debugger key map
        u/d - up/down the call stack
        s   - STEP INTO next statement
        n   - continue until NEXT line
        r   - continue until current function RETURNS
        c   - continue until next breakpoint or exception

        p   - print any expression
        a   - arguments of the current functions
        !   - prefix to execute any python command

# notebook cell magics
        %%!     - executing several shell commands
        %%file  - creating text file

        e.g. $$file myfile.txt
            Hello world!

### notebook <-> script
    - notebook from script
        - drag script from system explorer to ipython dashboard
    - script from notebook
        - all notebooks can be downloaded as "ipynb" or python script

### Jupyter SSH tunnel through INTERMEDIATE GATEWAY
    - See `disco_jup_tunnel` in my ssh config:
        - $HOME/.ssh/config

### Links
    - Nice guide to using Jupyter notebook on Userspace https://lab.uberspace.de/guide_jupyter-notebook.html


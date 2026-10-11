ctags

### VIM: Add an extra ctags location
    - create extra tags:
        cd /path/to/other/dir/
        ctags -f extra_tags -R

    - tell vim about them:
            set tags+=/path/to/other/dir/extra_tags

### script to create ctags from specific folders
    ```
    #!/bin/bash

    # find main source files
    find ~/repos/meta-servers/CompaRNA_2d/server                        -iname "*.py" -type f -print  > ./py27-comparna-source

    # find source files from site-packages
    find ~/repos/meta-servers/CompaRNA_2d/lib/python2.7/site-packages   -iname "*.py" -type f -print  > ./py27-comparna-site-packages

    # delete files relating to Django migrations
    sed -i '/migrations/d' ./py27-comparna-source

    # Add list of site packages to the end
    cat ./py27-comparna-site-packages >> ./py27-comparna-source

    # Create tags (specify file list using "-L")
    ctags -L ./py27-comparna-source
    ```


### Gibash Windows Ctags
    - I have the windows version `ctags.exe` in $HOME/bin now.
    - Saves me downloading it from Sourceforge each time.

### ctags versions!
    - there are two "ctags":
        1. Universal
        2. Exuberant
    - eg my lenovo teremux uses UNIVERSAL
        - some differences:
        - Universal Ctags doesn't load `~/.ctags` and `./.ctags`
          at startup. Instead, it loads ~/.ctags.d/*.ctags and
          ./.ctags.d/*.ctags.
    - Later Jun 2021:
        - I compiled the old _Exuberant Ctags_ from source for
          Termux, don't use Universal now.

### Vim TAGBAR tips
    -  x   maximise window
    -  o   toggle fold!!!
    -  p   show definition (but stay in tagbar)

    - " Get an existing defintion (eg Python)
        :TagbarGetTypeConfig python

    - add new tagbar definitions/regex:
        - $HOME/.ctags


### no comments allowed!
    - you can't add comments to $HOME/.ctags
    - ie //, # etc wont work

### local variables in c
    - local vars not included by default
    - Add this option: `-c-kinds=+l`

# generate vim tags without ctags.exe
    use 'ptags.py' included with Anaconda

### define your own language!
    ```
    --langdef=sas
    --langmap=sas:.sas
    --languages=+sas
    --regex-sas=/[ \t]?%macro[ \t]+([A-Za-z0-9_]+)[ \t;]?/\1/M,Macro/i
    --regex-sas=/[ \t]?%include[ \t]+(.*);/\1/I,Include/i
    --regex-sas=/^[[:space:]]*libname[ \t]+(.*);/\1/L,Libraries/i
    --regex-sas=/^[[:space:]]*data[ \t]+(.*);/\1/D,datasets/i
    --regex-sas=/^[[:space:]]*create table[ \t]+(.*)$/\1/D,datasets/i
    ```


# ~/.ctags config
    --recurse=yes
    --tag-relative=yes
    --exclude=.git

# include python import statements
    ctags -R --python-kinds=+i

# get language specific info
	ctags --list-maps
	ctags --list-kinds

# alias
    ```
    alias __ctags-objc__="ctags --languages=objectivec --langmap=objectivec:.h.m"
    ```

# append framework
    Anytime you want to add a Framework to your tags database, a command
    like the following will work:

    > $ cd CoreData.framework/
    > $ ctags-objc --append -f ~/Documents/global-objc-tags

    make vim aware of global tags
        > if has("autocmd")
        >     autocmd BufNewFile,BufRead *.h,*.m set tags+=~/Documents/global-objc-tags
        > endif

# ctags fortran
	ctags -R --exclude='.svn' --fortran-kinds=+b+c+e+f+i+k+l+L+m+n+p+s+t+v

# generate tags file ('ftags' my old alias)
    `ftags **/*.f*`

# MESA fortran tags
    ctags -R --langmap=Fortran:+.dek --exclude='.svn' --fortran-kinds=+b+c+e+f+i+k+l+L+m+n+p+s+t+v

# fortran features
		- b   block data
		- c   common blocks
		- e   entry points
		- f   functions
		- i   interface contents, generic names, and operators [off]
		- k   type and structure components
		- l   labels
		- L   local, common block, and namelist variables [off]
		- m   modules
		- n   namelists
		- p   programs
		- s   subroutines
		- t   derived types and structures
		- v   program (global) and module variables

### Kinds: C
    c  classes
    d  macro definitions
    e  enumerators (values inside an enumeration)
    f  function definitions
    g  enumeration names
    l  local variables [off]
    m  class, struct, and union members
    n  namespaces
    p  function prototypes [off]
    s  structure names
    t  typedefs
    u  union names
    v  variable definitions
    x  external and forward variable declarations [off]
    z  ef-label

### Kinds C++
    c  classes
    d  macro definitions
    e  enumerators (values inside an enumeration)
    f  function definitions
    g  enumeration names
    l  local variables [off]
    m  class, struct, and union members
    n  namespaces
    p  function prototypes [off]
    s  structure names
    t  typedefs
    u  union names
    v  variable definitions
    x  external and forward variable declarations [off]

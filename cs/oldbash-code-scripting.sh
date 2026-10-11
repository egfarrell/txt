bash scripts tips



# old sqlite commands to track my work
SQL1="SELECT ROW_NUMBER() OVER (ORDER BY session_time) AS session, session_time as time FROM WORK WHERE session_date = date(julianday('now', 'localtime')) ORDER BY session_time;"
SQL2="select session_date, count(session_time) from WORK group by session_date;"
SQL3="select * from WORK order by session_date, session_time;"
# alias w='echo  "Work Today:"   && sqlite3 -batch $HOME/repos/marks/mywork.sqlite "$SQL1" | cat -n'
alias w='echo  "Work Today:"   && sqlite3 -batch $HOME/repos/marks/mywork.sqlite "$SQL1"'
alias ww='echo "Work Summary:" && sqlite3 -batch $HOME/repos/marks/mywork.sqlite "$SQL2" '


# Handy date stamp format
    myoutput.png.$(date +"%Y-%m-%d-%T")
    myoutput.png.$(date +"%Y%m%d-%T")

# redirect 'stdout' output AND 'stderr' errors to null
    &> /dev/null 

# old cw function
cw()  {
    # change directory using wildcards.
    # (note: strip any trailing slashes)
    input="${1%/}"
    custom_cd *"$input"*
}



# ensure 'rm' doesnt complain if file doesnt exist
    command rm  --force "$HOME/$HACK1" || true
    command rm  --force "$HOME/$HACK2" || true


# Old inputrc TMUX tab hack
    # [TAB] Menu Complete: 
    # Cycle through available options when [TAB] pressed
    $if term=xterm
        "\C-i": menu-complete
        Tab: menu-complete
    $else
        # Urxvt Hack
        # See: $MY_NOTES/cs/Bash-Tab-remapping.txt
        "\033[33~":   menu-complete   # outside tmux
        "\033[18;2~": menu-complete   # inside  tmux
    $endif



# chain commands
    cmd1 || cmd2: # run cmd1, and in case of failure run cmd2
    cmd1 && cmd2: # run cmd1, and in case of success run cmd2
    cmd1 ; cmd2:  # run cmd1, then run cmd2, independent of success or failure of cmd1.



# Configure my paths
source $HOME/bin/path_utils.sh
path_prepend "/work/efarrell/local/bin"
path_remove  "/usr/games"
path_remove  "/usr/local/games"

# Get path/folder of current script
    # method 1
        THIS_SCRIPT=$(readlink -f "$0")
        THIS_DIR=$(dirname "$THIS_SCRIPT")
    # method 2
        THIS_DIR=$(dirname $(readlink -f "$0"))

# print padded width numbers
for num in $(seq -w 0 0005); do
    printf "\n$num"
done


# 'extract.dat' in '$FOLDER' is very big.
# Use unix 'split' to chop it into smaller files
# each with extension ".000", ".001" etc
split --lines=20000 \
        --numeric-suffixes \
        --suffix-length=3 \
        "$FOLDER"/extract.$VER  "$FOLDER/$SPLIT_FILENAME."

# which is final split file?
LAST_FILE=$(ls -Art "$FOLDER/" | tail -n 1)


# optional parameter
input=${1:-foo}

# check this bash: 
        sort -k 3, 3rn (sort 3rd column)-]


# old digital ocean stuff
alias doc="xssh do"
alias dor="python -c 'import do; do.restore_snapshot()'"
alias dos="python -c 'import do; do.save_snapshot()'"
alias dol="python -c 'import do; do.list_droplets()'"
alias dols="python -c 'import do; do.list_snapshots(True)'"
alias dod="python -c 'import do; do.delete_droplet()'"



# create backup destination folder
# --------------------------------

# force menu items onto separate lines
COLUMNS=12

# NOTE: newline needs: "$'\n"
PS3=$'\nEnter number: '

options=("Box"
         "SSD Drive"
         "OneDrive"
         "Quit")
printf "\nBACKUP DESTINATION:\n"

select opt in "${options[@]}"
do
    # user selected line number stored in "$REPLY"
    case $REPLY in
    "1")
        DEST="$HOME/Documents/box/Backup/$TODAY"
        break
        ;;

    "2")
        DEST="/media/ef/SSD_HARDDRV/Backups/$TODAY"
        break
        ;;

    "3")
        DEST="$HOME/OneDrive/Backups/$TODAY"
        break
        ;;

    "4")
        echo 'Quiting...'
        exit 1
        break
        ;;

    *)
        echo 'Invalid option.'
        ;;

    esac
done



moff ()
{
    # Turn OFF mouse touchpad
    # Extract 'device id' from 'xinput list' output:
    #       '⎜   ↳ ETPS/2 Elantech Touchpad    id=11   [slave  pointer  (2)]'
    id=$(xinput list | sed -n 3p | grep -Eo '[[:digit:]]{2}')
    xinput --disable $id
}

mon ()
{
    # Turn ON mouse touchpad
    id=$(xinput list | sed -n 3p | grep -Eo '[[:digit:]]{2}')
    xinput --enable $id
}



# Is it a VLC screenshot or manual one?
    shopt -s nullglob
    vlc_snaps=($HOME/Downloads/vlc_screenshot_*)
    if [ -f "${vlc_snaps[0]}" ]; then
        # take first vlc snap
        src="${vlc_snaps[0]}"
    else
        # assume is a snip tool screenshot
        src="$manual_screenshot"
    fi



# error checking
    # biostars trick
    set -uex
    # If you're using:
        set -o errexit 
        # or set -e if you prefer
    # Then you probably also want:
        set -o pipefail
    # Otherwise, it only checks that the last command
    # succeeds, so something like:
        ls *.ssjkfle | wc -l
    # also:
        set -o nounset


# alias fm='/c/Users/ef/Documents/Q-Dir/Q-Dir_x64.exe $PWD'

da() {
    # Show calander with day highlighted.
    day=$(date +"%e")
    # note: use "\grep" to override my normal grep alias
    if [[ $(uname -s) == *"CYGWIN"* ]]; then
        cal | \grep --color=always -E "$day |$day$|$"
    else
        ncal -h -bM |  GREP_COLORS="mt=0;31:" \grep --color=always -E "$day |$day$|$"
    fi
}


# create date folder
TODAY="$(date +%Y-%m-%d)"
destination="$HOME/repos/archives/$TODAY"
[ -d "$destination" ] || mkdir -v "$destination"

rebind_keys()
{
    # rebind "Ctrl+l" to (re)display directory contents.
    # (supress any error messages)
    bind -x '"\C-l": clear; custom_cd .' 2> /dev/null
}

rebind_keys



function set_title() {
    # sometimes I need a fixed title
    # so ahk can find the window easily
    title="$1"
    echo -en "\033]0;$title\007"
}



depth()
{
    input="$1"
    if [[ -z "$input" ]]; then input="."; fi
    find "$input" -type d -printf '%d:%p\n'  | sort -n | tail -1
}


# My Bin used to store files that are "nuked"
export MY_BIN="$HOME/.trashcan"
alias bi="echo 'Trash:' && ls -A $MY_BIN"
alias wipe="rm -rf $MY_BIN && mkdir $MY_BIN && printf 'Bin emptied\n'"


nk() {
    # delete ("nuke") a folder,
    # by moving it into $MY_BIN...

    if [[ -z "$@" ]]; then
        printf "Nuke what?\n"
        return
    fi

    # ensure Bin exists
    [ -d "$MY_BIN" ] || mkdir "$MY_BIN"

    # Following files are protected:
    save_files=(
                 "$HOME"
                 "$HOME/dotfiles"
               )

    # Process each argument from command line
    for file in "$@"
    do
        # 'readlink' handles symlinks, wildcards and relative paths.
        # eg:  '../*.pdf',  '../../*.pdf'
        filepath=$(readlink -f "$file")

        # ensure folder/file exists
        if [ -d "$filepath" ] ; then
            true # everything ok
        elif [ -f "$filepath" ]; then
            true # everything ok
        else
            # skip this file
            echo "Not found: $filepath"
            break
        fi

        # Dont nuke anything important!
        do_delete=true
        for save_file in "${save_files[@]}"
        do
            if [[ "$filepath" == "$save_file" ]]; then
                printf "Not allowed nuke: $save_file\n"
                do_delete=false
                break
            fi
        done

        if [ "$do_delete" = true ] ; then
            # Use builtin "\mv" cos I have "mv" alias.
            # "--force" will overwrite identical *files* in the bin.
            \mv --force "$filepath" "$MY_BIN" 2>/dev/null

            if [ $? -ne 0 ]; then
                # Command failed. Folder name must already exist
                # in bin. Rename bin folder, then nuke again.
                folder_name=$(basename "$filepath")
                stamp="$(date +%Y%m%d-%H%M%S)"
                \mv "$MY_BIN/$folder_name" "$MY_BIN/$folder_name-$stamp"
                \mv --verbose "$filepath" "$MY_BIN"
            else
                printf "Nuked: $filepath \n";
            fi
        fi
    done
}



# bash prompt hostname
    myhost=$(hostname)
    size=${#host}
    export PROMPT_TIP="${myhost:0:3} > "

# old map/tree commands in bash_aliases
    m()  { tree -C -d -L ${1:-2} | less -R -X ; }
    mf() { tree -C    -L ${1:-2} | less -R -X ; }
 

# ~/bin/video_command.sh
    # handle "Ctrl+Enter" for jupyter notebook
    window=$(xdotool search --limit 1 --onlyvisible --class "Chromium-browser")
    xdotool key --window $window "ctrl+Return"
    notify-send "Sent ctrl+enter to $window"
    exit


# old code from solarize_off.sh
    # Bash prompt: customise git branch color.
    if [ -f "$HOME/.bashrc.local" ]; then
        # Delete existing references to git branch color.
        sed -i '/GIT_BRANCH_COLOR/d'  "$HOME/.bashrc.local"
    fi

    # setup git branch color in ~/.bashrc.local
    echo 'export GIT_BRANCH_COLOR="\[\033[1;30m\]"' >> "$HOME/.bashrc.local"
    source "$HOME/.bashrc.local"



nk() {
    # execute a "rm -rf" on an argument.
    # Dangerous command!
    if [[ -z "$1" ]];    then printf "Nuke what?\n"; return; fi
    if [[ "$#" -gt 1 ]]; then printf "Only nuke single items!\n"; return; fi

    # 'readlink' handles arguments like './', '*'. 
    # 'readlink' also expand symlinks.
    expand_file=$(readlink -f "$1")
    parent=$(dirname "$expand_file")

    # Dont nuke anything important!
    black_list=( "/"
                "$HOME"
                "$HOME/dotfiles"
                "$HOME/study"
                "$HOME/repos"
                "$HOME/videos"
                "$HOME/Pictures"
                "$HOME/Documents"
               )

    for protected in "${black_list[@]}"
    do
        if [[ "$expand_file" == "$protected" ]]; then
            printf "Not allowed nuke: $protected\n"
            return
        fi
    done

    # All safety checks passed. Go ahead and nuke it!
    # -f, --force: ignore non-existent files, 
    #              never prompt
    #              never display an error message
    # rm -rf "$expand_file"
    rm -r "$expand_file"
}


# eval and filenames with spaces
    # Fails:
        background.sh evince Sunil\ Gr.pdf
    # because:
        eval "$command"
        # doesnt escape spaces

# old nk code
    # if its a big folder double-check with user
    depth=$(dir_depth "$input")
    if [ $depth -gt 6 ]; then
        printf "\n'$input' is $depth levels deep."
        source ask.sh
        if ! ask "Sure you want to nuke it?" N; then 
            return
        fi
    fi

# old function: count how deep nested folders are
    test_depth()
    {
        # note: recursive function!
        # note: "counter" and "max" are global

        # Dont descend anymore if 
        # we've reached a cutoff
        if [[ -z "$depth_cutoff" ]]; then 
            export DEPTH_CUTOFF=7; 
        fi
        if [[ $max > $DEPTH_CUTOFF ]]; then return; fi

        local dir
        cd -- "$1"
        ((counter++))

        for dir in *
        do
            # we want to descend from current folder
            # rather than where we started from
            if [ -d "$dir" ]; then test_depth "$dir"; fi
        done
        if ((counter > max)); then
            # save new maximum
            max=$counter
            # maxdir=$PWD
        fi
        ((counter--))
        if (( counter == 0 )); then
            # Back where we started!
            # Output depth and wipe global variables.
            ((max--))
            echo  $max
            unset counter
            unset max
            unset maxdir
        else
            # keep searching
            cd ..
        fi
    }


# check folder/directory exists
    if [ ! -d "$path" ]; then
        printf "\nError: %s does not exist.\n" "$path"
        exit 1
    fi

# show local config files
    printf "\nLOCAL CUSTOMISATION FILES:\n"
    ls  --color=never -l "$PWD"/local/*
    printf "\ndone.\n"

# old fav function
    fav()
    {
        # Generate list of favourite folders
        # based on bashmarks '.marks' file
        input=$HOME/.marks
        output=$HOME/.fav-folders

        # use 'sed' to manipulate bashmarks
        # folders into a nice clean list
        sed 's/^.*=//g' "$input"           | # remove export statements
        sed 's/"//g'                       | # remove quotes
        sed '/pdf\|zotero\|picture/Id'     | #    remove
        sed '/desktop\|music\|video/Id'    | #    certain
        sed '/ctrlp\|apt\|media/Id'        | #    folders
        sed 's/$HOME/~/g'        \
            > "$output"

        cat "$output"
    }

# expand tilde "~" or "$HOME" inside a variable
    # method 01:
        folder="${folder/#\~/$HOME}"

    # method 02:
        folder=$(eval echo "${raw_folder//>}")

    # '${raw_folder//>}' strips out ">" characters which could
    # clobber a file during the eval.

    # 'eval echo' ... is what does the actual tilde expansion

    # The double-quotes around the eval support filenames
    # with spaces.


# asciicinema trick!
    # begin wrapping
    {
        # Prevent execution if this script was only
        # partially downloaded
        .... all code
    }
    # end wrapping

# read array from file (-t stripts newlines)
    readarray -t folders < "$file"

# use array in a script
    my_array=( ~/.aws/credentials.enc ~/.ssh/do_token.enc )
    for file in "${my_array[@]}"
    do
        printf "\nCurrent file is: %s\n" "$file"
    done

# extract filename etc
    # First, get file without path:
        filename=$(basename "$fullfile")
    # then:
        extension="${filename##*.}"
        filename="${filename%.*}"

    # Alternatively, you can focus on the last '/' of the
    # path instead of the '.' which should work even if you
    # have unpredictable file extensions:
        filename="${fullfile##*/}"

# "/*" inside double-quotes will not be expanded!
    i.e. cp -v "/some/path/*" /some/destination
    will not work!

# did last command work?
    if [ $? -eq 0 ] 
        then echo OK
        else echo FAIL
    fi

# make parents and copy (note: "$_")
    mkdir --parents "$CTRLP_BOOKMARKS" && command cp -v "$PWD/cache.txt" "$_"

# check file size
    size=$(wc -c <"$my_file")
    if [ "$size" -eq 0 ]; then
        empty_file=true
    fi

# bash script debugging
    set -xv
    # Add "set -xv" to the top of the script.
    # Will print line number and command
    # thats being executed to STDERR

    # turn on verbose
        set -v
    # turn off verbose (counter-intuitive)
        set +v

# recommended ways to check booleans
    bool=true

    if [ "$bool" = true ]; then
    if [ "$bool" = "true" ]; then

    if [[ "$bool" = true ]]; then
    if [[ "$bool" = "true" ]]; then
    if [[ "$bool" == true ]]; then
    if [[ "$bool" == "true" ]]; then

    if test "$bool" = true; then
    if test "$bool" = "true"; then

# iterate through script arguments
    # wrong:
        folder_list="$@"
        for folder in "$folder_list"; do
    # correct:
        for folder in "$@"; do
    # correct:
        # dont think this one is right? tried with 'nk' alias?
        # dont think this one is right? tried with 'nk' alias?
        folder_list="$@"
        for folder in ${folder_list}; do

# handy colours trick!
    BLACK=$(tput setaf 0)
    RED=$(tput setaf 1)
    GREEN=$(tput setaf 2)
    YELLOW=$(tput setaf 3)
    LIME_YELLOW=$(tput setaf 190)
    POWDER_BLUE=$(tput setaf 153)
    BLUE=$(tput setaf 4)
    MAGENTA=$(tput setaf 5)
    CYAN=$(tput setaf 6)
    WHITE=$(tput setaf 7)
    BRIGHT=$(tput bold)
    NORMAL=$(tput sgr0)
    BLINK=$(tput blink)
    REVERSE=$(tput smso)
    UNDERLINE=$(tput smul)

    # To reset color information:
    >echo "${RED}this is red ${NORMAL}this is normal"

# interesting!
    if [ $# -eq 0 ]
        # same effect as:  if [ -z "$1" ]
        # $1 can exist, but be empty:  zmore "" arg2 arg3
        then
        echo "Usage: `basename $0` filename" >&2
        # Error message to stderr.
        exit $E_NOARGS
        # Returns 85 as exit status of script (error code).
    fi

# 'read' variable scope(!)
    # the WHILE READ is executed in a SUB-SHELL, so any
    # modifications you make are NOT PASSED TO THE PARENT.
    # One of the many annoyances of bash scripting!

# SHIFT
    # accept command line params and THEN a glob pattern
    x=$1
    y=$2
    shift 2
    mogrify -resize ${x}x${y}^ -gravity center -crop ${x}x${y}+0+0 "$@"

# looping over files
    use: for i in *
    NOT: for i in $(ls)

    # The first form works properly for files with spaces in
    # the name. The second will incorrectly split the names.

# syntax check a script
    bash -n {scriptname}

# override 
    # a FUNCTION 
        command cd -
    # a ALIAS 
        \rm {somefile}

# add integers in bash
    # Use the $(( )) arithmetic expansion.
    num=$(( $num + $metab ))
    new_num=$(($before - 1))

# assign default value
    $MYVAR=${1:-foo}

# 'for' loop with numerics (must use C style loop)
    for (( i=$start; i<=$end; i++ ))
    do
        echo "Welcome $i times"
    done

    for i in {1..5}
    do
        echo "Welcome $i times"
    done

    # Bash 4.0+
    for i in {0..10..2}
    do 
        echo "Welcome $i times"
    done

# strip trailing "/" characters
    DIR_DATA=${2%/}

# boolean and/or
    # with '[ ... ]'
        # note: should have double brackets of "-z" !
        # note: in case "$1" has spaces etc...
        if [ -z "$1" -o -z "$2"  ]; then echo 'one _OR_ the other is null'
        if [ -z "$1" -a -z "$2"  ]; then echo 'one _AND_ two is null'

    elif [ ${#DIRS_FOUND[@]} -eq 1  -a "${DIRS_FOUND[0]}" = "" ]; then
        # only found a blank string
        printf "\nNo matching folder.\n"

    # with '[[ ... ]]'
        if [[ ( $g == 1 && $c == 123 ) || ( $g == 2 && $c == 456 ) ]]

# check number input parameters/arguments
    if [ "$#" -ne 2 ] then ...

# Case insensitive parameters
    case "$input" in
        y|Y|Yes) echo "...."
        ;;

        * ) echo "invalid"
        ;;
    esac

# different shells!!
    #!/bin/sh
        # in ubuntu its linked to DASH shell!!! (Debian
        # Almquist shell - smaller than bash)

    #!/bin/bash
        # bourne again shell. 
        # "echo -e" and "[[" works

# detect OS in bash script
    uname
    uname -m
    $OSTYPE

# bash script variables
    hello="A B C   D"
    echo hello      # no variable reference
    echo $hello     # A B C D
    echo "$hello"   # A B C   D (quoting preserves whitespace)
    echo '$hello'   # dereference variable, interpret $ literally

# set bash variable to NULL
    hello=
    unset hello

# get filename from path
    # method1:
        path=/this/is/could/be/any/path/abc.txt
        file=$(basename $path)
    # method2:
        file=${path##*/}

# get root directory name from pwd...
    # method1
        $(dirname "$PWD")
    # method2
        ${PWD##*/}
        # This is an example of "parameter expansion"(!)

# declare bash variables
    # no spaces allowed either side of equals "=" !!!

# Running bash in non-interactive mode
# this tip mainly applies to iPython which
# tries to store all aliases
    # this command displays all aliases
    bash -l -c 'alias'

    # but you must make sure the following
    # is commented out in your .bashrc:

    # If not running interactively, don't do anything
    [ -z "$PS1" ] && return

# "if" comparison/compare operators
	-z	string is NULL, ie has ZERO length
	-n	string is NOT NULL

# STRING comparison/compare
# -------------------------
    =
        # is equal to
        # STRING comparison only (not integer!)
        if [ "$a" = "$b" ]
        Caution
        Note the whitespace framing the =.
        if [ "$a"="$b" ] is not equivalent to the above.
    ==
        # is equal to
        # STRING comparison only (not integer!)
        if [ "$a" == "$b" ]
        This is a synonym for =.
        Note:
        The == comparison operator behaves differently
        within a double-brackets test than within single
        brackets.

        [[ $a == z* ]]   # True if $a starts with an "z" (pattern matching).
        [[ $a == "z*" ]] # True if $a is equal to z* (literal matching).
        [ $a == z* ]     # File globbing and word splitting take place.
        [ "$a" == "z*" ] # True if $a is equal to z* (literal matching).

    !=
        # is not equal to
        # STRING comparison only
        if [ "$a" != "$b" ]
        This operator uses pattern matching within a [[ ...
        ]] construct.

    <
        # is less than, in ASCII alphabetical order
        # STRING comparison only (not integer!)
        if [[ "$a" < "$b" ]]
        if [ "$a" \< "$b" ]
        Note that the "<" needs to be escaped within a [ ] construct.
    >
        # is greater than, in ASCII alphabetical order
        # STRING comparison only (not integer!)
        if [[ "$a" > "$b" ]]
        if [ "$a" \> "$b" ]
        Note that the ">" needs to be escaped within a [ ] construct.
        See Example 27-11 for an application of this comparison operator.

# INTEGER comparison/compare
# --------------------------
    -eq
        # is equal to (integer)
        if [ "$a" -eq "$b" ]
    -ne
        # is not equal to (integer)
        if [ "$a" -ne "$b" ]
    -gt
        # is greater than (integer)
        if [ "$a" -gt "$b" ]
    -ge
        # is greater than or equal to (integer)
        if [ "$a" -ge "$b" ]
    -lt
        # is less than (integer)
        if [ "$a" -lt "$b" ]
    -le
        # is less than or equal to (integer)
        if [ "$a" -le "$b" ]
    <
        # is less than (within double parentheses)
        (("$a" < "$b"))
    <=
        # is less than or equal to (within double parentheses)
        (("$a" <= "$b"))
    >
        # is greater than (within double parentheses)
        (("$a" > "$b"))
    >=
        # is greater than or equal to (within double parentheses)
        (("$a" >= "$b"))

# bash script parameters
    # $@  and $*, are nearly the same, both meaning "all
    # command line arguments"

    # They are often used to simply pass all arguments to
    # another program.

    # The difference shows up when you have an argument with
    # spaces in it and put $@ in DOUBLE QUOTES:

    >wrappedProgram "$@"
        # ^^^ this is correct and will hand over all
        # arguments in the way we received them, i. e. as
        # several arguments, each of them containing all the
        # spaces and other uglinesses they have.

    >wrappedProgram "$*"
        # ^^^ this will hand over exactly one argument,
        # containing all original arguments, separated by
        # single spaces.

    >wrappedProgram $*
        # ^^^ this will join all arguments by single spaces
        # as well and will then split the string as the
        # shell does on the command line, thus it will split
        # an argument containing spaces into several
        # arguments.

    # Example: Calling
        wrapper "one two    three" four five "six seven"

    # will result in:
        "$@": wrapper   "one two    three" four five "six seven"
        "$*": wrapper   "one two    three four five six seven"
        $*:   wrapper   one two three four five six seven

# rename files
    # rename in date-modified order,
    # all files which match a certain pattern
    for i in "$@"
    do
        mod_date=$(stat -c "%y" "$i"|sed 's/\..*$//')
        new_name="$mod_date-$i"
        cp "$i" "$new_name"
    done

# in bashrc:
    # make less more friendly for non-text input files, see lesspipe(1)
    [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

    # set variable identifying the chroot you work in
    # (used in the prompt below)
    if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
        debian_chroot=$(cat /etc/debian_chroot)
    fi

# manipulate bash filenames
    filename="some part.some some.filetype"

    notlast=${filename%.*}
    last=${filename##*.}
    first=${filename%%.*}
    notfirst=${filename#*.}

    echo $notlast
    echo $last
    echo $first
    echo $notfirst

function show_git_marker {
    # Display simple marker if inside GIT directory.
    # Used in Bash prompt. Doesn't check repo status or remote.
    git rev-parse --git-dir &> /dev/null && echo "(git) "
}


# OLD VERSION! Return a string with GIT info
function create_git_prompt {

    # git rev-parse --git-dir &> /dev/null
    # git_status="$(git status --untracked-files=no 2> /dev/null)"
    git_status="$(git status 2> /dev/null)"

    # Older versions of GIT have "# On Branch..."
    branch_pattern="^[# ]*On branch ([^${IFS}]*)"
    remote_pattern="Your branch is (.*) of"
    diverge_pattern="diverged"

    if [[ ${git_status} =~ ${branch_pattern} ]]; then
        branch="(${BASH_REMATCH[1]}) "

        if [[ ! ${git_status} =~ "nothing to commit" ]]; then
            state="x "
        fi

        # add an else if or two here if you want to get more specific
        if [[ ${git_status} =~ ${remote_pattern} ]]; then

            if [[ ${BASH_REMATCH[1]} == "ahead" ]]; then
                remote="> "
            else
                remote="< "
            fi
        fi

        if [[ ${git_status} =~ ${diverge_pattern} ]]; then
            remote="<> "
        fi
    fi

    # generate an ornate prompt with git info
    echo "\n${PROMPT_BASE}${GIT_DIRTY}${state}${remote}${GIT_BRANCH}${branch}${PROMPT_TIP}"
}



# change directory:
# Push and store each folder
# change onto a stack. Also:
# automatically list directory contents
custom_cd()
{
    # Note "ls" options:
    # -L  dereference symlinks. ie use target file info
    # -t  list in time changed order
    builtin pushd "$@" > /dev/null  && printf "\n" && ls -Ltr
    # ls -Lt --group-directories-first
}

jc()  {
    # convert to jpg
    if [[ -z "$1" ]]; then
        echo "Supply an image file to be converted..."
    else
        input="$1"
        output="${input%%.*}".jpg
        convert -verbose "$input" "$output"
        echo
        ls -lhtr | tail -n 5
    fi
}


nk_old() {
    if [[ -z "$@" ]]; then printf "Usage: nk [PATH]\n"; return; fi
    [ -d "$TRASH" ] || mkdir "$TRASH"

    # Process arguments
    for file in "$@"
    do
        # 'readlink' handles symlinks, wildcards and relative paths.
        # eg:  '../*.pdf',  '../../*.pdf'
        filepath=$(readlink -f "$file")

        if [ ! -e "$filepath" ] ; then
            echo "Not found: $filepath"
            break
        fi

        # Move file to Trash.
        # Identically named files in trash will be silently overwritten(!)
        # Identically named folders in trash will NOT be overwritten.
        command mv "$filepath" "$TRASH" 2> /dev/null

        if [ $? -ne 0 ]; then
            # Command failed.
            # Probably folder exists already in trash.
            # Add timestamp and retry.
            folder_name=$(basename "$filepath")
            stamp="$(date +%Y%m%d-%H%M%S)"
            command mv --verbose "$filepath" "$TRASH"/"$folder_name-$stamp"
        fi
    done
}

### Biostars tip: "PARALLEL"
    - Dont do Bash "for" loops. Use GNU PARALLEL
    - You see when we write a for or an if in a programming
      language we are building a so called imperative program
      2 : we ask the computer to first do one thing, second at
      each step isolate another thing, then with the selected
      object do a third thing.
    - When we write our commands via GNU Parallel, we follow a so
      called de- scriptive, functional programming paradigm. We
      attempt to describe what we want with a pattern, then have
      the computer fill in the pattern and for the full command.


# Links
    - HN: Guide to XARGS       https://news.ycombinator.com/item?id=28258189
    - Scripts best practices   https://news.ycombinator.com/item?id=33354286
    - Remove color when piping https://news.ycombinator.com/item?id=36098488

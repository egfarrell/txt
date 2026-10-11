- BASH tips (top)
- UBUNTU-SPECIFIC  tips (bottom)

./oldbash-code-scripting.sh
./Emacs-bash-readline.txt
./linux-mint.txt

# video stutter on Linux mint
sudo cpupower frequency-set -g performance

# cron commands
    sudo crontab -e
    crontab -l  # local user
    sudo crontab -l  # root user
    # see all user's cron jobs
    sudo ls /var/spool/cron/crontabs/
    vim /var/spool/cron/crontabs/root


# make it hard for sudo to edit a file
    sudo chattr +i /etc/hosts

# mint: prevent auto-connect network printers
    sudo systemctl disable avahi-daemon
    sudo systemctl stop avahi-daemon
    # and (disable cups browsing)
    sudo systemctl stop cups-browsed
    sudo systemctl disable cups-browsed


# ufw
    - basic config for my laptop
    sudo ufw enable
    sudo ufw status
    sudo ufw default deny incoming
    sudo ufw default allow outgoing



# give user sudo privileges
    sudo usermod -aG sudo pywebapp
    # remove permissions
    sudo deluser pywebapp sudo
    # or
    sudo gpasswd -d pywebapp sudo


# Don't "rm" ./ and ../
    command rm -rf .[!.]*

    - The pattern .[!.]* indeed does not inherently exclude "./" 
    - The key here is how the shell interprets this pattern during filename
    expansion:

    .    : Starts with a dot.
    [!.] : Matches any single character that is not a dot.
    *    : Matches any string of characters after the initial character.

    - In most shells, when performing filename expansion (globbing), the pattern
    .[!.]* does not match ./ and ../ because the shell has a built-in mechanism
    to prevent these entries from being included in such wildcard expansions.


# Specify Server language
    # in ~/.profile or ~/.bashrc
    # Don't have Polish as my language
    export LANG=en_US.UTF-8
    export LC_TIME=en_US.UTF-8


# trailing slash "/"
    - I personally always found it intuitive. 
    - But the rules are easy to remember: 
        - dir/ means "INSIDE dir (only)", 
        - dir  means "dir AND what's inside".

# Set default $SHELL for login
    # (this was an issue at IPPT PAN)
    getent passwd enda
    # enda:x:1003:1003::/home/enda:/bin/bash
    chsh -s /bin/bash # (enter password when prompted)
    # Log out
    # Log back in
    echo $SHELL # to confirm


# ls folder, NOT folder contents! ("-d")
    ls -d                ../svn-repos/michalp/protmap
    ls -AF -o --color -d ../svn-repos/michalp/protmap


# Explanation of ls output
    $MY_NOTES/cs/misc/ls-output.txt

# Run a script in the background 
    # Nora Rosettafold workshop 2021
    nohup bash_folding.sh &
        # - "nohup" is a POSIX command meaning "no hang up". It executes
        # a command such that it ignores the HUP signal and therefore does not
        # stop when a user logs out. Output normally directed to the terminal
        # goes to 'nohup.out', if it has not already been redirected


# zst files: need conda
    conda install -f zstd
    zstd.exe -d   util-linux-2.35.2-1-x86_64.pkg.tar.zst 

# show escape codes, key codes
    showkey -a
    cat
    ctrl+v
    sed -n l

# remember previous commands
    hash
    # forget previous commands
    hash -r

# ls without colour
    # -f: do not sort, enable -aU, disable -ls --color
    ls -f 


# howto: torrent using info hash: 
    - magnet:?xt=urn:btih:35D69011F92CAFDF776EB7FB704CB17ACFA430DB
    
# Perlis Epigrams
    curl -s -L http://www.cs.yale.edu/homes/perlis-alan/quotes.html | tr "\n" " " | grep -o -e "[0-9]\+\.[^\<]*" | sed -e "s/^[0-9]\+\. //" | sort -R | head -n1 | cowsay

# Extra documentation man pages on C Libraries
    ai manpages-dev manpages-posix-dev


# LZIP (inflate GMP tar):                       
    # https://www.nongnu.org/lzip/
    ai lzip
    lzip -d gmp-6.2.0.tar.lz
    # lzip just converts it to tar, still have to untar it
    utar gmp-6.2.0.tar

# give user admin rights
    # visudo
    root ALL=(ALL) ALL
    ef   ALL=(ALL) ALL

    # helpful note:
    (nano: Ctrl-K   Cut line)
    (nano: Ctrl-U   paste line)


# print in columns
    printf "%-10s   %-30s    %-15 \n"   "$var1"  "$var2"  "$var3"

# insert filename as 1st line header in each file
    for file in *.txt; do echo "$file"$'\n'"$(cat -- "$file")" > "$file"; done

# hotstrings?
    - The hotstrings feature is also present in Linux, where they are known as
    compose sequences. The default compose sequences can be found in the Compose
    files under /usr/share/X11/locale and you can also have custom compose
    sequences in ~/.XCompose. Some of the compose sequences make use of
    a special Compose key (written <Multi_key> in the rules). You may need to go
    to the keyboard settings to enable the compose key.
    - https://en.wikipedia.org/wiki/Compose_key
    - These compose sequences also work under Wayland. The only hiccup I found
    with wayland was that include directives didnt work so I had to put
    everything in a single file.
    - or just use i3

# inputrc trick
    ".,d": "\C-adate; \C-e; date\n"
    # do something when '.,d' is pressed

# biostars tricks
    set -uex
    # -u undefined variable
    # -x shows each command

    # also: put 'echo' in front of each command to see whats happening
    # and pipe that to bash for execution!
    bash myscript.sh | bash

# cut
    # get first 3 columns of a csv
    cut runinfo.csv | cut -f 1,2,3 -d , | head -3

# gnu parallel
    # - Dont do Bash "for" loops. Use GNU PARALLEL
    # - nice tip: use "echo" while building parallel command
    cat runids.txt ! head -5 ! parallel echo fastq-dump --split-files {}

    # another example
    ls *.tar | parallel -j 8 tar -xf


# ls force two columns
    # ie trick display into 80 width
    ls -w80

# change file created date to 07-Feb-2015 (time 15:11)
	touch -t 202012071511.00 myfile.txt
	touch -t 202409171511.00 
    # hide tracks on disco
    find . -maxdepth 3 -type f -exec touch -t 202203231511.00 {} +


# find files with windows dos crlf line endings!
    find . -not -type d -exec file "{}" ";" | grep CRLF
    grep -IUlr $'\r'
    # Convert dos endings to unix
    xargs sed -i 's/\r$//' < ~/dosfiles_list.txt

# convert file encodings
    - couldnt get vim to work: :write ++enc=utf-8 russian.txt
    - iconv -f utf-16 -t utf-8 file.xml > file.utf8.xml
    - "-f" = from encoding
    - "-t" = to encoding

# lifeoverflow (cyber hacker)
    file *
    hexdump
    strings license_exe
    objdump -d license_exe
    objdump -D license_exe
    hopper (MAC)
    IDA pro
    radare2
    python convert between hex and decimal: (python) >  0x192
    python convert between hex and ascii :  (python) >  chr(0x44)
    id

# awk reoder csv columns
    awk -v OFS="," -F"," '{print $3,$2,$1}' counts.txt > reorder_counts.txt

# mimic bash completion  "double tab" file list
    # this shows all files beginning with 'a' in the current folder
    compgen  -f -- 'a' | column

# processes
    pstree

# 'man'
    - 1   # General commands
    - 2   # System calls
    - 3   # Library functions, particularly the C standard library
    - 4   # Special files (usually devices, those found in /dev) and drivers
    - 5   # File formats and conventions
    - 6   # Games and screensavers
    - 7   # Miscellanea
    - 8   # System administration commands and daemons

    man printf   # printf bash command (section 1  by default)
    man 3 printf # C library routine
    man 2 intro  # system calls intro

    also: Sander Van Vugt recommends: /usr/share/doc

# list/print readline variables
    bind -V
    bind -P
    stty -a

# unix chmod
    # u     user    owner of file
    # g     group   users who are members of the file's group
    # o     others  all who are not the owner or members of the group
    # a     all     all three groups -  same as 'ugo'

    # basic structure
        chmod {a,u,g,o}{+,-}{r,w,x} {filenames separated by spaces}

    # example
        chmod u+rwx stuff

    # make file completely readable,
    # writable, executable for ALL groups
        chmod 777 file.name

    # make the file read only for ALL groups
        chmod 444 file.name


# "del" utility I previously used as "nk"
    http://fex.belwue.de/fstools/del.html
    # NOTE!!: "del" saves deleted files in a LOCAL ".del/" folder
    # To find all my ".del" folders:
        fdd \\.del


# cat a file but scroll at fixed speed (also truncate column at 200)
    pv -L 50k cat testing | cut -c1-200

# tree: no colors "-n"
    tree -n -L 3

# get info about a file
    file HelloWorld.class
    file something.txt

# rename each file to be its parent folder
    find . -type f  -name "*.txt" -printf "/%P\n" | while read FILE
    do
        DIR=$(dirname "$FILE" )
        mv ."$FILE" ."$DIR""$DIR".txt
    done

# add filename to first line of each file
    perl -i -pe 'BEGIN{undef $/;} s/^/$ARGV\n/' `find . -name '*.txt'`
    # Sept 2020:
    for file in *.txt; do echo "$file"$'\n'"$(cat -- "$file")" > "$file"; done

# ls - long listing -simple
    ls -Gg

# expose port 8080 on remote machine
    curl -s https://pagekite.net/pk/ |sudo bash
    pagekite.py 8080 [yourname].pagekite.me

# easier urls in browser
    v /etc/hosts
    148.x.x.x myserver

# HN bash tips
    # nice one on process substitution
    https://news.ycombinator.com/item?id=14047463

# copy symlinks, but create *real* files, not other symlinks (-L)
    cp -R -L ~/bin ~/zz

# create folder/directory but test first if exists
    [ -d ./myfolder ] || mkdir ./myfolder

# encrypt/decrypt file
    # gpg encrypt:
        gpg -o myoutput.tgz.gpg --symmetric myinput.tgz
    # gpg decrypt:
        gpg myoutput.tgz.gpg

    # my old cloud routine
        gpg gpu-ssh.tgz.gpg
            gpg-agent --version
            sudo apt-get install gnupg-agent
            gpg-agent --daemon

        sudo apt-get install -y bzip2
        tar xvf $HOME/gpu-ssh.tgz && cp -v ~/gpu-ssh/* ~/.ssh && ls ~/.ssh
        rm ~/.ssh/known_hosts

    # 2021: encrypt
    # ensure gpg/ubuntu doesnt ask for passphrase. (via a GUI)
    # instead supply it on the command line.
    gpg --output aws-keypair.gpg --symmetric --batch --passphrase xxxxxx aws-keypair.pem 

    # 2021: Decrypt
    # Force gpg to ask for a passphrase
    # https://unix.stackexchange.com/questions/395875/gpg-does-not-ask-for-password/543856#543856
    gpg --pinentry-mode loopback  xxxx.tgz.gpg

# variable scope(!)
    the 'WHILE READ' is executed in a SUB-SHELL,
    so any modifications you make are
    NOT PASSED TO THE PARENT.
    # One of the many annoyances of bash scripting

# reboot the server while upgrading a distro
    sudo init 6

# forward search history (opposite to ctrl+r)
    ctrl+s

# convert from utf8 to ascii ("-f" will drop characters!)
    recode -f ascii my-utf-file.txt

# create deep nested folders on the fly
    mkdir -p        ~/one/two/three/dir
    mkdir --parents ~/one/two/three/dir

# cp: create *destination* nested folders
    # '$_' expands last argument of previous command
    touch ~/myfile.txt
    mkdir -p ~/one/two/three && cp ~/myfile.txt $_

# cp: copy *source* nested folders (to target)
    # main idea: the '--parents' refers to the *source* not
    # the *destination* (if that makes sense)

    # copy the *whole* structure to '~/target',
    # ie. don't just copy a single file 'test.txt'
    cp --parents ~/one/two/three/dir/test.txt  ~/TARGET
    # Result:
    #       ~/TARGET/one/two/three/dir/test.txt

# note: cp -p
    # The  '-p' *isnt* short for '--parents',
    # instead it preserves ownership, timestamps!

# best way to become root? (see more below)
    sudo -s
    # Aside: Check do I have sudo access?
        sudo -v

# become root / superuser!
    # 1. standard way? 'sudo' lets you run commands in your
    # *own* user account with root privileges. 'su' lets you
    # switch user so that you're actually logged in as root.
    # (Ubuntu doesn't set a root password)
    sudo su

    # 2. launch a shell as root, but don't change your
    # working directory. You get the user's environment, so
    # your ~/.bashrc is respected. Useful!
    sudo -s

    # 3. simulate a login to the root environment, your
    # working directory will be '/root', and root's
    # '.profile' etc. will be sourced as if on login. (your
    # ~/.bashrc is ignored)
    sudo -i

    # Though 'sudo -s' is convenient for giving you the
    # environment you're familiar with, I recommend the use
    # of 'sudo -i' for two reasons:

        # 1. The visual reminder you'in a 'root' session.

        # 2. The root environment is less likely to be
        # poisoned with malware, eg. a rogue line in
        # ".bashrc"

    # change to specific user
    su - guru

# show global functions (e.g. defined in .bash_aliases)
    set
    declare -f

# run glxinfo glxgears
    ai mesa-utils
    export LIBGL_DEBUG=verbose
    glxgears

# swrast error
    solution 1:
        sudo find /usr -iname "*libGL.so*" -exec ls -l {} \;
        .... some more stuff..???

    solution 2:
        export LIBGL_ALWAYS_INDIRECT=1
        this suppresses the error msg, but doesnt fix problem!

# check X11 is working
    ai x11-apps
    xclock

# make sure bash-completion is installed
    ai bash-completion

# getopts
    while getopts ":ho" opt; do
        this means "-h" and "-o" are FLAGS,
        they dont accept an additional argument

# display message box (for 2 seconds) in bash!
    ai libnotify-bin
    notify-send -t 2000 "Couldn't find window ID!"

# check last command
    rm doesnt-exist.txt
    RESULT=$?
    if [ $RESULT -eq 0 ]
        then echo success
        else echo failed
    fi
    result: echo failed

# change directory inside script
    source it!
    . ~/bin/my_script.sh

# append to multiple files
    cat somefile | tee -a *.html
    where
    -a means append

# Quirk
    "delete" current line in terminal
    ctrl+c !! (rather can ctrl+u or ctrl+k)



# "aria2c" wget/curl alternative
    # sudo apt-get install aria2
    # best params?
    aria2c -c -s 16 -x 16 -k 1M -j 1 -i dl.txt
        # -c, --continue [true|false]
        # -s, --split=<N>
        # -x, --max-connection-per-server=<NUM>
        # -k, --min-split-size=<SIZE>
        # -j, --max-concurrent-downloads=<N>
        # -i, --input-file=<FILE>

    # Tip: "kev" stackoverflow
    # download bigfile 
    aria2c -c -k1M -{x,j,s}16 --checksum=md5=dccff283f35e5153 http://mirrors..edu.cn/ubuntu-releases/14.04/ubuntu-14.04-desktop-amd64.iso


# stackoverflow "kev" handy tools
    # backup txt files
    rsync -avzm --include '*/' --include '*.txt' --exclude '*' source/ remote:target/

    # transfer file at 100kB/s
    rsync -hP --bwlimit 100 remote:file .

    # convert json to csv
    jq -r '[.field1,.field2,.field3]|@csv' input.json > output.csv

    # convert socks5 to http
    delegate -P8080 SERVER=http SOCKS=1.2.3.4:1080 ADMIN=admin@datageek.info

    # convert socks5 to http with auth
    delegated -f -P8080 SERVER=http FORWARD=socks://user:pass@1.2.3.4:1080 ADMIN=admin@datageek.info

    # zero-padding file names
    rename 's/^\d+/sprintf("%02d", $&)/e' [0-9]*

    # concat video parts (ah see my ffmpeg note!)
    printf "file '%s'\n" part*.mp4 | ffmpeg -f concat -i - -c

# eject usb stick
    sudo umount /media/98C5-1BB0/

# show whats in the usb ports
    sudo lsusb -v

# todays date
    'date' - dont use ubuntu gui!

# diff tip
    diff {old} {new}

# difference two directories
    diff -r old_dir new_dir

# colorised diff
    use "git diff"! (or vim -d either)

# 'diff' but ignore 'git'
    dif --exclude=.git notes notes_check/

# diff compare 2 directories
    diff --brief -r --exclude=".git" --exclude=".svn" dir1/ dir2/

# diff, terse output 
    diff -y --suppress-common-lines orig.txt new.txt 

# ansi codes
    Black       0;30     Dark Gray     1;30
    Blue        0;34     Light Blue    1;34
    Green       0;32     Light Green   1;32
    Cyan        0;36     Light Cyan    1;36
    Red         0;31     Light Red     1;31
    Purple      0;35     Light Purple  1;35
    Brown       0;33     Yellow        1;33
    Light Gray  0;37     White         1;37

# remove strip ansi color codes
    # method 1: (sed)
        alias plainlist="jl | sed 's/\x1b\[[0-9;]*m//g'"

    # method 2: (col)
        man {qsub} | col > {qsubhelp}

# show bash completions
    complete -p
    help complete

# locale
    # list current  :
        locale
    # show available:
        locale -a
    # create new locale:
        sudo locale-gen en_GB.UTF-8
    # set new locale:
        sudo update-locale LANG=en_GB.UTF-8

# copy listing to clipboard
    ll | xclip

# convert long list into columns
    ai bsdmainutils
    # 'column'
        cat .bitbucketrepos | column
        column .bitbucketrepos
    # 'pr'
        # 5 columns, width is 125, numbering
        pr -5 -l1 -w 125 -n .bitbucketrepos

# move multiple file extensions at once
    mv *.md *.txt ./myfolder

# quickly create numbered folders
    mkdir ./myfolder{1..10}

# Renaming/moving files with suffixes quickly:
    cp /home/foo/realllylongname.cpp{,-old}
    # This expands to:
        cp /home/foo/realllylongname.cpp /home/foo/realllylongname.cpp-old

    # The reverse (going from .cpp-old to .cpp) is:
        cp /home/foo/realllylongname.cpp{-old,}

# remove mobaxterm ctrl-h binding
    # Mobaxterm binds 'ctrl+h' to 'erase'.
    # This messes vim "replace" and tmux "jump pane".
    # ...so rebind 'erase'
    stty erase '^?'

# backup github stars
    downloadthemall
        every html file from github stars page

    # grep for starred repos
        grep -hirI 'repo-list-name' -A 9 stars* > gh_stars.html

    # edit gh_stars.html
    # (prefix each repo with github url)
        :.,$s/a\ href=\"/a\ href=\"https:\/\/github.com\//gc

# insert LAST argument from previous command
    ALT+.
    alt+1 ALT+. (2nd last argument)
    alt+2 ALT+. (3rd last argument)

    # You can also specify a specific argument number from
    # the previous command with colon notation e.g.
    # sudo dpkg -l !:2 reply

# tail --follow
    tail -f
    # output appended data as file grows
    # also:
        less +F

# extract a rar file
    dont forget the "x"
    unrar x <somefile.rar>

# cbr comics
    # 'cbr' comics are 'rar' archives
    mv story.cbr story.rar
    unrar x story.rar
    # result: lots of jpgs

# cbz comics
    # 'cbz' is a zip file
    mv comic.cbz comic.zip
    unzip comic.zip

# extract and combine a multifile rar archive
    unrar x -e taste.r00
    # (where taste.r00 is the first 1 of 15 files)

# check which video card device
    lspci | grep -i VGA

# move mv error! filenames began with "-"!!
    mv *.txt TEFL_STUFF/
    mv: invalid option -- 'g'
    Try 'mv --help' for more information.
    solution:
        mv -- *.txt
        the double-dash "--" signals we are finished with passing options

# ctrl+d
    sends an EOF character

# Find by name in OR below current directory
    # no good, passes expanded list of file names
    find . -name *.txt

    # better, passes the actual PATTERN
    find . -name '*.txt'

# tricky alias tip
    # want this:
        vim -c "normal '0"
    # do it this way:
        alias vb='vim -c "normal '\''0"'

# copy regular files and NOT
# subdirectories to new destination
    cp dir1/* dir2

# sudo cd <folder> "permission denied" error
    this is because "cd" is not a program,
    its a builtin and "sudo" only executes programs.
    solution 1:
        sudo su
        cd <folder>
    solution 2:
        sudo -i
        cd <folder>

# fold command
    # I guess you didn't know about the fold command, either...
    cat my-unformmatted-text-file.txt | fold -s > readable.txt

# locate out-of-date apt-get packages
    sudo sed -i -e 's/archive.ubuntu.com\|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list

# redirect *BOTH* standard output and standard error
# 'stout' and 'sterr' - use "&"
    tmux has-session -t "$SESSION_NAME" &> /dev/null

# check this
    # just like
        rm -r x
    # is an optimization of
        find x | xargs rm

# calculator
    dc
    "q" for quit

# use aliases in script
    #!/bin/bash
    shopt -s expand_aliases
    alias bcl='bitbucket_clone.sh'
    bcl biseps2_mag

# override a *FUNCTION*
# and use proper unix command
  command cd {some/path/here}

# override an *ALIAS*
# and use proper unix command
  \rm {somefile}

# get rid of duplicate lines
    uniq {filename}

# foreground/backgrond jobs
    jobs                # show whats running
    fg                  # bring to front
    ctrl-z              # suspend it
    bg %1               # restart job 1 in the background
    kill -9 %1          # kill background job 1

# files altered in last 5 days
    find . -mtime -5

# pad with zeros
    TASK_ID=$(printf "%0.2d" "$SGE_TASK_ID")

# split a file!
    -d numbered output files
    -l number of lines to split (1000 default)
    split -dl 10000 extract.1 extractsmall_

# quick summary of command
    whatis python

# hn news unix  commands
    bmon - less detailed iftop that doesnt require root
    pv - progress bars for pipes
    iostat - hopefully common by now. best way to peek

    # As a data guy, that post was worth it for "rs".

    There is "dstat" missing from the list. Its a tool
    that shows the information of vmstat, iostat,
    netstat and ifstat in a clearer and with colors ;)

    I use it primarly to see the used bandwidth in
    real-time. Its better than "ifstat" for that job.

# backward kill word
    alt-h

# set a specific grep color
    alias egreplink='GREP_COLOR="0;33" \egrep --color'

# less tip
    Is your “git diff” unreadable because an iPython
    Notebook base64 blob changed? In less, press “-S<enter>”
    to limit each huge blob to 1 line!

# are we running interactively?
    if [ -t 0 ]; then
        # its interactive
    fi
    # '[ ]' invokes test
    # -t makes 'test' check  a file descriptor to see if it's a terminal
    # 0 is the file descriptor for STDIN.
    # i.e. if STDIN is a terminal then ...

# are we in a login shell?
    if shopt -q login_shell ; then
        # its a login shell
    fi

# check bash version
    bash --version

# find + xargs + spaces in filenames!
    -print0
    xargs -0
    find . -type d -iwholename "$search_term" -print0 | xargs -0 ls -lh

# grep literal characters - approach 1
    # (must DOUBLE escape the minus sign!!)
    gw \\-z

# grep literal characters - approach 2
    grep -F '*^%Q&$*&^@$&*!^@$*&^&^*&^&' application.log

# globbing!!
    change directory into kep_run_template
    cd *late

# terminal funny characters or not echoing
    reset

# dymamic complete history
    ctrl+alt+i

# show octal permissions
    stat -c "%a %n" *
    where "*" can be a single filename

# good date format
    $(date +%Y-%m-%d__%H-%M-%S)

# DANGER!!!!!! delete a SYMLINK
    # normally
        rm <linkname>
    # but if link is a directory and you do
         rm <linkname>/
    # with a trailing slash,
    # then it starts to delete the actual directory contents!!!
    # it interprets the trailing slash as <linkname>/. and thinks
    # you want to remove the contents!!

# findout my ip address
    nslookup `hostname`
    host `hostname`

# export / functions
    You can export and add new variables
    to the CURRENT SHELL with a function,
    because functions execute in current shell...

# strip last component from path
    dirname
    e.g. dirname $PWD will give PARENT of current directory

# show how many connected ssh sessions
    who
    who -a
    ps auxwww | grep sshd:

# append one file to another
    cat file2 >> file1
    - The >> operator appends the output to the named file
    - or creates the named file if it does not exist.

# list number of cpu's
    cat /proc/cpuinfo
    cat /proc/cpuinfo | grep processor

# list installed printers
    lpstat -p -d

# remove alias
    unalias xxxxx

# clear directory stack history
    dirs -c

# cp and create numbered backups if risk of overwriting
    cp --backup=t <somefile> <some destination>

# cp and dont overwrite existing
    cp -n, --no-clobber

# where does symlink point to?
    # use this for my 'nk' nuke alias!
    readlink <linkname>

# "fc" edit history list
# list all recent commands from history
    fc -l

# show disk free space
    df -Th

# perform graphical file merge
    meld

# list all files without txt file extension
    ls --ignore="*.txt"
    # or all files without a dot extension
    ls --ignore="*.*"

# copy all 'sql' files to the '~/destination' folder
    # works for bash only
    shopt -s globstar
    cp ./**/*.sql ~/destination

# identify a filetype by looking at its bytes
    file -i filename

# grep locale quirk
# actually a "bracket expression" quirk
    grep ^[a-z]
    # gets changed when you change the locale
    # from C to en_GB etc...
    # One moral is to use
    # [[:upper:]] and [[:lower:]]

# whats hogging the CPU?
    top -u USER
    top -u ef

# networky stuff
    host
    nslookup
    whois
    nmap - python program, shows what ports open etc
    # Show wireless device(s)
        iw dev
        cat /proc/net/wireless
        nmcli radio wifi off
        nmcli radio wifi on



# what shell?
    # which bash
    echo $SHELL

# what is "rc"
    # stands for "run control"

# traceroute <WEBSITE>
    # display router path to a website

# change 'ownership' of directory (3rd column)
    # (from root to ef)
    chown -R ef /var/www

# Change 'group' of a file (4th column)
    sudo chgrp -R newgroup /path/to/folder


# remove a directory
    # force (recursively)
    rm -rf <DIRECTORY_NAME>

# show shell readline commandline key bindings
    bind -P
    set -o vi
    set -o emacs

# command line yank previous command back
    ctrl-y

# list files by date modified
    ls -t   newest at top
    lst -tr newest at bottom (ie reversed)

# search bash history search-i-reverse
    ctrl+r  REVERSE incremental
    ctrl+s  FORWARD incremental
    ctrl+g  CANCEL search

# alternative way to define grep as an alias,
    # take the SEARCH PATTERN
    # from standard intput (stdin)
    -f    take search pattern from file
    # (in this case from stdin)
    alias n='grep -rilf /dev/stdin /home/ef/Documents/notes <<<'

# capture media stream
    rtmpdump

# locate files quickly
    locate cosmo

# terminal freezes
    Ctrl-s freezes terminal, Ctrl-q resumes
    stty -ixon -ixoff
    gets rid of this behaviour

# View graphics in terminal
    netpbm suite of utilities
    pngtopbm, pngtopam

# display png files from CLI
    zgv

# less command
    is very useful, will open pdf, word, deb, tar files

# login as root
    su -

# login as another <user>
    su efarrell
    su <user>

# change to directory
# execute a command
# then drop back to your current directory
    (cd $DIR; command;)

# close shell
# but keep processes open
    disown -a && exit

# rerun last command
# global replace "foo" with "bar"
    !!:gs/foo/bar
    ^foo^bar^:&

# rerun last command
# replacing "foo" with "bar"
    ^foo^bar

# Rerun last command as root
    sudo !!

# edit command line in default editor
    emacs mode: Control-x-e
    vi mode:    ESC, v

# source (refresh) .bashrc and .bash_aliases
    . .bashrc
    source .bashrc

# Printer Management
      lpstat -o       # show queue
      lpstat          # show print jobs
      cancel 158      # cancel print job

# Search bash history for TWO words, ignoring CASE
    history | egrep -i "colorindex|guake"

# change to previous directory in bash
    cd -

du -shx                             # Norbert 'du' command
du -h --max-depth 1 | sort -h -r    # directory sizes, 1 level down, sorted BIGGEST FIRST
du -h --max-depth 2                 # directory sizes (this examples goes 2 levels down)
du -h | sort -h                     # directory sizes with human readable sort
ls -p | grep -v /                   # list only files
ps -ef                              # show all running processes with extra info
touch                               # create empty file
env                                 # show environment variables
?                                   # single character e.g. ?.txt = 1.txt = a.txt

touch *.dat                         # Doesnt change contents but updates file timestamps.
ls -t                               # List things by age, youngest first
ls -a                               # All files (including hidden)
ls -F                               # File Type (@ symbolic link) (* executable) (/ directory)(~ ??)
ls -aF                              # Shorter! (Doesnt work for all commands or verbose flags)
ls -R                               # Drill down - "recursive"
cat file1.txt                       # print out on screen
more file1.txt                      # [SPACE] down
less file1.txt                      # [PAGE UP] [PAGE DOWN] q to quit

mkdir, rmdir                        # make, delete directories
rm temp/*                           # delete everything in temp. Needed before a "rmdir"
rm -R temp/*                        # delete everything in temp AND below (dangerous!)
rm *.t??                            # wildcard matching
wc *.txt                            # count number of words, lines, bytes in text file
sort grocery_list.txt               # alphabetical sort



# ---------------------
# ubuntu-specific  tips
# ---------------------

# Show how much memory is used
    free -m -h

# Permanently change keyboard layout
    v /etc/default/keyboard
    # ~ $ setxkbmap -query
    # rules:      evdev
    # model:      pc105
    # layout:     gb,pl
    # variant:    ,
    # options:    grp:shift_caps_toggle

# list running services
    service status --all

# Debian Ubuntu connection
    # 'sid' is the development distro of Debian

    - Ubuntu            Debian  
    - ------            ------  
    - 21.04  hirsute    bullseye/ sid   - 11
    - 20.10  groovy     bullseye/ sid
    - 20.04  focal      bullseye/ sid

    - 19.10  eoan       buster  / sid   - 10
    - 19.04  disco      buster  / sid
    - 18.10  cosmic     buster  / sid
    - 18.04  bionic     buster  / sid

    - 17.10  artful     stretch / sid   - 9
    - 17.04  zesty      stretch / sid
    - 16.10  yakkety    stretch / sid
    - 16.04  xenial     stretch / sid

    - 15.10  wily       jessie  / sid   - 8
    - 15.04  vivid      jessie  / sid
    - 14.10  utopic     jessie  / sid
    - 14.04  trusty     jessie  / sid

    - 13.10  saucy      wheezy  / sid   - 7
    - 13.04  raring     wheezy  / sid
    - 12.10  quantal    wheezy  / sid
    - 12.04  precise    wheezy  / sid
    - 11.10  oneiric    wheezy  / sid

    - 11.04  natty      squeeze / sid   - 6
    - 10.10  maverick   squeeze / sid
    - 10.04  lucid      squeeze / sid


# Nice: show system info
    inxi -F

# Ubuntu UI Appearance
    # Merge top bar and dock
    # https://askubuntu.com/questions/1254767/ubuntu-20-top-dock-location

# fix MS Teams error
    # - version 1.4.00.4855 
    # - edit: 
        - /usr/bin/teams
    # - ensure last line reads:
        # - ("$@" was in the wrong place)
        - nohup "$TEAMS_PATH" "$@" --disable-namespace-sandbox --disable-setuid-sandbox  > "$TEAMS_LOGS/teams-startup.log" 2>&1 &

# Google image webp format
    sudo apt-get install webp
    cwebp -q 90 example.jpg -o output.webp
    dwebp angel.webp -o capture.jpg

# better microphone recording
#   - alsamixer
#   - Press "F4" to input settings
#       - then do this:
        - $MY_IMAGES/cs/alsamixer-best-settings.jpg

# Homebrew
#   - Works on Linux too... can install into $HOME
    - https://docs.brew.sh/Homebrew-on-Linux

# CONTROL bluetooth earpod volume
    - amixer commands WONT CONTROL the volume directly
    - https://unix.stackexchange.com/questions/340766/change-volume-on-bluetooth-speaker-with-amixer

    - These commands will:
        pactl set-sink-volume bluez_sink.37_70_49_3B_48_C4.a2dp_sink +3%
        pactl set-sink-volume bluez_sink.37_70_49_3B_48_C4.a2dp_sink -3%

    - Note: to find audio "sinks":
        pacmd list-sinks | grep name:


# INCREASE bluetooth earpod volume
    # WARNING:
    # This change "--plugin=a2dp" blocks my K380 keyboard from working
    # Later: Actually, this change isn't usefuly anymore...
            v /lib/systemd/system/bluetooth.service 
            # - Change this:
                - ExecStart=/usr/lib/bluetooth/bluetoothd
            # - To:
                - ExecStart=/usr/lib/bluetooth/bluetoothd --plugin=a2dp
            # - Restart services:
                sudo systemctl daemon-reload  
                sudo systemctl restart bluetooth  


# PAIR bluetooth earpods
    sudo apt-get install pulseaudio-module-bluetooth
    sudo killall pulseaudio
    pulseaudio --start 
    sudo systemctl restart bluetooth


# Reduce white-point of screen
    redshift -g 1:1:0.4 -O 3500

# Increase contrast
    xgamma -gamma 1.5

# redshift colour temperature (night mode)
    ai redshift
    ai redshift-gtk
    redshift -O 3500
    redshift -x

# Get touchpad to double-click
    # GTK 2
        "$HOME/.gtkrc-2.0"
        "$HOME/.gtkrc-2.0.mine"
            # add:
            gtk-double-click-time=1000

    # GTK 3
        $HOME/.config/gtk-3.0/settings.ini 
            # add:
            gtk-double-click-time=1000


# Fine control over screen brightness
    # new way
        ~/bin/change-brightness.sh
        # add 'tee' to sudoers
            vim /etc/sudoers
            ef ALL = NOPASSWD: /usr/bin/tee

    # old way: before Xorg/Wacom disaster
        ai xbacklight
        c /usr/share/X11/xorg.conf.d/
        v 20-intel-brightness.conf
        - PASTE into 20-intel-brightness.conf:
            Section "Device"
                    Identifier      "Card0"
                    Driver          "intel"
                    Option          "Backlight"     "/sys/class/backlight/intel_backlight"
            EndSection
        - Reboot
        - (I have "C-W-Up", "C-W-Down" defined to control brightness)



# Automatically enable touchpad "tap to click"
    sudo mkdir /etc/x11/xorg.conf.d
    touch /etc/X11/xorg.conf.d/99-synaptics-overrides.conf
    # Then enter:
        Section  "InputClass"
            Identifier  "touchpad overrides"
            Driver "libinput"
            MatchIsTouchpad "on"
            Option "Tapping" "on"
            Option "TappingButtonMap" "lmr"
        EndSection


# Manually enable touchpad "tap to click"
    # - find id of touchpad (e.g. 14)
        xinput
    # - display property ID of "Tapping Enabled" ----> 324
        xinput --list-props 14
        # - then enable tapping. (note: 324 = Tapping Enabled)
        xinput --set-prop 14 324 1

# 15 Oct 2020 Disaster: "nmtui"
    - Bad evening, Acer laptop keyboard/mouse not working
    - wacom tablet messed settings
    - boot into grub command line (hold SHIFT+ESC)
    - get grub menu: type normal, then hold SHIFT+ESC
    - connect to network:
        - get root command line
        -  Use "nmtui" gui (to connect to iphone)
    - final fix:
        sudo apt install xserver-xorg-input-all

# Get all ms fonts on linux
    - https://needforbits.wordpress.com/2017/07/19/install-microsoft-windows-fonts-on-ubuntu-the-ultimate-guide/

# Set Default file
    - The list of program that is displayed when right-clicking on a file in
    PCManFM is the combination of:

        - mimeinfo.cache
        - mimeapps.list

    - The default program that is launched when you double-click on a file in
    PCManFM is (first match wins):

        - The one from ~/.local/share/applications/mimeapps.list
        - The one from ~/.local/share/applications/defaults.list
        - The one from /usr/local/share/applications/defaults.list
        - The one from /usr/share/applications/defaults.list
        - The first one from /usr/share/applications/mimeinfo.cache


# Create a mount to BOX webdav
    ./box_webdav_address.txt

# PERSIST screen resolution with xrandr
    - create file: $HOME/.xprofile
    - add 'xrandr' commands into it
    - ah didnt really work, got intermittent errors

# Force power-button to shutdown immediately
    - Create file:
        /etc/acpi/events/power
    - Insert lines:
        event=button/power
        action=/sbin/shutdown -h 0
    - Execute
        sudo service acpid restart


# Customised keyboard shortcuts / hotkeys
    - ai autokey-gtk
    - config folder:
        - $HOME/.config/autokey/data/My\ Phrases

# lubuntu power manager battery icons
    gdebi-gtk elementary-xfce-icon-theme_0.15.1-1_all.deb
    ai xfce4-battery-plugin
    # (Added battery plugin to panel. This was enough to trigger the normal xfce
    # indicator icon. Then I removed the battery plugin again)

# extract pdf images
    pdfimages lec06.pdf ./myimages

# check temperature
    cat /sys/class/thermal/thermal_zone0/temp
    ai lm-sensor fancontrol

# monitor hard disk usage
    sudo fatrace

# disable mouse pad
    ai xinput
    xinput list
    # if touchpad is device '12' then:
        xinput --disable 12

# unattended upgrades
    to add:
        sudo apt install unattended-upgrades
    to remove:
        apt-get remove update-manager

# ubuntu / windows dual-boot clock time (1 hour mismatch)
    # https://askubuntu.com/questions/169376/clock-time-is-off-on-dual-boot
    - linux:    assumes bios clock is UTC
    - windows:  assumes bios clock is local time
    - Solution: force linux to use bios clock as local:
                hwclock --systohc --localtime



# systemd handy
    systemd-analyze plot >  ~/output.html
    systemctl show [service name]
    systemctl daemon-reload
    systemctl list-dependencies

# systemctl
    systemctl list-unit-files | grep enabled
    systemctl list-unit-files | grep disabled

    # start on boot:
    sudo systemctl enable docker
    sudo systemctl disable docker

    # start/stop service
	sudo systemctl stop docker
	sudo systemctl start docker


# ubuntu 17.04 DNS lookup problems
    tweak systemd-resolved
        https://superuser.com/questions/1153203/ubuntu-17-04-systemd-resolved-dns-lookups-randomly-fail

    Note: to re-enable systemd-resolved
        systemctl enable systemd-resolved.service
        systemctl start systemd-resolved.service

    Another option: disable “DNSSEC”
        - You just have to open /etc/systemd/resolved.conf
        - goto “DNSSEC” and replace “allow-downgrade” with “off“

    also:
        sudo rm -f /etc/resolv.conf
        sudo ln -s /run/systemd/resolve/resolv.conf /etc/resolv.conf
        sudo systemctl restart systemd-resolved

    Final solution: (get rid of systemd-resolved!!!)
        sudo apt-get install dnsmasq
        sudo systemctl stop systemd-resolved
        sudo systemctl disable systemd-resolved
        systemctl status dnsmasq
        sudo systemctl stop dnsmasq
        sudo systemctl start dnsmasq

        v /etc/NetworkManager/NetworkManager.conf
            [main]
            dns=dnsmasq


        sudo systemctl restart NetworkManager
        sudo rm /etc/resolv.conf; sudo ln -s /var/run/NetworkManager/resolv.conf /etc/resolv.conf

        random HN tip:
            - On my domain controllers (where I absolutely cannot have anyone
            touching the conf), I just chattr '+i /etc/resolv.conf.'
            - That prevents anything, even root, from changing the file, unless
            chattr -i is called first.


wireless performance (ubuntu 17.04)
    # get wireless manufacturer
    sudo lshw -C network
    # My case: "RTL8723BE PCIe Wireless Network Adapter"
    # My case: Then type:
    sudo tee /etc/modprobe.d/rtl8723be.conf <<< "options rtl8723be ant_sel=1"
    # then reboot. This will set correct antenna and fix poor signal issue.
    # see more parameters:
    modinfo rtl8723be
    # other options for: '/etc/modprobe.d/rtl8723be.conf':
    options rtl8723be fwlps=N ips=N swlps=N swenc=Y disable_watchdog=1 ant_sel=1


# Wow!! April 2017
    - Ubuntu needs "$HOME/.profile" to source "$HOME/.bashrc"
    - Never knew that before!
    - I deleted "$HOME/.profile" when uninstalling RUST ...
    - ... and then my ".bashrc" wasnt sourced!
    - another profile note:
        -  (derby college) it looks like all the scripts in /etc/profile.d are
        sourced aswell (eg. conda.sh)

# ubuntu appearance

grey desktop wallpaper
    sudo cp ~/bin/lubuntu/grey-wallpaper-favourite.jpg /usr/share/lubuntu/wallpapers/

# default lubuntu start button icon
    /usr/share/lubuntu/images/lubuntu-logo.png
    (to change: right-click start button: "menu settings")

# gnome terminal background color
	#060606

# good theme lxde:
	* humanity dark (icons)
	* surreal (brown windows)
    * main theme: statler (old one in dropbox)
    * font: droid sans
    * font: tahoma

# centos customise!
	copy themes to ~/.themes
	copy icons to  ~/.icons

# Window Manager:
    OPENBOX

# System font:
	Tahoma 10pt
	use msfonts.sh to setup microsoft fonts on Ubuntu

# Widgets:
	lubuntu-default     - good enough but clashes with sublime text
	OLD: shiki-statler  - dark brown, faded menus, in dropbox, low CPU usage
	OLD: shiki-Wise     - old version, dont use! Overloads CPU!!!

# window-borders:
    Other:
        Switch off window titles using "lxappearance"

# favourite desktop color:
	#344131

# LXDE panel settings for nice look
	height 22, icons 19, solid with opacity, icon theme: humanity

# lubuntu map control+backspace key
    <keybind key="C-BackSpace">

# add new network connection
    nm-connection-editor

# wireless not connecting ubuntu 12.04
    sudo service network-manager restart

# passwords & keys app (gnome keyring)
    ai seahorse

# X11 remote display xpra
    ai xpra

    # On remote server:
        xpra start :100
        DISPLAY=:100
        xterm&

    # From local machine; SSH to remote :
        check that DISPLAY is back to "localhost:10:0" and not ":100"!
        xpra attach :100
            "xterm" will appear

# show all startup applications in lubuntu 12.04
    sudo sed -i 's/NoDisplay=true/NoDisplay=false/g' /etc/xdg/autostart/*.desktop
    # (now you can enable/disable them through the GUI)

# xorg tips
    # create xorg.conf (even when X server is running)
        X :1 -configure
        # (creates a file: ~/xorg.conf.new)
    # xorg logs
        /var/log/

# ubuntu 12.04 customise services
    ai rcconf
    ai bum
    sudo ln -s /bin/whiptail /usr/bin/whiptail
    rcconf

# create bootable usb iso
    ai usb-creator-common

# to install add-apt-repository:
    # v12.04 and below
        ai python-software-properties
    # v12.10 and above
        ai software-properties-common

# zoom with the mouse
    control + mouse wheel
    also works with Firefox, Word etc

# really turn off monitor
    xset dpms force off

# reboot/restart VPS
    sudo reboot

# ubuntu 12.04 remove envelope in status panel
    ar indicator-messages

# set default app for pdfs
    xdg-mime default mupdf.desktop application/pdf

# top
    press "1" to see all the cpus

# check which video card device
    lspci | grep -i VGA

# install nvidia drivers for DELL laptop
    http://www.nvidia.com/object/unix.html
    Linux x86/IA32
       Latest Legacy GPU version (304.xx series): 304.125

# set date timezone
    sudo dpkg-reconfigure tzdata
    stay in sync with other servers (starts daemon)
    ai ntp

# xsane (image scanner)
    - change filetype to jpg
    - also change option to "multipage"

# volume control from commandline/terminal
    amixer
    alsamixer

# install mathjax fonts
    ai fonts-stix
    sudo fc-cache -f -v

# see what process changed a file
    service auditd status
    sudo auditctl -w /home/ef/.cache/ctrlp/mru/cache.txt -p war -k ~/password-file
    sudo ausearch -f cache.txt -i

# show repositories
    cat /etc/apt/sources.list
    ls /etc/apt/sources.list.d/*.list

# start gnome terminal maximised
	gnome-terminal --window --maximize

# debian deb packages
    # I have 'dpkg' aliases in: ~/.bash_alises
	sudo dpkg -i {{somepackage.deb}} # install package directly
	sudo dpkg -r {{somepackage.deb}} # remove package directly
	dpkg -s < package_name >         # check package version
    dpkg -L libhdf5-dev              # list contents (apt-get)
    dpkg -c teamviewer.deb           # list contents of deb (apt-get)

# disable error reporting apport
	/etc/default/apport
	Change the line that says enabled=1 to enabled=0 to disable Apport.

# convert mp3 to lower size
	lame -b 32 existing.mp3 converted.mp3

# restart X-Server
	ctrl+alt+backspace

# best fast ubuntu pic viewer
	gpicview - very fast

# take screenshot of ACTIVE window
	ALT+printscreen

# where are audio cds mounted?
	/run/user/s/gvfs

# manage unix CUPS Printers!
	http://localhost:631

# trash-cli commands (names confusing)
	trash-put
	trash-list
	trash-empty
	restore-trash

# location of recycle/trash bin
	~/.local/share/Trash

# bluetooth app (seems to handle everything)
	ai bluez
    # these are handy too:
    sudo systemctl disable bluetooth.service
    sudo systemctl enable bluetooth.service
    systemctl status bluetooth.service
    sudo systemctl start bluetooth.service


# check distro (ubuntu) version
	cat /etc/*release
	lsb_release -a

# convert caf (apple core audio format) to mp3
	ai pacpl
	pacpl me.caf -to mp3

# rip DVD
	acidrip

# rip cd
	sound-juicer

# get system info
	lshw

# hide mouse pointer
        URxvt*pointerBlank: true
    or!
        ai unclutter
        unclutter -root -idle 1
    or!
        hppc app!
        https://github.com/Aktau/hhpc

# autostart Lubuntu application
    Old:??
        copy nvPY.desktop to ~/.config/autostart
    2020:
        edit file: ~/.config/lxsession/Lubuntu/autostart
        Add bash commands there...

# debian package repo for java vm
	http://ppa.launchpad.net/webupd8team/java/ubuntu

# lubuntu envelope in sys tray
	sudo apt-get remove notifiation-daemon

# Old archives for 18.04 bionic
    Add to /etc/apt/sources.list
    deb http://us.archive.ubuntu.com/ubuntu/ bionic main restricted

# autologin in Lubuntu 18.04
    - ENABLE autologin
        - edit /etc/lightdm/lightdm.conf
        - and, append the file with:
        - [Seat:*]
        - autologin-user=<user_name>
        - autologin-user-timeout=0

    - DISABLE autologin
        - edit /etc/lightdm/lightdm.conf
        - comment out the lines "#"
        - [Seat:*]
        - #autologin-user=<user_name>
        - #autologin-user-timeout=0


# customise touchpad
	sudo apt-get install gsynaptics
	gpointing-device-settings

# guake solarized colours
    make sure guake transparency is swtiched off!!
    (in order to get solarized colours)

# guake run
    guake -t -n $PWD

# Run tmux automatically from Guake
# Put following in "guake.desktop"
	Exec=guake -e 'tmux'

# split iso into smaller files
    tar cvzf - filename.iso | split -d -b 700m - filename.iso.tar.gz.

# hostname
	stored in /etc/hostname

# Method 1: Debian key probs
	Ive created alias "ak"
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys <KEYNAME>

# Method 2: public key errors for apt-get
	apt-get install debian-archive-keyring
	gpg --keyserver subkeys.pgp.net --recv-keys KEYNUMBER
	gpg --armor --export KEYNUMBER | sudo apt-key add -

# Guake Remove border
	# Run gconf-editor.
	# apps->guake->general and unmark `show_resizer' option.

# pcmanfm folder mapping
# config files which maps Desktop, Pictures, Videos etc
	~/.config/user-dirs.dirs

# spacefm file manager
    # supress random warning message about root
    touch /etc/spacefm/ef-as-root

# avahi-daemon taking resources
	sudo apt-get remove avahi-daemon

# gnome-terminal bug: menubar always displayed.
	old ubuntu: sudo apt-get remove appmenu-gtk3 appmenu-gtk appmenu-qt
	ubuntu 17.04: edit menu -> preferences -> uncheck tick box!

# Ubuntu repositories
	/etc/apt/sources.list	# the main ubuntu stuff
	/etc/apt/sources.list.d # directory with my personal ppa's

# get rid of apt package indexer - gobbling resources
	sudo apt-get purge apt-xapian-index

# or change apt-xapian line in cron (put in --update)
	"/etc/cron.daily/apt"
	"/etc/cron.weekly/apt-xapian-index"
	nice -n 19 ionice -c3 update-apt-xapian-index --update -q

# Change default OS in GRUB menu
	gksu leafpad /etc/default/grub
    sudo grub-update

# GRUB options
    - 'GRUB_CMDLINE_LINUX' -> always effective.
    - 'GRUB_CMDLINE_LINUX_DEFAULT' -> effective ONLY for normal boot (NOT during recovery mode).

# Change pcmanfm desktop wallpaper etc (ie desktop settings)
	pcmanfm --desktop-pref

# Quit Guake Terminal
	"Shift + Ctrl + Q"

# Lubuntu
	lxappearance    # configure theme, widgets
	lxsession-edit  # Lubuntu startup programs
	lubuntu-logout  # Lubuntu Logout Menu

# show x11 properties of a window
	xprop
	# then click on a window

# add application to Lubuntu MENU:
	# Put .desktop files in the following directories
	/usr/share/applications
	/home/ef/.local/share/applications

	# Set **Categories** to specify submenu
	Categories=Development;Utility;

# Create shortcut ".desktop" file for Lubuntu
	lxshortcut -o  ~/Desktop/my_shorcut.desktop

# folder/file contents open in WEB BROWSER instead of pcmanfm
	install libfile-mimeinfo-perl
	also check ~/.local/share/applications/mimeapps.list

# List all software youve installed
	sudo dpkg --get-selections > ubuntu-installed-software

# OPENBOX configure Keyboard shortcuts
	sublime_text ~/.config/openbox/lubuntu-rc.xml
	openbox --reconfigure

# Location GTK themes in Lubuntu
	/user/share/themes/<THEME NAME>/gtk-2.0/
	# then edit the "gtkrc" file

# Edit Default Application For Debian Packages
	galternatives

# Specify Default Ubuntu Browser
	sudo update-alternatives --config x-www-browser

# give other terminal applications
# bash command line functionality
	rlwrap

# Gnome PARTition EDitor
	gparted

# mount device
	mount /dev/sda1 /media/cdrom

# unmount
	# note its not "unmount"!
	umount /media/cdrom

# Gnome Terminal - create new tab
	"Ctrl-Shift-T"

# Gnome Terminal Config file:
	~/.gconf/apps/gnome-terminal/profiles/Default/%gconf.xml

/etc/profile 			# system-wide shell startup script
/etc/bash.bashrc 		# system-wide shell startup script (sets options)
~/.profile 				# user-level shell startup script
~/.bashrc 				# user-level shell startup script

# location of deb packages from SYNAPTIC downloads
	/var/cache/apt/archives

# execute command as root user
	sudo

# execute command as root user for **GUI** apps
	gksu <command>

# Start tty session
    Ctrl-Alt-F1
    - Oct 2020: This saved me when I messed up my lightdm login screen setting
    up dual monitors!

# Gedit plugins (system)
	/usr/lib/gedit-2/plugins

# Gedit styles (system)
	/usr/share/gtksourceview-2.0/styles

# defaults MIME
	# (system) All available
        /usr/share/applications/mimeinfo.cache

	# (system) Default App
        /usr/share/applications/defaults.list; link ----> /etc/gnome/defaults.list

	# (user) All available
        ~/.local/share/applications/mimeapps.list

	# (user) Default App
        ~/.local/share/applications/defaults.list

# Stop/Start Gnome completely! (gdm=GNOME Display Manager)
	sudo service gdm stop
	sudo service gdm start

# remove old apt packages cache
    sudo apt-get clean

# control dual monitors
    arandr

# ocr package
    sudo add-apt-repository ppa:ferramroberto/lffl
    au
    ai ocrfeeder
    need python image library:
        ai python-pil

# packages held error
    use aptitude, it tries harder than apt-get
    sudo aptitude install

# openGL mesa problems (ubuntu 15.04)
    just installed ubuntu-desktop

# detect sd card (ubuntu 12.04)
    sudo modprobe -r r852; sudo modprobe -r sdhci_pci; sudo modprobe r852; sudo modprobe sdhci_pci

# display calender
    cal
    ncal -bM

# shutdown/power-off server from commandline
	poweroff
    sudo shutdown -h now
    # shutdown in 5 minutes
    sudo shutdown +5
    # I have a "down" alias too

# links

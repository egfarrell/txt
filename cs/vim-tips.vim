" vim tips

" Handy
"   compile static vim: https://github.com/ericpruitt/static-glibc-vim
"   OSC52: It's only the *REMOTE* vim instance that needs 'vim-oscyank' to be enabled!
"   Paste: PRIMARY clipboard "*": shift+insert
"   Paste: CLIPBOARD         "+": ctrl+alt+v
"   Digraphs: :digraphs
"   HACK: for tmux navigation: $MY_NOTES/cs/messy-vim-TAB-hack.txt


" Handy command
    " 'Unjustify' a cropped / justified paragraph
    :g/./ .,/^$/-1 join

    " Handy for dealing with dashes etc in Windows Gitbash
    set fileencodings=utf-8,cp1252

" convert markdown math delimiters
.,$s/\\(\ /`/gc
.,$s/\ \\)/`/gc

" make '/' NOT a word boundary 
    et iskeyword+=/

" unusual HOME path expansion
    " note the tilda "~"
    let path       =  expand('%:p:~:h')

" replace: "carriage return" v "newline" !!
    SEARCHING:  '\r'  ->  carriage return
                '\n'  ->  new line

    REPLACING:  '\r'  ->  new line
                '\n'  ->  null byte

" passwords, decryption/encryption
    - add password     :X
    - remove password  :set key=

" scroll "N%" of a file
    - normal mode: 20%
    - normal mode: 70%

# Use my static compiled vim
# # (compiled on Ubuntu 9.10)
export EDITOR=$HOME/my-vim-ubuntu-9-10/vim.sh

" change regex match group to UPPERCASE
    .,$s/file/\U&/gc
    "&" references matched text

    &     "the whole matched pattern
    \0    "the whole matched pattern
    \1    "the matched pattern in the first pair of \(\)
    \2    "the matched pattern in the second pair of \(\)
    \9    "the matched pattern in the ninth pair of \(\)
    ~     "the previous substitute string
    \L    "the following characters are made lowercase
    \U    "the following characters are made uppercase
    \E    "end of \U and \L
    \e    "end of \U and \L
    \r    "split line in two at this point
    \l    "next character made lowercase
    \u    "next character made uppercase

" remove filename from end of path
                      .,$s/\(.*\/\).*/\1/gc
    copy this much -->     \(.*\/\).*/\1   

" check if vim function exists
    if exists('*uniq')
    endif

" count number of characters
    g <ctrl+g>

" have a custom .vimrc in different project folders
    set exrc
    set secure
    however my alias: "vim -u $HOME/.vimrc" disables "exrc" anyway

" termdebug stuff
    " start gdb
    file ko
    b main
    run

    " old mapping
    nnoremap ,w :call TermDebugSendCommand('where')<CR>

    " If I lose the gdb window
        1. find gdb buffer number eg 33
        2. <C-W>33^

        R          :Run
        B          :Break       Set breakpoint
        X          :Clear       Clear breakpoint under cursor
        S          :Step        Step into a function
        <CR>       :Over        "Next"
        F          :Finish      finish current function
        C          :Continue    keep running till next breakpoint
        Q          :Stop



" Popup stuff
    call popup_atcursor(infolist, #{  border: [], borderchars: ['─', '│', '─', '│', '┌', '┐', '┘', '└'], borderhighlight: ['LineNr'], highlight: 'StatusLine', padding: [0, 1, 0, 1]} )
    " timer example
        call popup_atcursor(infolist, #{   time: 1800, highlight: 'Visual', padding: [1, 3, 1, 3]} )
    " padding order:
        " [top, right, bot, left]


" CAMK compile/build vim
    " old way: ./archive/vim_build.txt

    " remove existing
    sudo apt-get remove  -y  vim vim-runtime gvim
    sudo apt-get remove  -y  vim-tiny vim-common vim-gui-common
    sudo apt-get install -y  build-essential
    sudo apt-get install -y  libncurses-dev
    " sudo apt-get install -y  ncurses-dev  ??? old one from ./archive/vim_build.txt
    sudo apt-get install -y  libx11-dev
    sudo apt-get install -y  libxtst-dev libxt-dev libsm-dev libxpm-dev

    " CLONE:
        git clone --depth 1 https://github.com/vim/vim.git
        cd vim
    " Download SINGLE tag
        git fetch origin tag v8.2.3458 --no-tags
        git fetch origin tag v8.1.0034 --no-tags # remarkable tablet vim
            " Get ALL tags
                    " g fetch --tags
            " what tags have we?
                    " g describe --tags
    " Create new branch
        g co tags/v8.2.3458 -b v8.2.3458
        g co tags/v8.1.0034 -b v8.1.0034 # remarkable tablet vim


    " BUILD:
        " with X11:
            ./configure --with-x --with-features=huge --prefix=$HOME/.myvim-full-X11
            make && make install

        " without X11 (when SSHing)
            ./configure  --with-x=no --with-features=normal --enable-gui=no --prefix=$HOME/.myvim-no-X
            make && make install

    " ADD PATHS:
        " ~/.bashrc.local
        " see example here: $HOME/dotfiles/local/Lubuntu-rakija//bashrc.local

"CAMK tweak for diff not refreshing (file: diff.c)
    Line 963:
    /* if (had_diffs || curtab->tp_first_diff != NULL) */
    /* { */

    // ef-change: always trigger redraw!
	diff_redraw(TRUE);
	apply_autocmds(EVENT_DIFFUPDATED, NULL, NULL, FALSE, curbuf);

    /* } */

" Snipmate important functions
    - 1. snipMate#TriggerSnippet
    - 2. snipMate#GetSnippetsForWordBelowCursor
    - 3. snipMate#expandSnip
    - 4. insert_snippet_text <--- here I removed the 2 spaces prob


" Gotcha
    - Vimscript String comparision is often case insensitive (depends on user settings)
    - So... use...
        - Always Case-sensitive:   if "foo" ==# "FOO"
        - Always Case-insensitive: if "foo" ==? "FOO"

" Old percent code
        let percent    =  line('.') * 100 / line('$') . ' %'
        let loc        = percent . ' > ' . lines

" vimscript: wait until press any key
    " like a breakpoint when debugging
    call input('Details are: ' . snippet[0] . '<-end')
    call input('Press any key to continue')

" Custom Identer
    force indentation: "="
    " - Set the "equalprg" option to the filter name, which causes the indenting
    " command "=" to invoke the filter rather than the built-in indenter.

    " You might want to make the equalprg setting local to a file based on its extension:
    autocmd bufread,bufnewfile *.lisp,*.scm setlocal equalprg=scmindent.rkt
    " or its filetype:
    autocmd filetype lisp,scheme setlocal equalprg=scmindent.rkt


" open vim at a specific tag
     vim -t [tag name]
     (must have a tags file created)

" strange performance tips
    " use the old regex engine, (for parsing syntax)
    " apparently quicker scrolling
    set re=1

    " random tip I found. Stops 'screen flicker'
    " when I open vim in GNUrootDebin.
    set t_ti= t_te=

" debian GNUROOT debian
    " Fix annoying display problem when scrolling by 1 line
    set scrolljump=2
    " Also this makes better use of the screen
    set showtabline=0


" large file editing:
    filetype off
    syntax off
    set noswf bh=unload fdm=manual nofen cpt-=wbuU nobk nowb ul=-1 ft= syn=

" name your new command/function in lower case?
    :AlterCommand ls LS

"HTML editing
    dit: delete  inside tags
    cit: change  inside tags
    ci>: rename tag

" :AsyncRun
    - is actually a vimscript plugin in my bundle folder
    - :AsyncStop will kill all background jobs

" X11 Clipboard support
    Install the package "vim-gnome" instead of "vim".
    It comes with clipboard enabled.

" :scriptnames
    - List all sourced script names, in the order they were sourced.
    - The number is used for the script ID |<SID>|.

" Nice vimscript function backtrace
        function! Backtrace(trace)
            return map(split(substitute(a:trace, '^function ', '', ''), '\.\.'), 'substitute(v:val, ''\m\[\d\+\]$'', "", "")')[:-2]
        endfunction
        echo Backtrace(expand('<sfile>'))

" vimscript: functions as variables(!)
    function! Append(l, val)
        let new_list = deepcopy(a:l)
        call add(new_list, a:val)
        return new_list
    endfunction

    function! Pop(l, i)
        let new_list = deepcopy(a:l)
        call remove(new_list, a:i)
        return new_list
    endfunction

    :let funcs = [function("Append"), function("Pop")]
    :echo funcs[1](['a', 'b', 'c'], 1)

" show contents of registers
  :reg

" random
    - " I have "set t_ti= t_te=" in my .vimrc so that the screen is not cleared when I exit,


" fnameescape, shellescape!   shellslash
    - True, but beware of the difference between fnameescape() and
    shellescape().
    - The former is used when passing arguments on Vim's command line, so that
    they are not molested by Vim. The later is used when passing arguments to
    external commands, so that they are not molested by the shell.
    - On Windows there's also shellslash, which will have a major influence on
    the number of hairs on your head if you ever need to mess with !command and
    friends.


" update plugin HELP files
    " update all
        sudo vim
        :helptags ALL

    " indivdual method:
        :helptags ~/.vim/bundle/ctrlp.vim/doc

" detect changes to a file on disk (by an external program)
    :checktime

" vim-snipmate
    " CHANGE1:
        " Only take previous 5 characters when expanding a snippet.
        " Allows 'in word' expansion and is less fussy overall
        " therefore: max snippet trigger is now 5 CHARACTERS LONG.
        ~/.vim/bundle/vim-snipmate/autoload/snipMate.vim:494

    " CHANGE2:
        " only ever return 1 matching snippet
        ~/.vim/bundle/vim-snipmate/autoload/snipMate.vim:543

    " HINT:
        "   make sure each snippet has a "$0" placeholder
        "   to finish it correctly

    " PARSER ENGINES:
        - let g:snipMate.snippet_version = 1
        - Snippet parser Version 1: Both $VISUAL and ${VISUAL} are valid
        - Snippet parser Version 0: only {VISUAL} is valid (without the "$"),
                                    and transformations or a default placeholder CANNOT be used.

" vim-snipmate
    " define COMMON snippets file available for all filetypes:
     ~/.vim/snippets/_.snippets

" tricky vimscript - note "backslashes"
    silent! exec "normal! /^ERROR:\<CR>"

" get current file under cursor
    let file_path = expand('<cfile>')

" rebuild my custom dictionary
    exec 'silent mkspell! ' . &spellfile . '.spl'

" browse folder ('illegal filename' msg):
    problem
        vim  myfolder/

    solution (drop backslash!):
        vim myfolder

" boolean True False
    - Vim treats the integer 0 as 'falsy'
    - ... any other number as 'truthy'

" show all occurances in current file
    :g/pattern
    :g/pattern/#    <---- add numbers

" remove syntax in current buffer only (nice!)
" ie it disables all color schemes and the text is white...
    set syntax=dummy

" open file under cursor!
    gf

" check this:
    :h new-omni-completion

" sort
    :sort  n  " numerically!
    :sort! n  " REVERSE numerically!
    :sort  i  " Case insensitive
    :sort  u  " unique values (remove duplicates)


" CtrlPCurWD for MobaXterm.
" *first* set CWD to current file path.
    nnoremap <leader>f      :cd %:p:h <bar> CtrlPCurWD<CR>

" run vimdiff inside gvim windows
    :e file1
    :vertical diffsplit file2

" vimdiff show WHITESPACE differences
    :set list!

" trick to show whitespace
" ("whitespace" is an esoteric programming language!)
    :set syntax=whitespace

" show color settings
    :color              view current color-scheme.
    :hi                 list all color groups.
    :hi Statement       view color definations for Statement.
                        (change Statement to what you want)

" where was a color "texItalStyle" most recently last set?
    :verbose hi texItalStyle

" highlight specific text (+ clear highlights)
    :call matchadd ('Error','\.')
    :call clearmatches()

" old vimrc options I dont use
    " increment/decrement numbers
        nnoremap ? <c-a>
        nnoremap ? <c-x>

    " paste with extra space inserted before/after
        nnoremap <leader>?  i<space><esc>p
        nnoremap <c-?>      i<space><esc>P

    " force deleted text
    " into 'black hole' register!
        nnoremap d "_d
        nnoremap D "_D
        nnoremap x "_x

    " make auto-completetion more flexible
        set infercase

    " Insert mode: animation to jump to matching bracket
        set showmatch
        set matchtime=2
        set matchpairs+=<:>

    " turn off bracket matching
        let g:loaded_matchparen=1

" Ignore escape sequences in insert mode. (note: this blocks
" function keys from working in insert mode! eg. it blocks
" pastetoggle=<F2> from working)
    set noesckeys

" set a value in the (windows) system clipboard (@*)
    let @* = "print ('hello')"

" define a local command ('-buffer' option)
    command! -buffer -nargs=+ FolderGrep    :call GrepQuickFix('./', '*.sas', '', <f-args>)

" add spacing to all bullet points
    :.,$s/^\(\s*-\ \)/\r\1/gc

" vim read large files tips
    - vim <(tail hugelogfile)
    - :syntax off

" vimscript command mode
    in vimscript every line is interpreted as if it's in
    Command-line mode already. You don't need to lead with
    a : (though it's harmless if you do), and you don't need
    the <CR> to execute the command (and in this case, it's
    incorrect to use it).

" easy align plugin - regex "/ /"
        - : Easyalign /as/ <enter>

" scroll horizontally!!!!
    zl

" how to disable an autocmd (use exlamation mark!)
    autocmd! InsertEnter
    autocmd! InsertLeave

" vimscript EXECUTE quirk!
    " right:
        exec "normal! A\<space>\<esc>p"  double-quotes
    " wrong:
        exec 'normal! A\<space>\<esc>p'  single-quotes
    " note: see :h expr-quote

" My good 'showfilename' command...
" (now I use the vimscript 'ShowFileInfo' function)
command!  ShowFilename  exec 'set paste' <BAR>
                        \ exec 'normal! Lo<C-R>=expand("%:p")<CR><ESC>0' <BAR>
                        \ exec 'set nopaste'

" strip HTML tags (non-greedy, span lines)
    :%s/<\_.\{-1,\}>//g
    note: is "\{-1,\}" non greedy in vim???
    " years later:
    " http://vimregex.com/#Non-Greedy
    " non greedy version of ".*" is ".\{-}"
    eg:  let clip_contents = substitute(clip_contents, ';.\{-}(', ' (', 'g')


" dont allow cursor to reach edge of screen
    set sidescrolloff=40

" use powershell to run a command in background
    " execute '!start powershell -NoProfile -command MOVE "' . a:oldfile . '" "' . a:oldfile . '.' . strftime('%y%m%d-%H%M%S') . '"'

" run windows batch file in background
    !start "H:\runsas2.bat"
    :!start cmd /k "my app.exe"

" ctrlp: open new file in split
    select file then press <c-o>

" open shell
    :sh

" open one window for each buffer
    :ba

" view/show variable value contents
    :let myvar<TAB>

" using <leader>+x to send stuff via VIMUX
    must escape dollar signs "\$"

" disable viminfo (good for slow disk access like at OU!)
    - supply vim with startup option: -i {viminfo}
    - file {viminfo} is used instead of default viminfo
    - If "NONE" is used, no viminfo file is read or written
      even if 'viminfo' is set or when ':rv' or ':wv' are
      used.

" encoding
    * 'set encoding'     - show encoding thats displayed in *terminal*
    * 'set fileencoding' - show encoding of file that is *written*

" g commands
    gi(me: gI)  last insert position
    gv(me: gu)  re-select last selection!
    g-          go back one change (undo tree)
    g+          go forward one change (undo tree)

" iPad [Server Auditor]
    1. Choose colourscheme "Homebrew"
    2. run "soff" alias
    3. set colorscheme to: molokai in <.vimrc.local>

" match one or more words (escape the "+" aswell!)
    \w\+

" match 'tunnel' only after "pipe |" has been found
    match Operator /\(|.*\)\@<=tunnel/

" regex find ipython In[23] or Out[22]
    ^# \(In\\|Out\)\[\d\+\]

" regex match GROUPS
    " brackets must be *ESCAPED*!
    \( ...what I want to group... \)

" match any white space, then some characters
" but reuse the white space as "\1"
    .,$s/\(\s*\).*\[\-\]/\1[comment]:/gc
    " key for starting whitespace: \(\s*\)

" find a line with one word only:
    .,$s/\v^\w+$/commenter:/gc

function arguments  - GrepQuickFix
    method 1
        send grep pattern with multiple words
        :gb quantum\\\ gravity
        will send pattern = 'quantum\ gravity'
        \\  ---> \ single backslash
        \   ---> ' ' space
        see <f-args> for more info

    method 2 (better!)
        :gb quantum.*gravity

" autoload function
    Vim has a neat mechanism that allows you to put all your
    custom functions in an autoload directory somewhere in
    your $RUNTIMEPATH and source them only when needed.

    Move all your custom functions to ~/.vim/autoload/myfunctions.vim.
    Rename them:
    function! MyDetectOS()    ===>    function myfunctions#MyDetectOS()
    Change all your calls to use the new name:
    if myfunctions#MyDetectOS() ==? "linux"

    One benefit is that functions are not sourced before their
    first call so that's less work for Vim on startup. Of
    course, your example is called in your vimrc so that's
    a moot point.

    Another — more obvious — one is that you have less stuff
    in your vimrc.
    See :help autoload

" gvim notes in windows
    let NOTES_DIR     = $USERPROFILE . '\Downloads\portable_utils\moba8\Home\study\txt'

" gvim white inner borders
    http://stackoverflow.com/questions/9265984/strange-gvim-inner-borders
    change "3D objects" colour in windows theme
    play around with:
        set linespace=10
        set guifont=DejaVu\ Sans\ Mono:h12

" read only
    vim -R read only
    vim -M buffer not modifiable (also makes file non-writable?)

" gvim wide font(?)
    " set guifontwide=Lucida\ Console:h12

" set gvim guifont via menu
    :set guifont=*

" force/remove a highlight link (need the !)
    hi! link MatchParen         User3
    hi! link MatchParen         NONE --> reverts to previous colour

turn on/off bracket matching
    :NoMatchParen
    :DoMatchParen

" upper(lower)case a whole line
    VU
    Vu

" gvim fonts
    gvim will only accept monospaced fonts
    "DejaVu Sans Mono" has more glyphs than other monospaced
    install monaco font in windows
        double click on .../fonts/monaco.ttf

" scrollbind
    useful for diff

" resize window
    : res +5  (increase height)
    : res -5  (decrease height)
    vertical resize 5

" quickly open file explorer (netrw)
    " :e.
    Left split  -> :Lexplore
    RIGHT split -> :Lexplore!

" 8.2 Netrw bug
    - slow opening over ssh X11
    v $VIMRUNTIME/autoload/netrw.vim
    - comment out these lines:
        if has("clipboard")
        "   call Decho("(netrw#Explore) save @* and @+",'~'.expand("<slnum>"))
        sil! let keepregstar = @*
        sil! let keepregplus = @+
        endif


" netrw Handy
     "x"   view/open file with system default application
     "%"   create new file!!
     "-"   go up one folder/directory level
     "d"   create folder
     "D"   delete file
     "R"   rename file
     "i"   change listing style (wide etc)
     "I"   Toggle banner


" setup custom netrw key mappings
    let g:Netrw_UserMaps= [["gu","ExampleUserMap"]]

" netrw refresh
    - To refresh either a local or remote directory listing, press ctrl-l (<c-l>)
    - or hit the <cr> when atop the ./ directory entry in the listing.
    - One may also refresh a local directory by using ":e .".


" alternative to saveas
    :w! /path/to/myfile

" string concat and assignment ".="
    let import_sympy .= "something here"

" mad mad error
    at space at the end of the mapping caused it not to work!
    nnoremap <leader>ni     :call EditFile ('/practical/info.txt')<CR> !!!space here!!!


" multiple colours using echo
    use echon
        echohl ErrorMsg
        echon "xxxx"
        echohl MoreMsg
        echon "yyyy"
        "will produce xxxxyyyy

" check for empty string
    if empty(g:my_solarized_background)
        " do something
    else
        " do something else
    endif

" environment variable "$HOME"
    This is where vim will look for .vimrc
    In windows:
        set an environment variable using
        control panel - settings - advanced settings

" environment variable "$MYVIMRC"
    may not be set if vim started with "-u". e.g.
    vim -u $HOME/.vimrc

" show current runtimepath
    :set runtimepath?

" supply count to a key map
    must combine:
    the expression register '='
    with the '@' operator

    '=' expression register
        allows you to specify an expression for register
        contents. or: Rather than using a named register we
        use the expression register, which lets us specify
        the contents in place.

    '@' operator
        executes the contents of a register
        or: the @ key tells Vim to execute a macro

    If a count is specified before the '@' operator, it
    executes the contents of a register by the specified
    count.

" easymotion
    f <enter>
    repeat last search

" <C-r>
    <C-r>, without =, allows you to insert the content of
    any register at the cursor while staying in insert mode:
    <C-r>+, for example, inserts the content of my system
    clipboard. see :help i_ctrl_r.

    = is the "expression register". See :help "=.

" substitute tip
    the 'e' at the end supresses error messages
    command!  Trail     :%s/\s\+$//e

" use colors in statusline/tabline
    " modified (use ErrorMsg colour)
    set tabline +=%#ErrorMsg#%m%0*

" spelling
    set tabline-=\ Spelling:\ %{&spelllang}  " show spelling language
    set tabline +=%{&spell}                  " show spell global variable in tabline
    z=                                       " recommend spelling
    1z=                                      " accept first recommendation
    zg                                       " add word to custom spell file
    zuw                                      " remove spelling from custom file
    ]s                                       " next spelling mistake
    [s                                       " previous mistake
    #z=                                      " suggest spelling correction

" set minimum width for statusline filename field
    set tabline +=\ %-20.t

" ultisnips auto-close brackets
    press b<C-I> in insert mode
    to exit brackets press <C-l> again

" change between
    " cib     brackets    (
    " ciB     curly       {
    " cit     tags        <mytag></tag>

" reload file changed on disk
    :e

" insert non breaking space in vim
    i <c-k> <space> <space>

" windows commands
    :resize 10

" visual block mode
    ctrl-v
    $   goto the end of each line!! handy
    I   insert text before {block}
    A   insert text after {block}
    c   change all block txt
    o   switch to other visual block corner

" see current paste value
    :set paste?

" where was 'iskeyword' last set?
    :verbose set iskeyword?

" change up to and including 'd'
    cfd

" tagbar
     x      maximise window
     o      toggle fold!!!
     p      show definition (but stay in tagbar)

     :TagbarSetFoldlevel! 4
        the ! forces the foldlevel to apply to everything
    " Get an existing defintion
    :TagbarGetTypeConfig

" relative numbers
    :set rnu!

" goto end of screen wrapped line
    g$

" current filename
    expand('%')     current filename
            :p      expand to full path
            :h      head (last path component removed)
            :t      tail (last path component only)
            :r      root (one extension removed)
            :e      extension only

show current complete options
    :set complete

multiple filtypes at once
    :setfiletype html.php.js.css

    2019 note:
    - yes I was wondering about this when I saw 'jinja.html'!
    - it called the jinja syntax file, then called the html syntax file

    Most filetype plugings and syntax files are not designed
    for such cases. See also :help 'filetype'

    Perfect! For the plugin I was mainly concerned about, this worked
    perfectly. Editing a PHP file I type
    :setfiletype html.php.js.css
    and the snippet plugin includes the snippet files
    for all the filetypes specified.

    Great for mixing "markdown.pandoc" plugins and for "snipmate"!

ftplugins tips
    In your $HOME, make .vim/ directory (or vimfiles/ on Windows), in it
    make ftplugin/ directory, and in it keep files named "perl.vim" or
    "python.vim" or "html.vim" or ...

    These should be loaded automatically when you open/create new file of
    given filetype as long as you don't forget to add :filetype plugin on
    in your .vimrc (or _vimrc under windows)

    Then, vim options should be defined with :setlocal (and not :set,
    otherwise their definition will override the default global setting).

    Mappings are defined with :n/i/v(nore)map <buffer>, as well as the
    abbreviations. Commands are defined with the -b option. Menus can't be
    made local without the help of a plugin.

    local, <buffer>, and -b are important to prevent side effects.

load all *.local files into split windows
    vim -O ~/.*.local

SILENTLY load all *.local files into split windows
    vim -c ':argadd ~/.*.local' +':silent! vertical all'"

select between quotes
    vi"
    vi'

show all loaded scripts in vim
    :scriptnames

delete in/around tags
    dat/dit

shellescape()
    silent! execute "!firefox " . shellescape(url, 1)

    For use with the :! command, you need to pass the optional
    {special} argument to shellescape():

    When the {special} argument is present and it's a non-zero Number
    or a non-empty String (|non-zero-arg|), then special items such as
    !, %, # and <cword> will be preceded by a backslash. This
    backslash will be removed again by the |:!| command.

" page up/down in a script
    " If "!" is given, mappings will NOT BE USED.
    " use default keys
        :execute "normal! \<c-u>"
        :execute "normal! \<c-d>"
    " use MY mappings
        :execute "normal \<c-k>"
        :execute "normal \<c-j>"

window size (make equal)
    <ctrl-w> =

difference between "syntax on" and "syntax enable"?
    "syntax enable" keeps your color settings,
    "syntax on" overrides them (:help :syn-on).

number of open windows
    let window_count = winnr('$')
    echo "window count is" .window_count

nerd commenter
    specify a number of lines before commenting!

matching bracket jump animation
    :set showmatch

strip trailing whitespace
    :%s/\s\+$//e

command line editing
    cmdwin
    set cedit=<c-o>

move forward/back in INSERT mode!
    <c-f>
    <c-b>

modelines (e.g. vim: ft=sh)
    :set nomodeline
    to disable!

get rid of all folds!
    zi  fold invert



" multiple commands at startup
    vim  -c "normal '0" -c ":echo 'hello'"
    vim  -c "normal '0" -c "execute \"normal \<c-o>\""

    " another method with "+"
        vim -c "cd /home/ef/Documents/notes" +"CtrlP"

" view/show/list all variable values contents
    :let
    :let :g             (global variables)
    :let :v             (vim variables)

" tag comment
    It is not obvious at all, but the following settings will
    allow you to select from a list of matches when there are
    multiple matches:

    :set cscopetag
    :set cscopetagorder=1

" file completition for a custom command "-complete=file"!!
    command! -bang -nargs=* -complete=file Sav :call SaveasEscapeSpaces(<q-bang>, <q-args>)

" vimscript execute normal command
     exec "normal! gg/" . a:search_string . "\<CR>"

" Force vim syntax colouring
    # vi: ft=vim

" Replace mode
    R

" how to keymap "alt-l"
    " find escape sequence for "alt+l" in bash (ctrl+v ctrl+l)
    " displayed: ^[l
    " the "^[" is represented as "<ESC>" in the .vimrc
    so: inoremap <ESC>l <C-o>l

" dont recognise underscore as a word boundary
    set iskeyword+=_

" show edge of page
    :set colorcolumn=80
    :set colorcolumn=+2 "2 more than current textwidth"

" nerd commenter change
    NERD_commenter.vim
    line:1101
    elseif a:type ==? 'Toggle'
            " let theLine = getline(firstLine)
            " EF Change
            let theLine = getline(lastLine)

            if s:IsCommentedFromStartOfLine(s:Left(), theLine) || s:IsCommentedFromStartOfLine(s:Left({'alt': 1}), theLine)
                call s:UncommentLines(firstLine, lastLine)
            else
                call s:CommentLinesToggle(forceNested, firstLine, lastLine)
            endif

            " if s:IsInSexyComment(firstLine) || s:IsCommentedFromStartOfLine(s:Left(), theLine) || s:IsCommentedFromStartOfLine(s:Left({'alt': 1}), theLine)
                " call s:UncommentLines(firstLine, lastLine)
            " else
                " call s:CommentLinesToggle(forceNested, firstLine, lastLine)
            " endif

" print a file
    :ha
    for hardcopy!

" highlight all commas using the 'Operator' color
    :match Operator ','

" manually read/write viminfo
    :rv
    :wv

" changelist
    :changes

" viminfo
    :ol[dfiles]     List the files that have marks stored in the viminfo

    keep a history of certain things
    ' stores changelist
    disable viminfo
        :set viminfo=
        :set viminfo='0,:0,<0,@0,f0

            '0 means that marks will not be saved
            :0 means that command-line history will not be saved
            <0 means that registsers will not be saved
            @0 means that input-line history will not be saved
            f0 means that marks will not be saved
            no % means that the buffer list will not be saved
            no / means that the search history will be saved

            These options are correct in Vim 7.2,
            but might be different in other versions.

" CursorLineNr
    colorscheme, but only if cursorline is set on

" vim latex
    http://unix.stackexchange.com/questions/51820/vim-latex-disable-quickfix

" vim coloring of: "+" "-" "=" etc
    jellybeans.vim - Operator (was normal!!!)

" ctrlp match highlighting
    jellybeans.vim - identifier variable

" strip/remove nonprinting/control characters
    :%s/[^[:print:]]//g
    :%s/[[:cntrl:]]//g

" more info on key mapping
    :verbose nmap

" make quickfix close automatically
    :autocmd FileType qf nnoremap <buffer> <CR> <CR>:cclose<CR>

" vim 8.0 new setting
    hi QuickFixLine cterm=None ctermbg=256 guibg=#ffff00

" Remove 'qf' window current line highlighted:
    hi! clear Search

" show current formatoptions (fo)
    :verbose set formatoptions

    " see list of all options:
        :h fo-table

    " add option ("+=")
        set formatoptions+=t

    " remove option ("-=")
        set formatoptions-=t

" reverse all lines in current buffer
    :g/^/m0

" ultisnips needs Unidecode
    pip install Unidecode
    (will show up as untracked package in conda)

" diff 2 files
    vim -d <file1> <file2>

    " both files already in window splits:
        :windo :diffthis

    dp - 'put' the changes from the current window into the other window.
    do - 'obtain' the changes from other window.
    ]c - Go to change after (ending/next bracket) -- move to the next difference.
    [c - Go to change before(opening/previous bracket) -- move to the previous diff.
    zo - 'open' a section of folded text.
    zc - 'close' a foldable text section.
    :diffupdate - updates diff based on changes .

" jumplist - specific jump!!! e.g. jump 23
    23<C-u>

" nerd commenter, change "block" toggle comment
    NERD_commenter.vim (around line 1101)
        elseif a:type ==? 'Toggle'
            " let theLine = getline(firstLine)
            " EF Change
            let theLine = getline(lastLine)

" ignore ALL config files when starting vim
    vim -u NONE

" folding
    zi  fold invert

" navigate
    hyperlinks (tags)
        ctrl-]  (forwards)
        ctrl-T  (backwards)

    jump list
        ctrl-o
        ctrl-i

    change list
        g;
        g,

" change tab/shift behaviour
    set tabstop=2
    set shiftwidth=2

" stop visualbells (screen flash)
    set novisualbell

" new buffer in current window
    :enew

" indent pasting
    ]p

" search funny characters
    /\V

" name current file
    ctrl+g
    1 ctrl+g (full path)

" wrap a paragraph
    select paragraph
    type "gq"

" redirect std output to vim (example)
    diff gitconfig gitconfig_ou | vim -

" retrieve file (into current buffer)
    :r <filename>

" transpose
    Another useful vi "shortcut" I frequently use is 'xp'. This will swap
    the character under the cursor with the next character.

" Handy registers!
    0  holds last YANKED text
    1  holds last deleted text
    2  holds 2nd last deleted text etc...

" jumplist (list of previous locations)
    :ju

" convert line endings
    :set ff=unix
    :set ff=dos
    :set ff=mac

" useful plugins
    unimpaired, tabular, surround, par

" Window commands
    <c-w> = equal size
    <c-w> | maximise window
    <c-w> > make vertical size bigger
    <c-w> < make vertical size smaller

" Use Text objects
    diw     delete current word
    dip     delete current paragraph (vim only)
    dib     delete between current brackets
    di"     dlete between current quotes

" open/close code folds
    zi  fold invert
    zr  open 1 level of folds throughout file
    zR  open all levels of folds throughout file
    zo  open current fold
    zc  close current fold

" list of all ex commands
    :h holy-grail

" jump if multiple tags
    g<C-]>

" list multiple tags
    g]

" check vim compiled with options
    vim --version

" show syntax for current word
    echo synIDattr(synID(line("."), col("."), 1), "name")

" Search for plugins (using vundle)
    :BundleSearch! taglist

" show all key mappings
    :map
    :nmap etc

" update all vundle plugins
    :BundleInstall!

" setup vundle
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    << make required changes to .vimrc >>
    :BundleInstall

" show all variable values
    :let

" delete from cursor up to "foo"
    d/foo

" what langauge is detected?
    :set ft?
    :verbose set ft? syntax?

" issue command while in insert mode
    ctrl+o

" quick exit without save
    ZQ

" goto line 202
    :202
    202gg
    202G

" paste at end of line
    just paste it on next line
    and then join

" Avoid resizing windows after split
" add to .vimrc file:
    set noequalalways

" force syntax coloring
    :set syntax=php

" paste e.g. "k" register contents in Ex mode
    :<Control-r>k
    this pastes "k" register contents

" redo
    ctrl+r
    i.e. undo an undo!
    or "g +"

" insert spaces when tab pressed
    :set expandtab

" convert existing tabs into spaces
    :retab

" allowable cterm values
    bold, underline, reverse, italic, none

" download vim scripts
    wget -O someVimScript.vim http://www.vim.org/scripts/download_script.php?src_id=4055

" branched undo and redo (e.g. seconds ago)
    :earlier 20s
    :later 20s

" X11 clipboard
    its called the + register
    e.g. "+yy
    copy current line to X11 clipboard

" invisible character colours
    hi NonText ctermfg=231
    hi SpecialKey ctermfg=231

" macro record
    Qa :  record in hotkey 'a'
    Q  :  stop recording
    4@a:  run macro 4 times

" tab tips
    each tab can hold a different working dir

" tabs
    :tabedit <filename>
    :tabnew
    :tabclose
    :tabonly    close all tabs except current
    gt          move to next tab
    #gt         move number # tabs ahead

" symbol for current file
    %   relative path to current file
    %:p absolute path
    %:h head of path (ie remove last component)

" change cwd to working dir of current file
    :cd %:p:h

" rotate windows
    ctrl-w r

" change window size
    ctrl-w +
    ctrl-w -
    ctrl-w =

" split window and load file
    :sp b.txt
    :vsp b.txt

" close all windows except current
    :only

" restore original file
    :e!

" autoindent
    =

" indentation tip
    use . to repeat (block) indentation
    use u to undo a (block) indentation

" force vim to treat a buffer as a certain type
    :setfiletype xml

" default .vim directory on windows
    $HOME\vimfiles

" Enable filetype detection
    filetype on

" Set tabs and spaces
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
    setlocal = apply settings to this buffer only, not any other open buffers

" apply command to ALL buffers
    :bufdo <command>
    :bufdo bd

" repeat last command line command (handy!)
    <count>@:

" show hidden characters
    :set list!

" delete "A word"
    ie cursor can be anywhere on word
    daw

" goto matching bracket
    %

" goto next occurance of current word under cursor
    *

" Vim's language! 'verb modifier object’ sentences
     " verbs:
        - v (visual),
        - c (change),
        - d (delete),
        - y (yank/copy).

    " modifiers:
        - i (inside),
        - a (around),
        - t (till..finds a character),
        - f (find..like till except including the char),
        - / (search..find a string/regex)

    " text objects:
        - w (word),
        - s (sentence)
        - p (paragraph)
        - b (block/parentheses),
        - t (tag, works for html/xml) there are others

" keyword completion (insert mode)
    ctrl-p

" delete till something
    dt"

" write file
    :w <filename>

" write selection
    v :w <filename>

" change number under cursor
    <c-a> "increment
    <c-i> "decrement

" buffer commands
    :bu <tab>    - select a buffer
    :ls          - list buffers
    :sb tab      - split screen on another buffer
    :sbN         - split screen on buffer N
    :only        - make this the only buffer (ie maximise)
    ^w^o         - make this the only buffer (ie maximise)
    :ball        - split screen on all buffers
    :hide        - hide this buffer
    :bdel        - remove buffer from list

" Vim Registers
    " 1.  The unnamed register         ""
    " 2.  10 numbered registers        "0 to "9
    " 3.  The small delete register    "-
    " 4.  26 named registers           "a ... "z "A ... "Z
    " 5.  four read-only registers     ":  ".  "%  "#
    " 6.  the expression register      "=
    " 7.  selection & drop registers   "*  "+  "~
    " 8.  The black hole register      "_
    " 9.  Last search register         "/

" vim spell dictionary complete
    note:
    ai wbritish-large
    will create a file:  /usr/share/dict/words

    For the record, set complete+=kspell does not enable
    dictionary completion via CTRL-P and CTRL-N. It enables
    completion from the active spell checker -- which is
    a totally separate thing.

    Dictionary completion via CTRL-P and CTRL-N is enabled
    with set complete+=k if a dictionary has been defined
    with the dictionary option, or with set
    complete+=k/usr/share/dict/words (for example) to be
    explicit or when one is not defined. Can specify several
    dictionaries.

    Spelling suggestions are always available with
    i_CTRL-X_s if spelling is enabled.

    Dictionary suggestions are always available with
    i_CTRL-X_CTRL-K if a dictionary has been defined.


" netrw key mappings
" ------------------
    - <F1>    Causes Netrw to issue help
    - <cr>    Netrw will enter the directory or read the file
    - <del>   Netrw will attempt to remove the file/directory
    - -       Makes Netrw go up one directory
    - a       Toggle between normal display, hiding (suppress display of files matching g:netrw_list_hide) showing (display only files which match g:netrw_list_hide)
    - c       Make browsing directory the current directory
    - C       Setting the editing window
    - d       Make a directory
    - D       Attempt to remove the file(s)/directory(ies)
    - gb      Go to previous bookmarked directory
    - gh      Quick hide/unhide of dot-files
    - <c-h>   Edit file hiding list
    - i       Change listing style: Choices: thin, long, wide and tree
    - <c-l>   Causes Netrw to refresh the directory listing
    - mb      Bookmark current directory
    - mc      Copy marked files to marked-file target directory
    - md      Apply diff to marked files (up to 3)
    - me      Place marked files on arg list and edit them
    - mf      Mark a file
    - mh      Toggle marked file suffices' presence on hiding list
    - mm      Move marked files to marked-file target directory
    - mp      Print marked files
    - mr      Mark files satisfying a shell-style
    - mt      Current browsing directory becomes markfile target
    - mT      Apply ctags to marked files
    - mu      Unmark all marked files
    - mx      Apply arbitrary shell command to marked files
    - mz      Compress/decompress marked files
    - o       Enter the file/directory under the cursor in a new browser window. A horizontal split is used.
    - O       Obtain a file specified by cursor
    - p       Preview the file
    - P       Browse in the previously used window
    - qb      List bookmarked directories and history
    - qf      Display information on file
    - r       Reverse sorting order
    - R       Rename the designed file(s)/directory(ies)
    - s       Select sorting style: by name, time or file size
    - S       Specify suffix priority for name-sorting
    - t       Enter the file/directory under the cursor in a new tab
    - u       Change to recently-visited directory
    - U       Change to subsequently-visited directory
    - v       Enter the file/directory under the cursor in a new browser window. A vertical split is used.
    - x       View file with an associated program
    - X       Execute filename under cursor via
    - %       Open a new file in netrw's current directory


" vimscript variables
    g:{var}   global.
    a:{var}   function argument.
    l:{var}   local to function.
    b:{var}   local to buffer.
    w:{var}   local to window.
    t:{var}   local to tab.
    v:{var}   Predefined by Vim.

" debug vim startup
    " method 1:
        :set verbose=9
    " method 2:
        :profile start profile.log
        :profile func *
        :profile file *
        " At this point do slow actions
        :profile pause
        :noautocmd qall!

" LINKS
    " use vim as c ide:                                                http://www.alexeyshmalko.com/2014/using-vim-as-c-cpp-ide/
    " A good vim debugger 'vimspector'                                 https://github.com/puremourning/vimspector
    " vimscript cheatsheet                                             https://devhints.io/vimscript
    " Tmux vim navigator (navigate split windows)                      https://github.com/christoomey/vim-tmux-navigator
    " dont use plugin manager                                          https://howchoo.com/g/ztmyntqzntm/how-to-install-vim-plugins-without-a-plugin-manager
    " slow X11 netrw (solution: let g:netrw_clipboard=0)               https://github.com/vim/vim/issues/7259
    " ssh clipboard X11                                                https://amp.reddit.com/r/vim/comments/ac9eyh/talk_i_gave_on_going_mouseless_with_vim_tmux/
    " osc52 ssh clipboard X11                                          https://www.reddit.com/r/vim/comments/ac9eyh/talk_i_gave_on_going_mouseless_with_vim_tmux/ed6kl67/?utm_source=amp&utm_medium=&utm_content=more_replies
    " osc52 ssh clipboard X11 this one is out-dated?                   https://github.com/fcpg/vim-osc52
    " osc52 ssh clipboard X11 this one works                           https://github.com/ojroques/vim-oscyank
    " osc52 ssh clipboard X11 Nice info                                https://jdhao.github.io/2021/01/05/nvim_copy_from_remote_via_osc52/
    " NICE: Great explanation of the clipboards                        https://vi.stackexchange.com/questions/84/how-can-i-copy-text-to-the-system-clipboard-from-vim
    " NICE: How to remap key codes / escape codes in various terminals https://stackoverflow.com/questions/16359878/how-to-map-shift-enter
    " Bram died 1 RIP Legend.                                          https://news.ycombinator.com/item?id=37011324
    " Bram died 2                                                      https://news.ycombinator.com/item?id=37078719
                              
 	
" TODO: jump to function definition?
    - Slightly unrelated:

    - > As an aside, I also use this technique for navigating code with Vim,
    where a single shortcut goes to a definition of a function in a new pane
    - I was intrigued by this, and searched the author's github for their .vim.
    This is how they do that:
        - nnoremap gF <c-w>vgF
        - https://github.com/szymonkaliski/dotfiles/blob/357fc7c76ca86042effba7836fc8b4101057d285/Dotfiles/vimrc#L570
    - and
        - nnoremap <silent>gD :call CocActionAsync('jumpDefinition', 'vsplit')<cr>
        - https://github.com/szymonkaliski/dotfiles/blob/357fc7c76ca86042effba7836fc8b4101057d285/Dotfiles/vim/after/plugin/coc.vim#L56


" Old questions
    - My CAMK machine: does it execute files in autoload folder? `/home/efarrell/.local/share/vim/vim82/autoload`
    - Answer: no. It only sources files from the "plugin" folder
    - use :scriptnames to see what vim auto-loads at startup

Links
    - Understanding the Origins and the Evolution of Vi and Vim https://news.ycombinator.com/item?id=43691020

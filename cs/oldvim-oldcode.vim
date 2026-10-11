" vimrc old code


~/.vim/plugin/my_functions.vim
func! MyFileOpener()
            " aH THIS DOESNT WORK, if there's a ':' earlier in the line
                " Some filenames have a line number at the end. e.g. 'myfile.txt:456'.
                " Move backwards to ignore the line number.
                " silent! normal! F:
                " silent! normal! h


" old way with globbing
func! ValidFile(file)
    if empty(glob(a:file, g:no_wildignore))
        " not a file!
        return 0
    else
        " is a file
        return 1
    endif
endfunc


" old way of detecting tmux target pane
function! TmuxSetTargetPane()
    if has('win32unix')
        " Gitbash
        let current_window = system("tmux display-message -p '#I'")
        let current_window = substitute(current_window, '\n', '', 'g')

        " (if gitbash is slow, don't dynamically detect current window,
        " use hardcoded variable)
        " let current_window  = g:TmuxSlimeWindow
    else
        " Linux
        " dynamically detect current window
        let current_window = system("tmux display-message -p '#I'")
        let current_window = substitute(current_window, '\n', '', 'g')
    endif

    " TMUX notation for specifying a pane: "window.pane"
    return current_window . "." . g:TmuxSlimePane
endfunc



" the old mad [tab] hack
" $MY_NOTES/cs/misc/archive/old-messy-vim-TAB-hack.txt

" Need many remappings of TAB:
" (Because Tmux uses <c-i>)
if (&term =~ 'xterm')
    echo 'in branch 1'
    noremap  <c-i>      <TAB>
    inoremap <c-i>      <TAB>
    set wildchar=<C-i>
else
    " URXVT hack:
    " I generate a custom escape sequence for <TAB>.
    " See: $MY_NOTES/cs/messy-vim-TAB-hack.txt

    if exists('$TMUX') || match($TERM, "screen") >= 0
        " inside tmux or TERM contains 'screen'
        " Tmux 3.2a
        " set <Tab>=[18;2~
        " Tmux 3.5
        " set <Tab>=[20;2~
    else
        echo 'in branch 3'
        " outside tmux and TERM doesn't contain 'screen'
        set <Tab>=[33~
    endif

endif




func! RemoveWhitespace()
    " Removes :
    "   - leading blank lines at top of file
    "   - trailing whitespace from each line
    "   - trailing blank lines from bottom of file

    " " save position
    normal! mt

    " remove leading blanklines (top of file)
    exec 'normal! gg0'
    exec "normal! /\\S\<CR>"
    let leading_blank_lines  = line (".") - 1

    if leading_blank_lines > 0
        normal! 1G
        exec 'normal! "_' . leading_blank_lines . 'dd'
    endif

    " remove trailing whitespace (end of line)
    :%s/\s\+$//e

    " remove trailing blanklines (end of file)
    "    \(    Start match group
    "    $\n   Match a new line (end-of-line character followed by carriage return).
    "    \s*   Allow any amount of whitespace on this new line
    "    \)    End match group
    "    \+    Allow any number of occurrences of this group (one or more).
    "    \%$   Match the end of the file
    "    e     supress error msgs
    :%s#\($\n\s*\)\+\%$##e

    " restore position
    silent! normal! `tzz
endfunc



" Old complicated version
function! TmuxSetTargetPane()
    " Sep 2021: Windows Gitbash was originally too slow to dynamically find the
    " current window. But now its quicker so don't need this code.
        " if has('win32unix')
            " " Gitbash
            " " (slow system, don't dynamically detect current window)
            " let current_window  = g:TmuxSlimeWindow
        " else
            " " Linux
            " " dynamically detect current window
            " let current_window = system("tmux display-message -p '#I'")
            " let current_window = substitute(current_window, '\n', '', 'g')
        " endif

    let current_window = system("tmux display-message -p '#I'")
    let current_window = substitute(current_window, '\n', '', 'g')

    " TMUX notation for specifying a pane: "window.pane"
    return current_window . "." . g:TmuxSlimePane
endfunc




" old: open file in 'wildcard' mode
" (not great - Was case sensitive)
vl()     { $EDITOR -u $HOME/.vimrc *"$@"* -c "call ShowFileName()";}


" Old way of handing URXVT Tab
" (Because Tmux uses <c-i>)
if (&term =~ 'xterm')
    noremap  <c-i>      <TAB>
    inoremap <c-i>      <TAB>
    cmap     <c-i>      <NOP>
    set wildchar=<C-l>

else
    " Special URXVT hack
    " See: $MY_NOTES/cs/Bash-Tab-Hack-for-Tmux.txt

    " outside TMUX
        nmap <ESC>[33~      <Tab>
        imap <ESC>[33~      <Tab>
        cmap <ESC>[33~      <NOP>

    " inside TMUX
        nmap <ESC>[18;2~    <Tab>
        imap <ESC>[18;2~    <Tab>
        cmap <ESC>[18;2~    <NOP>

    " set cmdline auto-completion
    " (because <TAB> wont work anymore)
    set wildchar=<C-l>
endif



" remap wildchar

    function! s:wildchar()
        " call feedkeys("\<Tab>", 'nt')
        call feedkeys("\<ESC>[33~", 'nt')
        return ''
    endfunction

    cnoremap <silent>   <ESC>[33~     <C-r>=<SID>wildchar()<CR>



" Old python Jupyter notebooks stuff
            " Cell manipulation
            nnoremap <silent><buffer>  mD               :call GUI_Command_Cell("$HOME/bin/jupyter-cell-manip.sh", 'd d',  0)<CR>
            nnoremap <silent><buffer>  mA               :call GUI_Command_Cell("$HOME/bin/jupyter-cell-manip.sh", 'a',    0)<CR>
            nnoremap <silent><buffer>  mB               :call GUI_Command_Cell("$HOME/bin/jupyter-cell-manip.sh", 'b',    0)<CR>
            nnoremap <silent><buffer>  mJ               :call GUI_Command_Cell("$HOME/bin/jupyter-cell-manip.sh", 'j',    0)<CR>
            nnoremap <silent><buffer>  mK               :call GUI_Command_Cell("$HOME/bin/jupyter-cell-manip.sh", 'k',    0)<CR>


" old way of stripping lisp comments when pasting into repls
    elseif (&filetype == 'lisp')   ||
         \ (&filetype == 'scheme') ||
         \ (&filetype == 'clojure')

        " old way:
        " (Use non-greedy regex search from ';' to next open-bracket)
        let clip_contents = RemoveLineEndings(clip_contents)
        let clip_contents = substitute(clip_contents, ';.\{-}(', ' (', 'g')



" Old way to quickly open a 'CS' txt file in vim 
vc()    { $EDITOR -u $HOME/.vimrc $MY_NOTES/cs/*"$@"* ; }

" " -----------------------------------------------------------------------------------------------------------------
" Aug 2021: Didnt use this for system clipboard pasiting: used plugin vim-OSCyank instaead

" " Copy to System Clipboard from anywhere(!)
" " (No need for X11 forwarding, xterm_clipboard etc)
" " -----------------------------------------------------------------------------------------------------------------
" if has('win32unix')
  " let g:Osc52_TTY = "/dev/tty"
" else
  " let g:Osc52_TTY = "/dev/pts/1"
" endif
" function! Osc52Yank()
  " let buffer = system('base64 -w0', @0)
  " let buffer = substitute(buffer, "\n$", "", "")
  " let buffer = '\e]52;c;'.buffer.'\x07'
  " silent exe "!echo -ne ".shellescape(buffer)." > ".shellescape(g:Osc52_TTY)
" endfunction
" command! Osc52CopyYank call Osc52Yank()
" augroup Example
  " autocmd!
  " autocmd TextYankPost * if v:event.operator ==# 'y' | call Osc52Yank() | endif
" augroup END




" old command
command!  WrapSQLparams         call RemoveWhitespace() <bar> normal! gg<c-v>GI'<esc><c-v>G$A', <esc>vipgqg_xvipy

" Where in a file are we?
function! LinePercent()
    return line('.') * 100 / line('$') . '%'
endfunction
let percent   = LinePercent()
call EchoItem('per:'   , l:percent     , 'Normal')


" alternative time
let time   = strftime('%I:%M %p')


" other way of defining markdown tags (but too slow?)
" use $HOME/bin/markdown2ctags.py
" (more detail...)
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : '$HOME/bin/markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes --sro=»',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '»',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }


" WINDOWS
" WINDOWS
" WINDOWS
function! SetViewer()
    let viewer = inputlist(['Set Viewer:',
        \  '1. pdf_viewer   = Sumatra PDF',
        \  '2. pdf_viewer   = PDF-Xchange',
        \  '3. image_viewer = JPEG Viewer',
        \  '4. image_viewer = MSPaint',
        \  '5. web_browser  = Firefox',
        \  '6. web_browser  = Chrome'])
    if viewer == 1
        let g:pdf_viewer   = '"C:\Users\ef\Documents\TOOLS\SumatraPDF.exe"'
    elseif viewer == 2
        let g:pdf_viewer   = '"C:\Users\ef\Documents\TOOLS\PDFXEdit8_Portable\PDFXEdit.exe"'
    elseif viewer == 3
        let g:image_viewer = '"C:\Users\ef\Documents\TOOLS\JPEGView64\JPEGView.exe"'
    elseif viewer == 4
        let g:image_viewer = 'mspaint.exe'
    elseif viewer == 5
        let g:web_browser  = '"C:\Program Files\Mozilla Firefox\firefox.exe"'
    elseif viewer == 6
        " let g:web_browser  = '"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"'
        let g:web_browser  = '"C:\Users\ef\Documents\TOOLS\GoogleChromePortable\GoogleChromePortable.exe"'
    else
        " pass
    endif
endfunc


" toggle CAPSLOCK in insert mode
" inoremap <expr> jj     Toggle_Capslock('')
inoremap <expr> <c-g>  Toggle_Capslock('')


function! Toggle_Capslock(return_char)
    " This is called from an '<expr>' binding,
    " so needs to return a character...
    let g:imode_capslock = !g:imode_capslock
    if g:imode_capslock 
        call Enable_Capslock()
    else
        call Cancel_Capslock()
    endif
    return a:return_char
endfunc


function! Cancel_Capslock()
    silent! autocmd! all_caps
    " Extra safety: ensure global 'imode_capslock'
    " is always off, when leaving this function.
    let g:imode_capslock = 0
endfunc


function! Enable_Capslock()
  augroup all_caps
    autocmd!
    autocmd InsertCharPre * call <sid>Capitalise()
  augroup END
endfunc


function! s:Capitalise()
  let ascii_number = char2nr(v:char)
  if 97 <= ascii_number && ascii_number <= 122
    let v:char = nr2char(ascii_number - 32)
  endif
endfunc



" old vim browser
func! MyVimBrowser()
    call TempBuf(g:h_split)
    " insert contents of vim folder into buffer
    exec 'read! ls -d ' . $VIM_FOLDER . '/**/*'
    silent!  exec ":g/bundle/d _"
    silent!  exec ":g/spell/d _"
    silent!  exec ":g/^$/d _"
    call feedkeys("/")
endfunc




" old function to browse CS folder
func! MyCsFiles()
    " I have 'cs' notes in two different folders.
    " Use a custom function to display both folders.
    call TempBuf(g:h_split)
    " silent! exec ":read! ls --group-directories-first " . g:CS_DIR
    " silent! exec ":read! find " . g:AS_CS_DIR . " -maxdepth 1 -type f"
    silent! exec ":read! find " . g:CS_DIR . " -maxdepth 2 -type f -not -path '*/archive/*'"
    silent! exec '%s/\ /\\ /g'
    silent! exec ':sort i'
    silent! normal! gg
    silent! normal! "_dd
    call matchadd('Comment', '^.*\/')
    " force CWD to be correct
    exec 'cd ' . g:CS_DIR
    call feedkeys("/")
endfunc


" old mapping to show computer folder files
nnoremap <silent>  <leader>2    :call MyFileBrowser(CS_DIR, g:h_split)<CR>


function! ListDownloads()
    let FOLDER    = "~/Downloads/*"
    let file_list = $HOME . '/my_downloads.txt'
    silent exec ':!ls ' . FOLDER . ' > ' . file_list
    silent exec 'edit ' . file_list
    silent write!
    silent! exec '%s/\ /\\ /g'
endfunc




func! CustomFileOpen()
    " Purpose: auto-close Netrw if we open a file.
    if getline('.')  =~ '/'
        let is_folder = 1
    else
        let is_folder = 0
    endif
    " Netrw "open"
    " exec "normal \<Plug>NetrwLocalBrowseCheck"
    let l:dirname = expand("<cfile>", g:no_wildignore)
    " echo l:dirname
    " exec "normal \<Plug>hello"
    " if ! is_folder
        " " Close netrw window.
        " only
    " endif
endfunc


" Toggle Netrw
nnoremap <Tab> :call ToggleNetRW()<CR>
function ToggleNetRW()
    if exists("g:netrw_buffer") && bufexists(g:netrw_buffer)
        exe "bd".g:netrw_buffer | unlet g:netrw_buffer
    else
        Vexplore | let g:netrw_buffer=bufnr("%")
    endif
endfunction

    " elseif a:files == 'my_books.txt'
        " " hide leading folder names, makes things easier to see
        " call matchadd('qfLineNr', "/.*/")
        " call matchadd('qfLineNr', '\')
        " " position cursor among filenames
        " call cursor(5, 30)


func! SympyPreview(input_string)
    " input_string might be:
    "   1. raw latex:         $$ \int e^{\frac{(x - \mu)^2}{\sigma^2}} $$
    "   2. sympy expression:  exp(-(x - mu)**2 / sigma**2)
    "   3. sympy variable:    mu

    let cmd = ''

    " remove any newlines/carriage returns
    let input = RemoveLineEndings(a:input_string)

    if input =~ '\$'
        " its probably raw latex.
        " Do some cleanup before pasting:
        "   1. convert linebreaks into separate equations.
        "      (ie. convert "\\" to double-dollars)
        "   2. remove any comment symbols
        "   3. escape any single quote and dollar signs
        let latex   = substitute(input, '\\\\', '$$ $$', 'g')
        let latex   = substitute(latex, '#', '', 'g')
        let latex   = escape(latex, "'")
        let opts  = 'euler=True, packages=("amssymb",), viewer="' . g:image_viewer . '"'
        let cmd   = "preview (r'" . latex . "', " . opts . ")"
    else
        " Not raw latex.
        " Maybe a symbolic expression?
        if input =~ '\#'
            " Found a comment. Stop!
            " Its too complicated!
            let txt = '"Cannot\ generate\ Latex\ preview!"'
        elseif input =~ '='
            " Probably some sort of equation.
            " Take the left hand side (lhs)
            let lhs = split(input, "=")
            let txt = lhs[0]
        else
            " Probably an expression.
            " Take the whole lot
            let txt = input
        endif

        " Note: the viewer app for the equation output is
        " set in 'vimrc'. You may have to experiment with
        " different viewers. eg. 'pyglet' doesnt work on my
        " desktop.
        let opts   = 'viewer="' . g:image_viewer . '"'
        let latex  = "latex("    . txt . ", mode='equation*')"
        let cmd    = "preview (" . latex  . ", " . opts . ")"
    endif

    if cmd != ''
        " send command to the REPL
        call TmuxSendText(cmd)
        call TmuxSendKeys("Enter")
    endif
endfunc



:nmap f :call FindChar()<CR>
			:function FindChar()
			:  let c = nr2char(getchar())
			:  while col('.') < col('$') - 1
			:    normal l
			:    if getline('.')[col('.') - 1] ==? c
			:      break
			:    endif
			:  endwhile
			:endfunction



" nnoremap <silent> <buffer>   ,        :silent! normal! N<CR>
" nnoremap <silent> <buffer>   n        :silent! normal! n<CR>

func! MyFileOpener()
    " Custom function to Open Pdfs, images, txt....
    let file = expand("<cfile>", g:no_wildignore)

    if empty(glob(file, g:no_wildignore))
        " Cant find file. Move further along the line and try again.
        " (Maybe a bulletpoint was in the way)
        silent! normal! mt
        silent! normal! $
        let file = expand("<cfile>", g:no_wildignore)
        silent! normal! `t

        if empty(glob(file, g:no_wildignore))
            " Still cant find file - quit!
            echo 'Not found: ' . file
            return
        endif
    endif

    if file =~ '\(jpg\|png\)'
        call ViewFile(file, g:image_viewer)

    elseif file =~ '\.pdf'
        call ViewFile(file, g:pdf_viewer)

    elseif file =~ '\(mp4\|m3u\|webm\|flv\|3gp\)'
        call ViewFile(file, g:video_viewer)

    elseif file =~ '\.djvu'
        call ViewFile(file, g:djvu_viewer)

    else
        " ordinary file/folder
        exec 'edit ' . file
    endif

endfunc



silent! call feedkeys(":Seek\<SPACE>")
command! -nargs=1 Seek              :call FindFilename(<f-args>)
function! FindFilename(fname)
    " Search buffer for a filename.
    " When searching, ensure we match only AFTER final slash
    " (which means we've reached the end of the path)
    let search_string  = a:fname . g:negative_lookahead
    silent! exec "normal! /" . search_string . "\<CR>"
    let @/ = search_string
endfunc


let all_files = uniq(sort(jump_files)) " + v:oldfiles


func! ValidateAndOpen()
    " ensure file under cursor exists
    normal! 0
    let file = expand("<cfile>", 1)
    if empty(glob(file, 1))
        echo 'Not found: ' . file
    else
        " open file and expand the window split
        call MyFileOpener()
        only
    endif
endfunc




func! EditFile(filepath)
    if filereadable(expand(a:filepath))
        exec 'edit ' . a:filepath
    else
        call BlankLines(2)
        call EchoItem('Not found: ', a:filepath, 'Operator')
        call BlankLines(2)
    endif
endfunc



Old line highlight functions
    func! SignalInsertMode()
        hi! link CursorLine User4
        let g:OldCursorLine = &cursorline
        if ! &cursorline
            set cursorline
        endif
        set showmode
    endfunc


    func! HideInsertMode()
        if g:OldCursorLine
            " before InsertMode, CursorLine was active
            " so leave it on and revert to intense color
            hi! link CursorLine User5
        else
            set nocursorline
        endif
        set noshowmode
    endfunc


    func! ToggleBrightCursorLine()
        if &cursorline
            " switch off
            hi! link CursorLine User4
            set nocursorline
        else
            " switch on and intensify color
            hi! link CursorLine User5
            set cursorline
        endif
    endfunc


" useful misc
    " fix markdown syntax when you land in the middle of a code block
    :syntax sync minlines=1000
    call feedkeys("/")
    " get output of "find" into a buffer
    " "-L" follows symbolic links
    silent! exec "read! find -L " . $VIM_FOLDER
    exec 'read! echo "$(ls -d ' . $VIM_FOLDER . '/**/*)"'

    " Use 'read' and bash 'ls' to get file listing into buffer.
    " '-d'   lists each file in sub-folders
    " 'echo' forces each file to be on separate line
    exec 'read! ls -d ' . $VIM_FOLDER . '/**/*'
    silent!  exec ":g/bundle/d _"
    silent!  exec ":g/^$/d _"
    call feedkeys("/")


old paragraph command
" nnoremap <silent> mQ    {jo<esc>jvip>vipgq{dd


" Get contents of jumplist
    let jump_str  = execute('ju')
    silent! put =jump_str
    silent! put =v:oldfiles I dont include old files now



" Old Ctrlp code!! RIP
" Start Ctrlp -------------------------------------------------------------------------------------------

" CtrlP Plugin
" nnoremap <silent> <c-f>          :CtrlPLine %<CR>
nnoremap <silent> <C-o>          :CtrlPBookmarkDir <CR>
" nnoremap <silent> <leader>o      :CtrlPMRUFiles<CR>
nnoremap <silent> <leader>o      :call MyRecentFiles()<CR>

" generate tags on the fly (doesnt work in gitbash)
" nnoremap <silent> <c-t>          :CtrlPBufTag<CR>


" Open current working directory,
nnoremap <silent> <leader>f      :call OpenCurrentFolder()<CR>

" default key to launch CtrlP
" let g:ctrlp_map = '<C-P>'
let g:ctrlp_map = ''

" customise CtrlP colors
hi! link CtrlPCursorLine    Type
hi! link CtrlPNoEntries     NonText
hi! link CtrlPMatch         Macro
hi! link CtrlPLinePre       qfLineNr
hi! link CtrlPPrtBase       MoreMsg
hi! link CtrlPPrtText       MoreMsg
hi! link CtrlPPrtCursor     MoreMsg
hi! link CtrlPMode1         StatusLine
hi! link CtrlPMode2         StatusLine
hi! link CtrlPStats         StatusLine

let g:ctrlp_by_filename = 1
" let g:ctrlp_working_path_mode = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.rootctrlp']
let g:ctrlp_match_window = 'top,order:ttb,min:12,max:12'
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_mruf_save_on_update = 0
let g:ctrlp_mruf_max = 35

" disable ctrlp prompt history
let g:ctrlp_max_history = 0

" handy CtrlP 'cache' functions:
" :CtrlPClearCache     (ctrlp#clr)
" :CtrlPClearAllCaches (ctrlp#clra)
let g:ctrlp_use_caching = 0
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_max_files = 1000
let g:ctrlp_max_depth = 2

" Makes Mobaxterm more reliable
" let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_switch_buffer = 0

" store file list, bookmarks etc
let g:ctrlp_cache_dir = $HOME.'/.ctrlp_cache'

if has('win32') || has ('win64')
    " keep gvim on windows separate
    let g:ctrlp_cache_dir = $HOME.'/_ctrlp_cache'
endif

" Change some mappings mainly because of iPad keyboard
let g:ctrlp_prompt_mappings = {
    \ 'PrtClearCache()':      ['<c-r>'],
    \ 'PrtSelectMove("j")':   ['<c-n>'],
    \ 'PrtHistory(-1)':       ['<c-j>']
    \ }

" End Ctrlp -------------------------------------------------------------------------------------------


" poor mans file explorer
nmap ge          :silent! exec '!ls -A \| less' <bar> redraw!<CR>

" try to detect start of a file path (now I use <cfile>!)
    " start match from: ./
    "               or: ../
    "               or : ~/
    "               or: /
    let image_path    = matchstr (current_line, '\(\.\+\/\|\~\/\|\/\)\S*')


" old auto-pair plugin settings
let g:AutoPairsCenterLine = 0
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = ''
let g:AutoPairsShortcutToggle = ''
let g:AutoPairsShortcutFastWrap = ''
let g:AutoPairsShortcutJump = ''
" dont auto-pair ordinary brackets "("
let g:AutoPairs = {'[':']', '{':'}',"'":"'",'"':'"', '`':'`'}


func! PasteClipboard()
            ...
            " old code for ipython %cpaste
            for line in cell_lines
                " ignore comments and blank lines
                if (line !~ "^#") && (line !~ "^\s*$")
                    call VimuxSendText(line)
                    call VimuxSendKeys("Enter")
                endif
            endfor


func! PasteClipboard()
    ...
    " old code for Maxima training semi-colon
    elseif (&filetype == 'maxima') 
        let last_char = strpart(l:clip, len(l:clip)-1, 1)
        if last_char == ';'
            " Add extra ";". Otherwise REPL pasting 
            " doesnt work properly.
            let l:clip = l:clip . ";"
        endif
        " Remove line-breaks and send
        let l:clip = Chomp(l:clip)
        call VimuxSendText(l:clip)
        call VimuxSendKeys("Enter")
    

func! SearchFootnote()
    let current_line  = getline (".")
    let col = getpos(".")[2]
    let fragment = strcharpart(current_line, col-1)

    " note: "\{-1,\}" is a non-greedy match.
    " In case there's more than one footnote on a line.
    let footnote  = matchstr (fragment, '\[.\{-1,\}\]')

    if footnote != ''
        try
            " normal! $
            let search_string = "\\V" . footnote
            exec "normal! /" . search_string . "\<CR>"
            let @/ = search_string
        catch
            echo 'Not found: ' . footnote
        endtry
    endif
endfunc



call plug#begin('$VIM_FOLDER/bundle/')
        Plug 'kien/ctrlp.vim'
        Plug 'scrooloose/nerdcommenter'
        Plug 'benmills/vimux'
        Plug 'MarcWeber/vim-addon-mw-utils'
        Plug 'tomtom/tlib_vim'
        Plug 'garbas/vim-snipmate'
        " Register these plugins (but dont load)
        Plug 'majutsushi/tagbar', { 'on': [] }
        Plug 'junegunn/vim-easy-align' , { 'on': [] }
call plug#end()


func! MiniArrangeCSV(begin)
    " Use 'vim.csv' plugin to align CSV columns.
    " Don't align the whole CSV file though,
    " just the lines between 'begin' and 'end'.
    if &filetype == 'csv'
        let end_buffer  = line('$')
        let end         = a:begin + 50
        if end > end_buffer
            let end = end_buffer
        endif
        exec ': ' . a:begin . ', ' . end . ' ArrangeColumn 50'
        exec 'normal! ' . a:begin . 'gg'
    endif
endfunc

" UltiSnips plugin
let g:UltiSnipsSnippetDirectories=["ultisnips"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="<c-k>"
let g:UltiSnipsNoPythonWarning = 1





my old open file code
---------------------

    " Scan current line for:
    "       '..' + '/' + (all non-whitespace characters)
    "        '.' + '/' + (all non-whitespace characters)
    "        '~' + '/' + (all non-whitespace characters)
    let file_path  = matchstr (current_line, '\(\.*\|\~\)\/\S*')

    " if ! filereadable(expand(file_path))
    if empty(glob(file_path))
        echo 'No valid file found.'
    else
        try
            " open file!
            silent! execute "edit " . file_path
            redraw!
        catch
            echo "\n"v:exception
        endtry
    endif



func! RunSasBatch()
        " run SAS in Batch Mode
        let l:file_fullpath = fnameescape(expand("%:p"))
        let l:file_no_ext   = fnameescape(expand("%:p:r"))

        " Backup previous 'log' and 'lst' files
        :silent exec '! printf "\n\n\033[0;33mRunning SAS Batch...\e[0m\n\n"'
        :silent exec '! command mv -v ' .  l:file_no_ext . '.log' . ' ' . l:file_no_ext . '.log.old'
        :silent exec '! command mv -v ' .  l:file_no_ext . '.lst' . ' ' . l:file_no_ext . '.lst.old'

        " exec SAS Batch via the shell
        exec ':! ' .  g:sas_exe . ' ' . l:file_fullpath
endfunc


func! ViewSasOutput()
    " Assumes current buffer is a SAS program. The
    " log and lst file names are based on the
    " basename of current file and are assumed to
    " end in ".log" and ".lst"
    let l:basename = expand("%:p:r")

    " Load SAS '.log'
    if filereadable(l:basename . ".log")
        silent exec "edit " . fnameescape(l:basename . ".log")
        " setfiletype sas
        " make errors easy to spot by highlighting them and
        " also do a quick auto search for them...
        " call matchadd('WarningMsg', '^ERROR.*$\c')
        " setlocal noincsearch
        let @/ = '^ERROR'
    else
        echo "SAS log file does not exist."
    endif

    " Load SAS '.lst'
    if filereadable(l:basename . ".lst")
        silent exec "edit " . fnameescape(l:basename . ".lst")
        silent! exec 'Nonprint'
        " remove funny question marks
        silent! exec '%s/^\s*??*$\n//g'
        " remove SAS header lines
        silent! exec '%s/^The\ SAS\ System.*$\n//g'
        normal! gg0
    else
        echo "SAS lst file does not exist."
    endif
endfunc




fu! BlankTabline()
    let g:tabline_blank=1
    set tabline =
    set tabline +=%{g:blank_string}
endf


func! ToggleTabline()
    if (g:tabline_blank)
        call ShowTabline()
    else
        call BlankTabline()
    endif
endfunc


func! ShowTabline()
    let g:tabline_blank=0
    set tabline=

    " Left hand side
    " --------------
        " filename
        set tabline +=%t
        " file type
        set tabline +=\ \ %y
        " file format (unix, dos, mac)
        " set tabline +=\ [%{&ff}]
        " file encoding
        " set tabline +=\ [%{&fileencoding?&fileencoding:&encoding}]
        " read-only
        set tabline +=%r
        " modified
        set tabline +=%m
        " spelling enabled?
        set tabline +=\ %{g:spell_status}

    " Right hand side
    " ---------------
        set tabline +=%=
        set tabline +=%t
        " truncate here if tabline too long
        set tabline +=%<
endfunc



func! DisplayPath()
    " show first two parent folders of current file
    let current_path  = expand('%:p:h')
    let folders       = split(current_path, "/")
    if len(folders) > 2
        let output  = "../" . folders[-2] . "/" . folders[-1]
    else
        let output  = current_path
    endif
    return output
endfunc


" remove brackets
    " (I want this inner content)
    let no_brackets   = strpart(brackets, 1, strlen(brackets) - 2)

" show date
nnoremap <c-d>           :exec 'echo strftime("%d-%b-%y (%H:%M)")'<CR>

" split line - didnt really work
nnoremap <leader><enter> D:exec ':.s/\s\+$//e'<CR>o<C-r>"<ESC>0

func! CustomSaveAs()
    call BlankLines(1)
    let current_name = expand('%:p')
    if (current_name == '')
        " we're trying to save a new buffer
        let current_name = getcwd() . '/'
    endif
    " ask user for new filename
    echohl User2
    let new_name = input('Save As: ', current_name, 'file')
    echohl None
    " try to save new file
    if (new_name != '')
        try
            " sometimes windows adds in *extra*
            " escapes so remove them first
            exec ':saveas ' . fnameescape(new_name)
        catch
            call BlankLines(2)
            call EchoItem('Error: ', v:exception, 'ErrorMsg')
            call BlankLines(1)
        endtry
    endif
endfunc



" override "iPython" print function (from .../ftplugin/python.vim)
    let command    = "from __future__ import (print_function);"
    let command   .= "from myprint import *;"
    let command   .= "print = color_decorator(print)"
    " nnoremap <buffer> mh        :exec 'call PasteText("' . command   . '")'<CR>


" old custom colour
    exe "hi! User4 "     . s:vmode . "fg='white' " . s:vmode . "bg='DarkMagenta'"

" when vim is in insert mode
    autocmd InsertEnter * set cursorline
    autocmd InsertLeave * set nocursorline


" old 'ml' and 'mn' mappings
    nnoremap ml     ^i-<space><Esc>
    vnoremap ml     I-<space><Esc>
    vnoremap mn     :s/^\s*\zs/\=(line('.') - line("'<")+1).'.  '<CR>


func! ShowPosition()
        let row    = line('.')
        let col    = virtcol('v')
        let total  = line('$')
        call EchoItem('col:', l:col, 'Statement')
        call EchoItem('row:', l:row, 'Statement')
        call EchoItem('total:', l:total, 'MoreMsg')
endfunc

" old code cells
    let g:code_cell_start  = '^\S\+ In\[\d*\]\S*'
    let g:code_cell_end = '^\S\+ \(In\|Out\)\[\d*\]\S*'


" block/sexy commenting
    nmap <leader>p vip<plug>NERDCommenterSexy
    nmap <leader>u vip<plug>NERDCommenterUncomment<bar>jvip<

" optional arguments
func! MiniArrangeCSV(...)
    " Use 'vim.csv' plugin to align CSV columns.
    " Don't align the whole CSV file though,
    " just the lines between 'begin' and 'end'.
    if &filetype == 'csv'
        " how many optional arguments
        " passed into this function?
        if a:0 == 0
            " no arguments, start from current line
            let begin = line('.')
        else
            " start from specified line 'a:1'
            let begin = a:1
        endif
        let end_buffer  = line('$')
        let end         = begin + 50
        if end > end_buffer
            let end = end_buffer
        endif
        exec ': ' . begin . ', ' . end . ' ArrangeColumn 50'
        exec 'normal! ' . begin . 'gg'
    endif
endfunc


jump to command window
    nnoremap <leader>L      q:

" how to do a tricky syntax match. The "+" symbol must be escaped too!
    syntax match efnote   "ef-\w\+"
    hi!    link  efnote   WarningMsg 

" call bash aliases which
" execute tmux commands
    nnoremap  tl         :!tl<CR><CR>
    nnoremap  th         :!th<CR><CR>
    nnoremap  tk         :!tk<CR><CR>
    nnoremap  tj         :!tj<CR><CR>
    nnoremap  tc         :!tc<CR><CR>
    nnoremap  ts         :!ts<CR><CR>
    nnoremap  tb         :!tb<CR><CR>
    nnoremap  tr         :!tr<CR><CR>
    nnoremap  tu         :!tu<CR><CR>
    nnoremap  tp         :!tp<CR><CR>
    nnoremap  tn         :!tn<CR><CR>
    nnoremap  ti         :!ti<CR><CR>
    nnoremap  tm         :!tm<CR><CR>


" unused function
    func! UnEscape(str, chars)
    return substitute(a:str, '\\\@<!\(\\\\\)*\\\([' . a:chars . ']\)',
            \ '\1\2', 'g')
    endfunc

" old code from splitwindow function
    " is current buffer empty?
    if line2byte(line("$")+1)<=2
        " move to another buffer!
        bnext
    endif

" old saveas function!
" dont substitute spaces, cos it might mess up the path!!!
        let escape_new_name = substitute(new_name, ' ', '_', 'g')

" old netrw stuff
    " (I think if you just do :Explore<CR> then vim takes the
    " current folder automatically)
    nnoremap ge :Explore .<CR>
    " *%:p:h* makes Mobaxterm more reliable
    nnoremap ge :Explore %:p:h<CR>

automatically create a markdown title
    command!  DoTitle       exec 'normal yypjg_v^r-'

old visual block mappings
    " nnoremap <leader>v   :call VisualBlockParagraph()<CR>              
    " nnoremap <leader>V   :call VisualBlockParagraph()<CR>I<SPACE><ESC> 
    " nnoremap <leader>D   :call VisualBlockParagraph()<CR>d             
    " nnoremap <leader>z   <C-V>j                                        

block paragraph shift left (more trouble than its worth)
    nnoremap vm         :call VisualBlockParagraph()<CR>whd

" Replace - word only (dont use this!)
    vnoremap <C-r>      "hy:.,$s/\<<C-r>h\>//gc<left><left><left>

" yank entire file (old inefficient way)
    command!  YankAll       exec 'normal! mzggVGy`z'

" old overpaste using the "0 register
    " nnoremap <c-p>      :exec "normal ".strlen(@0)."x\"0P"<CR>

" old manual block comment/uncomment
    nmap <leader>u  k{jdd}kddkvip<

" old ShowFilename
    command!  ShowFilename  normal! o<C-R>=expand("%:p")<CR><ESC>^
    command!  ShowFilename  set paste <BAR> exec 'normal! o<C-R>=expand("%:p")<CR><ESC>0' <BAR> set nopaste

" windows gvim 7.3
    func! MoveFile(old_file)
            " rename file by adding an extension: '.old'
            if filereadable(a:old_file)
                if has('win32') || has ('win64')
                    " use a batch file because 
                    " 'move' doesnt work with '!start'
                    let l:move_script = 'H:\move-file.bat'
                    let l:new_file    = a:old_file . '.' . strftime('%y%m%d-%H%M%S')
                    silent execute '!start ' . l:move_script . ' "' . a:old_file . '" "' . l:new_file . '"'
                endif
            endif
    endfunc

" from openUrl function
    " match from 'http' up to end-of-line
          let bookmark_url  = matchstr (current_line, "\\(http\\).*$")

    " match from 'http' up to a word boundary '\>'
          let url  = matchstr (current_line, "\\(http.*\\>\\)")

" old function using X11 paste
fu! PasteClipboard()
    if &filetype == 'python'
        " iPython magic '%paste'
        " -q = quiet (dont echo pasted block)
        call VimuxSendText("%paste " . g:ipython_quiet_paste)
        call VimuxSendKeys("Enter")
    else
        " paste contents of 'unnamed' register
        call VimuxSendText(@")
    endif
endf

old easymotion!!!
    " Bundle 'Lokaltog/vim-easymotion'

    " ---------------------------------------------------------------------------
    "                       Easymotion
    " ---------------------------------------------------------------------------

    " " switch off key mappings
    " let g:EasyMotion_do_mapping = 0
    " let g:EasyMotion_do_shade = 0

    " hi link EasyMotionTarget         User3
    " hi link EasyMotionTarget2First   User4
    " hi link EasyMotionTarget2Second  User4

    " hi link EasyMotionShade          Comment
    " hi link EasyMotionMoveHL         ErrorMsg

    " " let g:EasyMotion_keys               = 'asdghklqwertyuiopzxcvbnmfj'
    " let g:EasyMotion_keys               = 'asdfjkl'
    " let g:EasyMotion_smartcase          = 1
    " let g:EasyMotion_prompt             = 'Search for {n} character(s): '
    " let g:EasyMotion_grouping           = 1
    " let g:EasyMotion_startofline        = 0
    " let g:EasyMotion_skipfoldedline     = 1
    " let g:EasyMotion_use_migemo         = 0
    " let g:EasyMotion_use_upper          = 0
    " let g:EasyMotion_enter_jump_first   = 0
    " let g:EasyMotion_space_jump_first   = 0

    " let g:EasyMotion_inc_highlight      = 0
    " let g:EasyMotion_move_highlight     = 0
    " let g:EasyMotion_landing_highlight  = 0

    " let g:EasyMotion_cursor_highlight   = 0
    " let g:EasyMotion_use_regexp         = 0
    " let g:EasyMotion_add_search_history = 0
    " let g:EasyMotion_off_screen_search  = 0

    " " search both forwards AND backwards
    " nmap f <Plug>(easymotion-s)
    " vmap f <Plug>(easymotion-s)

    " " pre-load easymotion so its quicker
    " call EasyMotion#dummy(1,0,1)

# install vim plugins using vundle
# vim +BundleInstall +qall

nnoremap H              :CtrlPBuffer<CR>

"   filename only
" set rulerformat=%40(%=%1*%t%0*%)
"   rows + cols-total
" set rulerformat=%40(%=%1*(%v,\ %l%<-%L)%0*%)
"   rows + cols-total + current folder
" set rulerformat=%40(%=%1*%l/%L-%v%<\ %{DisplayPath()}%0*%)
"   rows + cols-total + filename
" set rulerformat=%40(%=%1*(%v,\ %l%<-%L)\ %t%0*%)

" toggle cursorline
nnoremap <leader>-  :set cursorline!<CR>

" rainbow_parentheses
" ---------------------------------------------------------------------------
nmap <leader>(      :RainbowParenthesesToggle<CR>

" Change cursor shape in insert mode
    if exists('$TMUX')
        let &t_SI = "\<Esc>Ptmux;\<Esc>\e[6 q\<Esc>\\"
        let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
    else
        " set (non-blinking) i-beam 
        let &t_SI = "\e[6 q"
        " set (non-blinking) block
        let &t_EI = "\e[2 q"
    endif

" create custom command 
    command! -nargs=1 -complete=filetype SetFileType :set filetype=<args>

function! ShowPosition()
        let current_line = line('.')
        let current_col  = virtcol('v')
        let total_lines  = line('$')
        echohl MoreMsg
        let info = ''
        let info = info . ' [' . current_line.'/'.total_lines .']'
        let info = info . ' [' . current_col . '] ' 
        echo info
        echohl None
endfunction

" Setup Vundle (old vundle version)
"set runtimepath+=$VIM_FOLDER/bundle/vundle/

"if has('win32') || has ('win64')
"    call vundle#rc('$VIM_FOLDER/bundle/')
"else
"    call vundle#rc()
"endif

"Bundle 'gmarik/vundle'

" Plugin repos on Github
"Bundle 'kien/ctrlp.vim'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'scrooloose/nerdcommenter'
"Bundle 'benmills/vimux'
"Bundle 'SirVer/ultisnips'
"Bundle 'majutsushi/tagbar'
"" Bundle 'kien/rainbow_parentheses.vim'

nnoremap m; :call JumpScreenEdge()<CR>
function! JumpScreenEdge()
        let current_line = winline()
        if (current_line < 12)
            " we're near the top of the screen,
            " so jump to the bottom
            exec "normal! L"
        else
            " we're near the bottom,
            " so jump to the top
            exec "normal! H"
        endif
endfunction

vnoremap m; 10j0
nnoremap m; 10j0
vnoremap mm 10k0
nnoremap mm 10k0

" Go and compile Latex
nnoremap go :call LatexCompile()<CR>

" whats in the clipboard?
nnoremap <leader>p  :new<CR>p

" my old status line
" set statusline +=%=                 " switch to rhs of status line
" set statusline +=\ %t\              " filename
" set statusline +=%l/                " current line
" set statusline +=%<                 " truncate here if status line too long
" set statusline +=%L,                " total lines
" set statusline +=%v\                " virtual column number
 

function! VisualModeParagraph()
        " Create a Visual Block
        " running down through a paragraph
        let start_column = virtcol('.')
        let start_line = line('.')
        " jump to end of paragraph
        exec "normal! }k"
        let new_line_number = line('.')
        " go back to start and create a
        " visual block one column wide
        call cursor( start_line, start_column)
        exec "normal! \<c-V>" . new_line_number . "G"
endfunction

" last character in paragraph
    vnoremap ;          j}<bs>
    vnoremap <c-h>      k{j

" save and restore line position
        let start_pos = getpos('v')
        call setpos('.', start_pos)

" solarized original line margin color
exe "hi! LineNr"         .s:fmt_none   .s:fg_base01 .s:bg_base02

" Set a global syntax color for Code Cells
" (This code must be at the end of the 'vimrc' in
" case it gets cleared/overwritten by other plugins)
:exec 'autocmd Syntax * syntax match CodeCell "' . g:code_cell_start . '" containedin=ALL'
hi def link CodeCell MyCellColor

nnoremap gs             i<space><Esc>lli<space><Esc>h
vnoremap gs             di<space><space><Esc>P

" page up/down to clear any old echo messages
" execute "normal! \<c-u>"
" execute "normal! \<c-d>"

" command! -bang -nargs=* -complete=file CustomSaveAs :call SaveasEscapeSpaces(<q-bang>, <q-args>)
" nnoremap <leader>a      :CustomSaveAs <C-R>=expand('%:p')<CR>
function! SaveasEscapeSpaces(bang, filename)
        :exec "saveas" . a:bang . " " . substitute(a:filename, ' ', '\\ ', 'g')
endfunction

" save:
" using first line in buffer as filename
nnoremap <leader>S      gg^vg_"hy :CustomSaveAs <C-r>h.txt

function! IpythonTogglePaste()
    if g:ipython_quiet_paste
        let g:ipython_quiet_paste = 0
        let user_msg = 'iPython %paste: SHOW pasted contents.'
    else
        let g:ipython_quiet_paste = 1
        let user_msg = 'iPython %paste: HIDE pasted contents.'
    endif
    echohl DiffAdd
    echo user_msg
    echohl None
endfunction

easy motion settings
    " let g:EasyMotion_smartcase = 1
    " let g:EasyMotion_keys = 'fjdkslawnvom'

" slide to middle of line (i.e. column 35)
nnoremap <c-s> 35<bar>

function! DeleteFile()
        if input("Delete file? (y/n) ") == "y"
            :call delete(expand('%')) <CR>
            bdelete!
        else
            echohl String
            echo "\nDelete aborted..."
            echohl None
        endif
endfunction

" delete blank lines below
    nnoremap <silent><C-x>      m`:silent +g/\m^\s*$/d<CR>``

more changing cursor color
    if &term =~ "xterm\\|rxvt"
    " use an orange cursor in insert mode
    let &t_SI = "\<Esc>]12;orange\x7"
    " use a red cursor otherwise
    let &t_EI = "\<Esc>]12;red\x7"
    silent !echo -ne "\033]12;red\007"
    " reset cursor when vim exits
    autocmd VimLeave * silent !echo -ne "\033]112\007"
    " use \003]12;gray\007 for gnome-terminal
    endif

change cursor color for insert/normal mode
    " Cursor Appearance:   (Insert_Mode == Green, Normal_Mode == Red)
    if &term =~ "xterm"
    let &t_SI = "\<Esc>]12;green\x7"
    let &t_EI = "\<Esc>]12;red\x7"
    endif 

vimscript boolean toggle
    function! FoldColumnToggle()
        if &foldcolumn
            setlocal foldcolumn=0
        else
            setlocal foldcolumn=4
        endif
    endfunction

    The if statement simply checks if &foldcolumn is truthy (remember that Vim
    treats the integer 0 as falsy and any other number as truthy). If so, it sets
    it to zero (which hides it). Otherwise it sets it to four. Pretty simple.

" insert mode: auto-close brackets etc.
" inoremap ( ()<left>
" inoremap { {}<left>
" inoremap [ []<left>

" quit current buffer but keep any window split
" noremap qw :bp<bar>sp<bar>bn<bar>bd!<CR>

function! ShowFileInfo()
        let file_name  = expand('%')
        let file_path  = expand('%:p:h')
        let show_file  =  file_name .' (' . file_path . ')'
        let file_info  = ' (ff:'. &fileformat  .', ft:' . &filetype. ')'
        let ruler_info = ' ' . line('.').'/'.line('$').', '.virtcol('.')

        echohl String
        echo show_file . file_info
        echohl None
endfunction

nnoremap <leader>f      :CtrlPCurWD <bar> CtrlPClearCache<CR>

autocmd BufRead,BufNewFile *.dek        set filetype=fortran
autocmd BufRead,BufNewFile inlist*      set filetype=fortran
autocmd BufRead,BufNewFile *.defaults   set filetype=fortran
autocmd BufRead,BufNewFile *.list       set filetype=fortran

" move right quickly in insert mode
" by pressing alt+l
" (note: dont map anything else to <esc>l)
inoremap <esc>l <C-o>l

" Entering QuickFix window:
" disable 'search' highlight group.
" (ensures current quickfix line NOT highlighted)
autocmd BufReadPost quickfix highlight clear search 

" when quiting QuickFix window,
" re-enable search highlighting
autocmd FileType qf nmap <buffer> qq :call ResetColors()<CR> :bd<CR>

function! ResetColors()
        " :exec "hi Search         ctermfg=46   ctermbg=NONE"
        :exec "match none"
endfu 

" spell check
nnoremap <leader>S :setlocal spell spelllang=en_gb

" Custom status line. See:
"https://gist.github.com/kien/1610859
let g:ctrlp_status_func = {
            \ 'main': 'CtrlP_Statusline_1',
            \ 'prog': 'CtrlP_Statusline_2',
            \ }

fu! CtrlP_Statusline_1(...)
    let item = '%#CtrlPMode1# '.a:5.' %* '
    let dir = getcwd()
    let rightalign = ' %=%<'
    let byfname = '('.a:2.') '
    " Return statusline
    " retu item.dir.rightalign.byfname
    retu item.byfname.dir
endf

fu! CtrlP_Statusline_2(...)
    let len = '%#CtrlPMode1# '.a:1.' %* '
    let dir = getcwd()
    " Return the full statusline
    retu len.dir
endf

set splitbelow
set splitright

" if using 'smartindent', if '#' is the first character,
" it gets auto-placed in the 1st column.
" The following line stops that behaviour.
inoremap # X#

" colorscheme 16 color
" let g:solarized_termcolors = 16
" let g:solarized_visibility = "high"
" let g:solarized_termcolors = 256
" let g:solarized_contrast = "high"
" let g:solarized_termtrans = 1
" syntax enable
" set background=dark
" colorscheme solarized

" disable netrw
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

" search for TWO specific characters
nmap f <Plug>(easymotion-s2)

" nerd commenter
nmap <leader>c <plug>NERDCommenterComment
vmap <leader>c <plug>NERDCommenterComment

nmap <leader>q <plug>NERDCommenterUncomment
vmap <leader>q <plug>NERDCommenterUncomment

" auto-close netrw
" when file opened with 'o'
autocmd FileType netrw nmap <buffer> o <cr>:wincmd w<CR>:q<CR>

" open netrw and search for current file name (%)
nnoremap ge :Vexplore <bar> :/\<<C-R>=expand("%:t")<CR><CR>
nnoremap ge :Vexplore */%*<CR>

command! -nargs=+ NoteGrep exec 'enew | silent grep! -m1 -Iir * -e "<args>"' | copen 15 | redraw! | wincmd w | exec 'bdelete'
command! -nargs=+ NoteGrep execute 'silent grep! -Iir ' . NOTES_DIR . ' -e <args>' | topleft copen | redr! | normal 30zl

let g:ctrlp_cmd = 'ClearCtrlPCache <bar> CtrlP <CR>'
let g:ctrlp_extensions = ['tag', 'bookmarkdir']

let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Make sure the vim directory is always .vim
" even on Windows machines where its usually "$HOME/vimfiles"
" set runtimepath^=~/.vim

" Show matching brace on insertion or cursor over.
"set showmatch

" How many 0.1 of a second to wait before showing matching braces.
"set matchtime=3

" stay inside quickfix when enter pressed
" configure quickfix status line
autocmd FileType qf nmap <buffer> <cr> <cr><c-w><c-p>
autocmd Filetype qf setlocal statusline=\ (%P)\ %L\ lines\ %f

" dont wait so long for escape
"set timeoutlen=150

" Quickly jump to notes folder
"nmap <leader>n :cd $HOME/repos/notes/write <bar> silent noautocmd vimgrep /\c/j **/* <bar> cwindow 25 <c-left><c-left><c-left><c-left><c-left><right>
"nmap <leader>n :!notes.sh
"nmap <leader>N :!noteslist.sh
"nmap <leader>o :lcd /home/ef/Dropbox/PlainText/ <bar> topleft vnew <bar> CtrlP<CR>

" find next/prev item in quickfix window
" nmap <F2> :silent cprev<CR>
" nmap <F3> :silent cnext<CR>

" reopen previous file
"nmap <leader>t :e #<CR>

" Split windows shortcuts
"nmap <leader>s <C-W>v
"nmap <leader>v <C-W>s
"nmap <leader>s :botright vnew<CR>
"nmap <leader>v :botright new<CR>

" new empty buffer (in current window)
" cant use <c-m> cos its control code for <enter>!
" nmap <leader>m :enew<CR>

" move buffer to left/right window
"nmap <leader>l <C-W>L
"nmap <leader>h <C-W>H

" Split windows shortcuts
"nnoremap gb <C-W>\|
"nnoremap gs <C-W>=

" cycle Tabs
"nnoremap <C-n> gt
"nnoremap <C-n> :tabn<CR>
"nnoremap <C-i> gT
"nnoremap <C-i> :tabp<CR>

" Clear current search term
" nmap <BackSpace> :let @/ = ""<CR>

" terminate tab
"noremap tt :tabc<CR>

" if you want to
" override default mappings
let g:EasyMotion_mapping_f = 'f'
let g:EasyMotion_mapping_F = 'F'

" terminate buffer (but dont delete associated window)
noremap tt :bp <bar> bd # <CR>

"nmap <leader>p :ClearCtrlPCache <bar> CtrlP <CR>
"nnoremap <C-i> :bufdo bdelete <bar> CtrlPBookmarkDir <CR>
"nmap <leader>xxx :CtrlPCmdPalette<CR>

" open all files in a tab
    "\ 'AcceptSelection("e")': ['<c-t>'],
    "\ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],

" nnoremap <leader>z :TagbarShowTag <cr>
" nnoremap <leader>r :TagbarCurrentTag(p) <cr>

"dont set, title used by syntax files too
"hi Title            ctermfg=black ctermbg=240 cterm=none 

set statusline=
"set statusline +=%1*\ %n\ %*       "buffer number
set statusline +=%=%*               "switch to rhs of status line
set statusline +=%6l                "current line
set statusline +=/%L\               "total lines
set statusline +=\(%v\)\              "virtual column number
set statusline +=%1*\ %t\ %*       "relative path
"set statusline +=\ %m               "modified flag
"set statusline +=\ %r               "read only flag
"set statusline +=\ %{&ff}%*         "file format
"set statusline +=\ %y\              "file type
"set statusline +=%1*\ %f\ %*       "relative path

" its possible to set a custom tabline
"set tabline=%!MyTabLine()

" set tabline+=%{DisplayPath()}      " directory for current file

" Vim --> Tmux --> REPL 

function! VimuxSlime()
    call VimuxSendText(@v)
    call VimuxSendKeys("Enter")
endfunction

" execute current line
" noremap <C-f> "vyy :call VimuxSlime()<CR>
noremap <C-f> "vyy :call VimuxRunCommand(@v)<CR>

" execute selected text
" vnoremap <C-i> "vy :call VimuxSlime()<CR>
vnoremap <C-f> "vy :call VimuxRunCommand(@v)<CR>

" old snippets
# easy insert of brackets, quotes etc
snippet b
	(${0})
snippet a
	[${0}]
snippet c
	{${0}}
snippet v
	<${0}>
snippet s
	'${0}'
snippet d
	"${0}"
snippet t
	\`${0}\`


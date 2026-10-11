; note: loads of old code at the bottom

; variables
    ; ":="  - no need for "%" signs
    myvar := 123;
    copyvar := myvar;

    ; "=" - then you NEED "%" signs
    myvar = 123;
    copyvar = %myvar%;

; handy msgbox
    ; combine strings and variables
    ; the "%" turns everything into an expression with "." for concatenation
    MsgBox, % "width: " . width . "height: " . height . "`nx: " . x . "y: " . y

    ; For a Msg title:
    MsgBox,,My title, % "`nBegin Session " . current_session . "`nGive your best."

; Run a gitbash script
    Run,     C:\Program Files\Git\bin\bash.exe -c '$HOME/bin/mywork-gitbash.sh'
    RunWait, C:\Program Files\Git\bin\bash.exe -c '$HOME/bin/mywork-gitbash.sh' ,,Hide

; open an rdp connection
    Run %windir%\system32\mstsc.exe "C:\Users\ef\OneDrive - Derby College\IT-Setup\dcg.RDP"

; How to control the mouse
; (I used this in DBeaver)
    ; click on SQL editor window...
    ; (top right-hand corner)
    WinGetPos, wx, wy, width, height, %WIN_TITLE%
    x := width * 0.8
    y := height * 0.33
    WinActivate %WIN_TITLE%
    MouseClick, left, x, y
    Sleep, 200


; stop infinite loops...
; let "ctrl+1" activate Powerpoint ; except in Excel,
; where it has its normal function. The "$" in the hotkey
; definition stops an infinite loop of "ctrl+1"
$^1::
    if WinActive("ahk_class XLMAIN")
    {
        sendinput ^1
    }
    else
    ; ... etc ...

; Get active window class
    #1::WinGetClass, Clipboard, A

; file not found
    ; - sometimes "C:\Windows\System32" isnt found (on 64-bit machines)
    ; - Use "Sysnative" directory instead:
    Run, "C:\Windows\Sysnative\SnippingTool.exe"

; remove scroll bars
F4::
    ; remove scrollbar
    ; horizontal
    ;WinSet,Style,^0x100000,A
    ; vertical
    WinSet,Style,^0x200000,A
    return


; connecting vim to ahk
    Since AutoHotkey listens to actual keyboard events and is
    not aware of what goes on internally on any specific
    application, and since Vim's mappings are not actually
    sending new keyboard events when they trigger, no. You can
    create an AutoHotkey macro that is specific to Vim only:
    SetTitleMatchMode, RegEx
    #IfWinActive, - G?VIM\d*$
    :*?:`,w::
        do something
        return
    #IfWinActive
    ; But this has the disadvantage of triggering regardless
    ; of Vim's mode, since AutoHotkey can't know if Vim is in
    ; normal mode or no



; check these functions:
    msgmonitor
    onclipboardchange

; start AHK from DOS "BAT" file
    ; create cmd.exe shortcut in taskbar
    ; (press "shift+right click" to edit shortcut properties)
    ; Target:
        %windir%\system32\cmd.exe /c "C:\Users\Administrator\Desktop\ahk.bat"
    ; In batch file:
        start %HOMEDRIVE%%HOMEPATH%\ahk.exe %HOMEDRIVE%%HOMEPATH%\AutoHotkey.ahk

; toggle scripts:
    ; in main AHK script
    F6::
        ; Enable AHK for Python Development
        Run %HOME%\ahk.exe  %HOME%\gitbash-python-dev.ahk
        return

    ; in python AHK script
    F4::
        ; (toggle) freeze python mappings
        Suspend
        return

    ; or if you want to use more commands,
    ; put the commands *after* the suspend command!
    F4::
        ; (toggle) freeze these mappings
        Suspend
        SplashTextOn, 100, 50, PythonAnywhere, Pressed Suspend
        WinMove, PythonAnywhere, , 0, 0
        return


; F4::
    ; Enable AHK mappings for 'PythonAnywhere' in the Browser
    Run %A_ScriptDir%\Autohotkey.exe %A_ScriptDir%\pythonanywhere.ahk
    return


#NoEnv
    ; Recommended for performance and compatibility with future AHK releases.
    ; But Note! #NoEnv kills windows env variables like %HOME% etc...

#Warn
    ; Enable warnings to assist with detecting common errors.

SendMode Input
    ; Recommended for new scripts due to its superior speed and reliability.

SetWorkingDir %A_ScriptDir%
    ; Ensures a consistent starting directory.

#SingleInstance Force
    ; This unloads any previous version of this script and reloads the current one.

#Persistent
    ; Keeps script running.

; control other scripts
    #NoEnv
    Run, %A_ScriptDir%\Test1.ahk
    Run, %A_ScriptDir%\Test2.ahk
    Sleep, 5000
    DetectHiddenWindows On
    SetTitleMatchMode 2
    If (WinExist("Test1.ahk ahk_class AutoHotkey")) {
        WinClose
    }
    Sleep, 5000
    If (WinExist("Test2.ahk ahk_class AutoHotkey")) {
        WinClose
    }
    MsgBox, Closed all started scipts!
    Exit

; send a cmd TO vim to set something FROM
; vim INTO the system clipboard
        ; "@*" is the system clipboard
        ; (assume vim window is active)
        SendInput :let @*='who'{Enter}

; AHK hot strings!
    ; think you must press {enter} after the string
    ::btw::
    MsgBox You typed "btw".
    return

; old window switching code
    ^space::
        ; Toggle between Moba and DOS console
        IfWinActive ahk_class ConsoleWindowClass
            WinActivate ahk_class TMobaXtermForm
        else
            WinActivate ahk_class ConsoleWindowClass
        return

; window ids:
    excel window    ahk_class XLMAIN
    google chrome   ahk_class Chrome_WidgetWin_1

; old chrome activate code:
    ^4::WinActivate, % "ahk_pid " GetOldestPIDFromProcessName("chrome.exe")
    return

    GetOldestPIDFromProcessName(strProcessName) {
       for oProc in ComObjGet("winmgmts:").ExecQuery("Select ProcessID,CreationDate from Win32_Process WHERE Name = '" strProcessName "'")
       {
           nOldestPID := (nOldestPIDCreationDate > oProc.CreationDate) ? oProc.ProcessID : nOldestPID ? nOldestPID : oProc.ProcessID
           nOldestPIDCreationDate := oProc.CreationDate
       }
       return nOldestPID
    }

; Key symbols
    ; # Win (Windows logo key).
    ; !     Alt
    ; ^     Control
    ; +     Shift

; Send Key strokes
    !l::
    SendInput @list{Space}
    return

; Control a group of windows
    GroupAdd, terminals, ahk_class mintty
    WinClose  ahk_group terminals

; Send vlc pause command
    ^Enter::
    ControlSend, , {Space}, ahk_class QWidget

; christmas 2013
    ^4::
    IfWinExist Git Bash
        WinActivate
    return

    F12::
    IfWinExist Git Bash
        WinActivate
    return

    #s::
    IfWinExist Sublime Text
        WinActivate
    return


; (RDP) remote desktop connection
^0::
    if WinExist("ahk_class TscShellContainerClass")
    {
        WinActivate ahk_class TscShellContainerClass
    }
    else
    {
    ; Start new RDP connection
    SplashTextOn, 200, 100, AHK, `nStarting Remote connection...
    Run %windir%\system32\mstsc.exe "C:\Users\ef\Documents\OneDrive - Derby College\IT-Setup\derby-college-remote.rdp"
    SetTimer, SplashFinishFunc, 1500
    }
    Return


^2::
    ; Q-dir qdir (Windows Explorer alternative)
    if WinExist("ahk_class ATL:0000000140163FE0")
    ; if WinExist("ahk_class CabinetWClass")
    {
        WinActivate ahk_class ATL:0000000140163FE0
    }
    else
    {
        ; Alternative to normal File Explorer
        Run C:\Users\ef\Documents\TOOLS\Q-Dir\Q-Dir_x64.exe C:\Users\ef\Documents\TOOLS\Q-Dir\job.qdr

        ; Note: AutoHotkey has OS-level variables
        ; (see https://www.autohotkey.com/docs/Variables.htm)
        ;Run, explore %A_ProgramFiles%
        ; Run explore %A_Desktop%
        ; Run explore %A_MyDocuments%
        ; Run explore %HOME%
    }
    return


^7::
   ; Speedcrunch calculator
    if WinExist("ahk_class QWidget")
    {
        WinActivate ahk_class QWidget
        WinSet, Redraw,, ahk_class QWidget
    }
    else
    {
        ; Start new Calculator
        ; SplashTextOn, 200, 100, AHK, `nStarting Calculator...
        Run %HOME%\Documents\TOOLS\calc\SpeedCrunch.exe
        ; SetTimer, SplashFinishFunc, 1500
    }
    Return


; let "ctrl+1" activate email ; except in Excel,
; where it has its normal function. The "$" in the hotkey
; definition stops an infinite loop of "ctrl+1"
$^1::
    if WinActive("ahk_class XLMAIN")
    {
        sendinput ^1
    }
    else
    {
        if WinExist("ahk_exe thunderbird.exe") {
            ; Activate application
            ; WinActivate, ahk_exe outlook.exe
            ; WinActivate ahk_class PPTFrameClass
            WinActivate ahk_exe thunderbird.exe
        }
        else {
            start_email()
        }

    }
    return



cycle_mintty_window()
{
    ; Activate the next open 'minnty' console
    ; from a global list of all open consoles
    global

    ; Find current active console
    Loop %global_mintty_list%
    {
            ; Get Window ID of current one
            win_id := global_mintty_list%A_Index%

            IfWinActive ahk_id %win_id%
            {
                idx_current := A_Index
                break
            }
    }

    ; increment console counter
    if (idx_current = global_mintty_list)
        idx_next := 1
    else
        idx_next := idx_current + 1


    ; Activate next console...
    next_win_id := global_mintty_list%idx_next%


    IfWinExist ahk_id %next_win_id%
        WinActivate ahk_id %next_win_id%
    else
    {
        ; Couldn't find next console. Something wrong with console list.
        ; Probably one of them was closed. Just re-create global list.
        WinGet, global_mintty_list, List, ahk_class mintty

        if global_mintty_list = 1
        {
            ; Theres only 1 console open...
            ; Make it active...
            WinActivate ahk_id %global_mintty_list1%
        }
        else if global_mintty_list = 2
        {
            ; Theres 2 consoles open...
            ; Make the "second" one active...
            WinActivate ahk_id %global_mintty_list2%
        }
    }
}


; Word
    #IfWinActive ahk_class OpusApp
        ^l::
            SendInput {Right}
            Return
        ^h::
            SendInput {BackSpace}
            Return
        ^w::
            SendInput ^+{left}{delete}
            Return
    #IfWinActive


; -----------------------------------------------
; Control what happens when "ctrl + ;" is pressed
; -----------------------------------------------

    #IfWinActive ahk_class TMobaXtermForm
    ; #IfWinActive ahk_class mintty
        ; In Mobaxterm: jump to next TMUX pane
        ^;::
            sendinput ^{Space}l
            return
    #IfWinActive

    #IfWinActive ahk_class mintty
        ; In Gitbash: activate iPython console
        ^;::
            Setup_iPython_Console()
            return
    #IfWinActive

    #IfWinActive ahk_class ConsoleWindowClass
        ^;::
            ; In iPython Console: activate Gitbash
            WinActivate ahk_class mintty
            return
    #IfWinActive


Snip tool code
--------------
    ; Microsoft snip tool
    if WinExist("ahk_class Microsoft-Windows-SnipperToolbar")
    {
        WinActivate ahk_class Microsoft-Windows-SnipperToolbar
        sendinput !n
    }
    else if WinExist("ahk_class Microsoft-Windows-SnipperEditor")
    {
        ; snip tool may be in "editor" mode
        WinActivate ahk_class Microsoft-Windows-SnipperEditor
        sendinput !n
    }
    else
    {
        ; Launch snip tool.
        ; Note: must use "Sysnative", not "System32"!
        Run, %A_WinDir%\Sysnative\SnippingTool.exe
        WinWaitActive ahk_class Microsoft-Windows-SnipperToolbar
        WinActivate   ahk_class Microsoft-Windows-SnipperToolbar
        sendinput !n
    }
    return

; Links
    - text expander built on ahk https://lintalist.github.io/
    - Autohotkey version 2? https://news.ycombinator.com/item?id=37218263

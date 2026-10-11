
### sleep / wait for 5 secs
    timeout 5

### show all environment variables
    set

# multiple commands
    > dir & PAUSE

# delete multiple files
    > del *.bak *.prn

### mozillacopy Lboro
    - Copy mozilla settings from Lboro Udrive to current machine
    xcopy U:\Mozilla\* %appdata%\Mozilla /s /i


# sample batch file
    @echo off

    IF [%1] == [] GOTO NoParams
    IF [%2] == [] GOTO NoParams

    REM     %1 - full path of SAS script MINUS its file extension
    REM     %2 - full path of SAS script

    echo Backing up: %1.log ...
    MOVE  /Y    "%1.log"   "%1.log.old"

    echo Backing up: %1.lst ...
    MOVE  /Y    "%1.lst"   "%1.lst.old"

    echo.
    echo Running script: %2 ...
    "C:\Program Files\SASHome\x86\SASFoundation\9.3\sas.exe" %2 ^
    -NOSPLASH ^
    -CONFIG "C:\Program Files\SASHome\x86\SASFoundation\9.3\nls\en\sasv9.cfg"

    :NoParams
    echo Error: Must supply 2 input parameters.

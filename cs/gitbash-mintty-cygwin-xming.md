cygwin

### Xming: ssh x11 clipboard
    - must install an x11 server
    - option 1:
        - VcXsrv
    - option 2:
        - Ancient FOSS version
          : http://sourceforge.net/projects/xming/
        - Modern but costs £10:
          http://www.straightrunning.com/XmingNotes/
        - 2021: 
            - I bought the modern version:
              colin@xming.myzen.co.uk
            - login details in my info.md
            - also have zip with xming fonts here:
              $MY_REPOS/marks/utils/Xming_Colin.zip
            - ASIDE: 
                - To run a CUSTOMISED CONFIG 
                - (i.e. with 'multiwindow')
                - First use  `XLaunch.exe` to create
                  `config.xlaunch`
                -  Then create windows shortcut:
                    - `TARGET`:
                      C:\Users\ania\Documents\TOOLS\Xming\XLaunch.exe
                      -run
                      C:\Users\ania\Documents\TOOLS\Xming\config.xlaunch
            - TIP: 
                - force Xwindow to 'popup' over other windows:
                - right-click Xming system icon
                - click `Reload Xmingrc`
        - HOWTO:
            - Run Xming from the programs.
            - Open GitBash from the Start Menu.
            - Export display environment on LOCAL machine:
            - `export DISPLAY=localhost:0`
            - ssh to the target machine with x11 forwarding
              enabled
            - `ssh -XY me@myhost`
            - Try x11 forwarding e.g. nautilus on the target
              machine.

        - Xming gotcha!
            - use the "-Y" argument to make it work
            - ie: `ssh -XY do`
            - or use my alias `xming_ssh`

### Gitbash startup
    Note: when launched  gitbash runs scripts in `/etc`
    - it runs: `/etc/profile`
    - it runs: `/etc/profile.d/env.sh`

### Add basic Linux utilities (eg tmux, cal)
    - 64-bit http://repo.msys2.org/msys/x86_64/
    - 32-bit https://repo.msys2.org/msys/i686/
    - download tar files and unpack using `zstd`
    - copy the `.exe` into  /usr/bin
        - Use Windows Explorer (as Administrator) to copy them.
        - Start Windows Explorer as Administrator via 'Task
          Manager'/'New Task'
    - LINUX utilities like "cal.exe"
        - Package: util-linux
        - https://packages.msys2.org/package/util-linux
    - note: need anaconda's 'zstd' to inflate: 
        ```
        conda install -f zstd
        zstd.exe -d   util-linux-2.35.2-1-x86_64.pkg.tar.zst 
        ```

### mintty start folder
    - Force mintty to start in a specified directory:
    - Method 1
        - fill the "_Start In_" textbox in its windows shortcut.
    - Method 2
        - In ahk script:
        - mintty.exe -~
        - mintty.exe --dir "c:\my\custom\folder"

### Random comment
    - MSYS2 programs are slower than their MinGW counterparts 
    - Therefore the 'Git for Windows' project tries to provide as
      many components as possible as _MinGW_ binaries.

### extra pacman packages for git-bash
    pacboy -S ctags:x
    pacboy -S imagemagick:x 
    pacboy -S ghostscript:x 

### create custom portable gitbash (sdk)
    on fast machine:
        git clone https://github.com/git-for-windows/git-sdk-64.git
        cd git-sdk-64/
        git checkout master
        command rm -rf mingw32 # dont need 32-bit
        git ex # export to 'tar' archive
    download 'tar' to slow machine
        untar it
        cd git-sdk-64/
        manually create: /dev/shm
        manually create: /dev/mqueue
        disable some scritpts in: /etc/profile.d
        pacman works now
        try: pacman -S tmux
        (optional? delete the system-wide git config?)

### handy .minttyrc
        RowSpacing=3
        Transparency=Medium

# run ipython.exe in mintty/cygwin/GIT BASH!!!
    winpty ipython.exe

### portable cygwin
    with all cygwin processes closed, you can simply archive
    your cygwin folder (zip it up) and then extract it on
    your target machine. Only the platform (x86/x86_64)
    needs to match. You may also want to grab the shortcut
    too.

### setup full proxy for mintty/gitbash
    > export ALL_PROXY=http://my_domain\my_username:my_password@my_proxy:my_port
    > export FTP_PROXY=http://my_domain\my_username:my_password@my_proxy:my_port
    > export GIT_CURL_VERBOSE=1
    > export GIT_SSL_NO_VERIFY=1
    > export HTTPS_PROXY=http://my_domain\my_username:my_password@my_proxy:my_port
    > export HTTP_PROXY=http://my_domain\my_username:my_password@my_proxy:my_port
    > export NO_PROXY=localhost,127.0.0.1

    note: to find the proxy server:
    > reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" | find /i "proxyserver"

### git bash mintty tip 1
    - if gitbash/mintty is slow then:
    - `%HOME%`: define this environment variable (for
      current user) for which points to _local drive_
      (mintty may be slow cos home is a network share)

### git bash mintty tip 2
    - "gitbash.exe" is a wrapper for 'mintty' but the
      wrapper wont pass all the mintty arguments.
    - Hence create your own shortcut and execute:
    `"C:\Program Files\Git\usr\bin\mintty.exe" --window max --exec "/usr/bin/bash" --login -i`

### git bash mintty tip 3 (system config)

    - `C:\Program Files\Git\mingw64\etc\gitconfig` contains
      system-level config.

    - Thats where I found the entry '`credential.helper
      = manager`' that was causing the GCM prompt to persist
      despite my local settings.

    I guess the two fixes would be:

        - What I did, open that system gitconfig in an elevated
          text editor and nuke its contents - no more prompt!

        - Theoretically, you could run Git Bash elevated and do:
        > git config --system --unset credential.helper manager

### which server
    mirrors.kernel.org (for speed apparently)

### where are the network drives?
    start from ...
    cd /cygdrive

### cygwin vim executable
    C:\cygwin\bin\vim-nox.exe

### Change mintty window title
    echo -ne '\e]0;Some Title string here\a'

### start mintty minimised
    .../path/exe -w min -

### mintty
    mintty starts with a '-' (i.e. a single dash) as its only argument,
    which tells it to invoke the user's default shell as a login shell.

### handy unix utils
    package: util-linux
    e.g. whereis, kill, mount etc

### CYGwin history
    Cygwin was originally developed by CYGNUS Solutions,
    which was later acquired by Red Hat

### check package installed
    e.g. httpd
    cygcheck -l httpd

### extra packages needed
    colordiff
    imagemagick
    vim
    git
    util-linux
    ca-certificates
    python
    autojump
    git clone git://github.com/joelthelion/autojump.git

### GIT error
    error setting certificate verify locations:
    need to install ca-certificates package!

### .bashrc is ignored
    cygwin looks for ".bash_profile"
    ln -s ~/.bashrc ~/.bash_profile

### funny "\r" errors for .bashrc and .bash_alias
    config files have WINDOWS line endings instead of UNIX

### wsltty (mintty for windows bash)
    alternative to standard MS Console
    https://github.com/mintty/wsltty

    start:
        run batch file: "WSL Bash ~ in Mintty"
        > %LOCALAPPDATA%\wsltty\bin\mintty.exe --wsl -h err --configdir="%APPDATA%\wsltty" -o Locale=C -o Charset=UTF-8 /bin/wslbridge -C~ -t /bin/bash

    'config' file:
        (_~/.minttyrc_ equivalent)
        > /mnt/c/Users/ef/AppData/Roaming/wsltty/config
        (I have one stored as ~/dotfiles/local/old/wsl/wsltty-config)

### Links
    " NICE: How to remap key codes / escape codes in various terminals https://stackoverflow.com/questions/16359878/how-to-map-shift-enter


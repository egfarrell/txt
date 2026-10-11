

### LTSC: Cut down version of windows
    - Microsoft actually makes the version of Windows that people
      want, but it’s called `LTSC` and they really don’t want you
      to have it.
    - No bloat, no ads, no forced or feature updates, optional
      security patches only, virtually nothing installed by
      default, and minimal telemetry
    - It's literally on archive.org, just download the ISO and
      you can activate it with MAS


### Configure Windows 11
    - (Bypass OOBE requirement to login to Microsoft account...)
    - The simplest way imho would be to use `Windows
      configuration designer`. It generates a file that automate
      windows oobe when put on a USB key connected to the pc
      during setup.
        - https://learn.microsoft.com/en-us/windows/configuration/prov...
    - Extra: There are builds of win11 like `Ghost Spectre` that
      strip a lot of this crap out.
    - Extra: Easy way to create custom Win11 iso is using
      microwin from the Chris Titus win util suite
        - https://github.com/ChrisTitusTech/winutil
        - https://christitus.com/windows-utility-improved/
        - It's an open source textGUI powershell suite with
          hyperlinks to all the toggle tweaks, maintained by one
          talented MS engineer and contributed to and eyeballed
          by a hundred odd contibuters.


### Quickly find startup folder
    - win-r
    - shell:startup


### power off timer
    shutdown /s /t [number of seconds]
    shutdown /s /t 3600
    - abort cancel shutdown:
        shutdown /a

### Create self-signed VBA code cert
    - See pre-created cert: $HOME/Dotfiles/local/ef-code-sign-cert.pfx
    - Inside PowerShell (Run as admin)
    New-SelfSignedCertificate -CertStoreLocation "cert:\CurrentUser\My" -Subject "CN=Enda_VBA_macros" -KeyExportPolicy Exportable -KeySpec Signature -KeyLength 2048 -KeyAlgorithm RSA -Type CodeSigningCert -NotAfter (Get-Date).AddYears(5)
    - to EXPORT: 
        - win+r: `certmgr.msc`
        - look under 'Personal' folder for 'Enda_VBA_macros'
        - Right-click and export (include private key with
          export)


### Windows task switcher changer: use icons
    HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer
    AltTabSettings DWORD
    0 = Thumbnails
    1 = Classic icons

### Run File Explorer as 'Admin'
    - Task Manager
    - File -> new task
    - tickbox: as administrator

### My win 10 tweaks
    ~/dotfiles/ini/win-10-group-policy-settings.txt

### Random Locations
    - %roamappdata%\
    - %USERPROFILE%\AppData\Roaming\Microsoft\Word

### run commands (win-r)
.                           REM home folder
..                          REM users folder
appwiz.cpl                  REM programs / uninstall
devmgmt.msc
resmon                      REM resources
control
gpedit.msc
services.msc
netplwiz                    REM manage users
lusrmgr.msc                 REM local users and groups
ncpa.cpl                    REM network adapters
msinfo32                    REM sys info
compmgmt.msc                REM component management
eventvwr.msc                REM event viewer
mmc                         REM management console
perfmon.msc                 REM performance
powercfg.cpl                REM power options
sysdm.cpl                   REM system properties
firewall.cpl                REM firewall settings

### Windows 10 Drivers (for Acer)
    Backup drivers
    dism /online /export-driver /destination:"C:\Drivers_Backup"

    Restore drivers
    pnputil /add-driver "C:\Drivers_Backup\*.inf" /subdirs /install /reboot


### windows shortcuts
    WinKey + Shift + s   Auto select screen for snipping, save to clipboard
    WinKey + PrtScn      Auto Screenshot: save to: ~/Pictures/Screenshots
    ctrl + alt + 1       File Explorer: Large Icons
    ctrl + alt + 6       File Explorer: Details View

    WinKey + L           Lock Computer
    WinKey + E           WinKey Explorer is launched.
    WinKey + R           Run Command is launched.
    WinKey + F           Search
    WinKey + X           Mobility Center
    WinKey + U           Ease of Access
    WinKey + P           Projector
    WinKey + T           Cycle Super Taskbar Items
    WinKey + S           OneNote Screen Clipping Tool [requires OneNote]
    WinKey + M           Minimize All WinKey
    WinKey + D           Show/Hide Desktop
    WinKey + Up          Maximize Current Window

    WinKey + Down    = Restore Down / Minimize Current WinKey
    WinKey + Left    = Left Tile Current Window
    WinKey + Right   = Right Tile Current WinKey

    WinKey + #       = Quicklaunch (??? not working)
    WinKey + =       = Magnifier

### Delete a service
    - open `cmd.exe` in administrator mode
    - type:
    ```
    sc delete "SERVICE NAME"
    ```
    - "SERVICE NAME" is found in services.msc
    - (double-click on service to view)

### delete file with "invalid file handle"
del “\\.\F:\Movies\Con Man\Con.Man.2018.720p.WEBRip.x264-[YTS.AM].mp4”

### Onedrive stuck "processing changes"
    - In the Run window, enter:
    - %localappdata%\Microsoft\OneDrive\onedrive.exe /reset
    - After 2 or 3 minutes OneDrive should start by itself,
    - if does not open, run:
    - %localappdata%\Microsoft\OneDrive\onedrive.exe

### win10 inactive title bar color
    - Computer\HKEY_CURRENT_USER\Software\Microsoft\Windows\DWM
    - AccentColorInactive -> Copy DWORD value from AccentColor

### remove disabled startup items from list
    - delete from this key
    - HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run

### map network drive to local folder
    - add this "net use" command to the registry:
        - HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run,
        - "H_Drive",
        - net use  H: "\\localhost\c$\Users\enda.farrell1\OneDrive - Derby College\repo-hub"
    - or run 'cmd.exe'
        - net use  H: "\\localhost\c$\Users\enda.farrell1\OneDrive - Derby College\repo-hub"
        - for persitence: "/p:yes" doesnt work

### windows 10 scroll bars
    settings - ease of access- display :
    "Automatically hide scroll bars in Windows"

### SPEED UP word 2016 startup
    - close onedrive: it opens quicker then!
    - options - trust centre - protected view
        -> uncheck all 3 checkboxes

### speech recognition
https://support.microsoft.com/en-gb/help/12427/windows-speech-recognition-commands

### files SLOW to open from onedrive
    - goto onedrive settings
    - goto "office" tab
    - untick box: "Use office 2016 to sync office files that I open"

### change ownership of C:\Program Files\WindowsApps
    - (allows you to delete Microsoft Edge etc)
    - https://www.maketecheasier.com/access-windowsapps-folder-windows-10/

### halt windows 10 updates
    - group policy registry editor
    - (Win + R):  gpedit.msc
    - Computer Configuration -> Administrative Templates -> Windows Components -> Windows Update
        - Change Configure Automatic Updates setting to:
        ‘2 - Notify for download and notify for install’
    - Open Settings (Win + I) and navigate to:
        -> Update and Security -> Windows Updates.
        Click ‘Check for updates’ (applies the new configuration setting)

### win 10 group policy editor
    Show all CHANGED settings:
    - Local Computer Policy > Computer Configuration > Administrative Templates > All Settings
    - Local Computer Policy > User Configuration     > Administrative Templates > All Settings
    - sort by "state":
        - change to "Not Configured" to revert to default state


### windows 10: block internet access
    - Win 10 Pro -> Start -> Search -> "firewall" -> "allow an
      app through Windows Firewall" -> "Change settings" ->
      uncheck apps and features to disallow access to internet.

### windows 10: stop certain driver updates
    - wushowhide.diagcab
    - https://support.microsoft.com/en-gb/help/3073930/how-to-temporarily-prevent-a-driver-update-from-reinstalling-in-window

### clean install: windows 10 education
    - create install media (will be prompted for product key)
    - enable legacy bios boot
    - boot into legacy mode (esc, then f9) (otherwise install will eventually get stuck at "getting ready")
    - important: because of legacy mode, _delete_ ALL partitions
    - install as normal

### REG: Disable/Enable Scheduled maintainence tasks
    Disable
        Windows Registry Editor Version 5.00
        [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance]
        "MaintenanceDisabled"=dword:00000001

    Enable
        Windows Registry Editor Version 5.00
        [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance]
        "MaintenanceDisabled"=-


### Zoostorm PC tip to install Windows 7
    - To switch _UEFI_ off, launch _CSM_ took me a while to find this

### find windows proxy settings
    > reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" | find /i "proxyserver"

### regsitry admin restrictions
    use a _vbscript_ '.vbs' file to get around admin
    lock-down of registry editing!

### SHORTCUT keys
    without AHK!
    1. pin application to task bar
    2. press _win-1_ for 1st application on task bar
    3. press _win-2_ for 2nd appplication ... etc etc

### Startup folder Windows 7
    C:\Users\<YourUserName>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

### windows 7 tips

    disable hibernate
        powercfg -h off

    clear local temp folder
        cd /d %temp%
        cd ..
        rd /s temp

    Location of temp files
        C:\Users\<user>\AppData\Local\Temp
        C:\Users\<user>\AppData\Local\Microsoft\Windows\Temporary Internet Files
        C:\Windows\Temp
        C:\Temp

    clean obselete windows update files (from WinSxS folder)
        http://support.microsoft.com/kb/2852386/en-us

### Classic Alt-Tab (windows 7)
    HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer
    New and DWORD (32-bit) Value
    AltTabSettings
    1

### Windows Delete Confirmation
    Right-click Recycle bin
    Uncheck Delete Confirmation

### Desktop Wallpaper
    119    62
    63    106
    79    105

### Outlook tips
    # keyboard shortcuts
        ctrl+q: mark email as read
        ctrl+u: mark email as unread
        ctrl+"numpad +": expand   all groups
        ctrl+"numpad -": collapse all groups

    # Find `sub-folder` for email
        - open email ('pop out')
        - Press: Ctrl+shift+f
        - click 'Browse' in top right corner

    # outlook calander
        - add people
        - calander - open calander - from Address book...

    # outlook spellcheck
        (2013 email)
        F7
        or add to quick access toolbar

    AHK and outlook
        for AHK shortcut to work
        enable setting:
        "Hide when minimised"

    Outlook Error:
        This operation has been cancelled due to restrictions in effect on this computer

        1. Start, click Run, type Regedit in the Open box, and then click OK.
        2. Browse to HKEY_CURRENT_USER\Software\Classes\.html
        3. Right click the value for the .html key and select Modify…
        4. Change the value from whatever it is to “htmlfile”

        Do this for the htm, xhtml, and shtml keys if they exist.

    Also create new key:
        Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Classes\htmlfile\shell\open\command
        {default} "C:\Program Files\Mozilla Firefox\firefox.exe" %1

### windows msconfig
	C:\Windows\System32\msconfig.exe

### mousekeys

(ALT) + (Left Shift) + (NumLock)
	Then you can use your keypad as a mouse.

button
	"/" and "-" toggle which mouse button 5 is.

Windows XP
	For those of you struggling to enable it under WinXP, you may need to
	choose "Settings" first in the popup dialog and tick (with the
	spacebar) "Use MouseKeys".

switch keyboards
	LEFT ALT + SHIFT
	If you happened to have multiple keyboards installed (e.g. running
	English Windows + your local kbd settings), LEFT ALT + SHIFT
	additionally switches between kbd layouts as a bonus, so be sure to
	disable this shortcut in:
	Control Panel
	> Regional and Language Options
	> Languages tab
	> click Details
	> click Key Settings

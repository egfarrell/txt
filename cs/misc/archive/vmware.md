vmware

### make copy of vm
    1.  Copy the VM directory to a new directory.
    2.  Launch VMWare Player and load the new VM (.vmx file) from it.
    3.  Edit VM properties to rename it.
    4.  Start the new VM. When prompted, select "I have copied the VM". VMWare fill fix everything else

### remove toolbar from top
    - For VMWare Player, edit preferences file at
        > C:\Users\<User>\AppData\Roaming\VMware\preferences.ini
    - and add:
        > pref.vmplayer.fullscreen.nobar = 1

### return to host:
    generally:
        ctrl + alt
    when in FULL-SCREEN:
        ctrl+alt
        ctrl + alt + enter

### setup virtual Lubuntu:
    - download iso image
    - create new vm
    - for flexibile display resolution:
        > ai open-vm-tools-desktop

remmina remote desktop


# rdp multimonitors: xfreerdp!
    # Dual monitors dont work in Remmina yet, use "xfreerdp".
    # NOTE: xfreerdp won't work if there are "gaps" in monitor layout positions...
    # NOTE: press "Right-Ctrl" in xfreerdp to direct key presses back to Lubuntu.
    - https://github.com/FreeRDP/FreeRDP
    - https://github.com/FreeRDP/FreeRDP/wiki/CommandLineInterface
    xfreerdp /monitor-list
    xfreerdp /multimon /monitors:0,1  /u:Administrator /v:ec2-35-158-217-250.eu-central-1.compute.amazonaws.com

# Useful script to control Remmina
    - $HOME/dotfiles/bin/activate-remmina.sh

# SHARE local folder with remote VM
    - the Remmina version should be above '1.2.1' version or use 'remmina-next'.
    - To upgrade your Remmina do:
        sudo apt-add-repository ppa:remmina-ppa-team/remmina-next
        sudo apt-get update
        sudo apt-get install libfreerdp-plugins-standard remmina remmina-plugin-rdp

    - Setup shared folder using Remminas GUI by 
        - right clicking on the connection, 
        - selecting "edit", 
        - checking "share folder" and selecting path
    - The shared folder will appear in Windows Explorer in the remote VM 


# host key "Control_R"
    - this is the RIGHT-HAND control key!!
    - not CTRL+R!

# force remmina to GRAB all keyboard events
    - click keyboard icon on toolbar
    - press right-hand control (Control_R) button

# audio
    its a setting in the connection! (right click)

# lubuntu-rc
    <!-- -->
    <!-- connect to lboro work-->
    <!-- not used any more-->
    <keybind key="x-x">
        <action name="Execute">
        <command>remmina -c ~/.remmina/1351971263952.remmina</command>
        </action>
    </keybind>

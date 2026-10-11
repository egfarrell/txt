
# to see disk situation
    mount -l
    sudo blkid

# _MANUALLY_ mount windows drive
    (assuming windows is on '/dev/sda3')
    sudo mkdir /media/windows
    sudo mount /dev/sda3 /media/windows

    _but_ on ubuntu 14.04!
        windows is already mounted at:
        /media/ef/OS

### *AUTO* mount ubuntu/windows drives  

    add line in /etc/fstab:

        windows partition
            sudo mkdir /media/windows
            /dev/sda3   /media/windows  ntfs    defaults    0   0

        Linux partition
            sudo mkdir /media/data
            /dev/sda3 /media/data ext4 defaults 0 2

### ubuntu mount without password

1. Open your terminal

2. Paste this into terminal and run: 
    gksu leafpad /usr/share/polkit-1/actions/org.freedesktop.udisks.policy
    (replace _leafpad_ with your chosen text editor)

3. Enter root password

4. Locate the id: (it should be near the top. line 26 for me): 
    `<action id="org.freedesktop.udisks.filesystem-mount-system-internal">`

5. When you found that id, look for line
    `<allow_active>auth_admin_keep</allow_active>`

6. Change `auth_admin_keep` to 'yes' example:
    `<allow_active>yes</allow_active>`

    You can comment it out in case you want to change it
    back for some reason. 
    `<!-- <allow_active>auth_admin_keep</allow_active> -->`

    And then just put `<allow_active>yes</allow_active>` below
    the line you just commented out.

7. Save

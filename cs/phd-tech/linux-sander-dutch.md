# How linux is organised

I got mixed up between
    'DRIVERS' -> block, character, major, minor
    'FILES' -> file descriptors 0=STDIN, 1=STDOUT etc

### Understanding the stack
    - 'user space' versus 'kernel space'.
    - User space can only access via 'signals' or 'system calls'
    - $MY_IMAGES/cs/linux/linux-stack.jpg


### role of the kernel
    - main idea: get stuff into _RAM_ so the _CPU_ can work on it.
    - $MY_IMAGES/cs/linux/role-of-kernel.jpg


### DRIVERS, kernel modules, device files
    - 'tty' is part of kernel itself, doesnt have a driver.
    - $MY_IMAGES/cs/linux/drivers.jpg


    - '_Character_' device drivers (`c` in front) - stream data e.g. serial port
    - '_Block_'     device drivers (`b` in front) e.g. hard disk
    - '_Directory_' device drivers (`d` in front). Entire subclass of device files.

    - '_major_' and '_minor_': internal representation in the
      kernel of the file in the `/dev` folder.
    - the 'dev' folder is just a convenience for the user, the
      kernel deals with the major and minor.
    - $MY_IMAGES/cs/linux/device-drivers-major-minor.jpg

    - linux: every new block device gets the next multiple
      of 16 in the "minor column" (so you couldn't have 256
      partitions)

    - 'device nodes': you never need to manually create them
      anymore. The kernel is so good it can do it
      dynamically.

    - `lsmod` get a list of all drivers currently loaded
    - `modinfo` get info about a particular driver
    - `/dev` file system. Kernel creates so-called 'node'
      files
    - `ls -l /dev/sd*`: the scuzzi harddisk drivers


### glibc
    - plays an important role in all linux programs
    - `ldd $(which passwd)`
    - 'uClibc' and 'diet libc': lightweight alternatives for
      'glibc' for embedded linux


### shell (its an 'environment'!)
    - the shell is more than a place for users to type commands.
    - Its also the environment where scripts are interpreted. And
      where you can feed your variables into a script.
    - e.g. _shell include_ file for 'systemd':
        * folder: /usr/lib/systemd/system
        * file:   smb.service
        * line:   `EnvironmentFile=/etc/sysconfig/samba`


### FILE descriptors
    - everything in Linux happens as a file: I/O, inter process
      communication etc
    - every process keeps a 'table of descriptors' which shows
      which files are currently in use. e.g 'audit' daemon:
        > 0 -> /dev/null
        > 1 -> /dev/null
        > 2 -> /dev/null
        > 3 -> socket:[12323]
        > 4 -> /var/log/audit/audit.log
        > 5 -> socket:[14444]
        > 7 -> anon_inode:[eventpoll]
        > 8 -> anon_inode:[eventfd]
    - `lsof` shows a list of all 'files' currently in use
    - `cd /proc` and see what the kernel is doing


### libraries
    - _static_ library: All the "header" files are written
      into the final binary program. And if you have 20
      binary programs that need to use the same libraries,
      they must be written to disk 20 times. Not efficient.

    - _dynamic_ library: stored as a separate file on disk.
      The command just needs to call the dynamic library.

    - LIST dynamic libraries:
        `ldd my-c-prog`
            > linux-vdso.so.1 =>  (0x00007ffee5bf8000)
            > libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007fa6d0856000)
            > /lib64/ld-linux-x86-64.so.2 (0x000056506572c000)

    Dynamic library: Version numbers:
        - you can have multiple versions of the same library
          each wtih a different version number

    shared libraries: "so" files:
        - look in `/lib64`
        - the application itself doesn't know where to find the shared libraries
        - but theres an "ld.so" helper program that finds the location
        - `/etc/ld.so.conf`: specify non-standard locations
        - `ldconfig -v`: update everything, when you add a new location
        - (alternative) compile time: you can specify where the libraries are when you compile!


# Understanding Linux Commands


### Whats involved when opening a file for read
    - sample command: `cat /etc/hosts`
    - Steps:
        * 'cat' command is read & loaded from disk into -> RAM
        * related libraries found and loaded into RAM too
        * `/etc/hosts` file must be located on disk
        * permissions of current user for file are checked
        * If permissions ok, file contents compied to RAM
    - all tasks executed via:
        * system calls
            - provided by kernel, gives access to restricted parts
        * library calls
            - come from shared libraries and provide
              functionality


### Understanding system calls
    - processes cannot access the kernel directly

    - 'system calls' are used as an interface for processes to the kernel

    - 'glibc' provides library interface for programs to use 'system calls'

    - `fork()` -> kernel creates almost identical copy of existing process
      and replaces it (how a shell starts another shell process)

    - `exec()` -> kernel starts program which replaced current process
        - $MY_IMAGES/cs/linux/fork-exec.jpg


    - _braces_: the braces on fork() and exec() indicate its a system
      call?

    - man 2 intro -> useful
    - man 2 syscall
    - man 2 mmap  (memory maps - allocate memory?)
        * `cd /proc/3004`
        * `cat cmdline`
        * `cat map`

### 'userland' versus 'kernel land'
    - hardware access: kernel ONLY! (users, processes CANT access directly)
    - the kernel only likes to work with drivers proven to work with the
      kernel. So doesnt like proprietory drivers that it cant verify.
    - $MY_IMAGES/cs/linux/userland-kernelspace.jpg


### 'strace' and 'ltrace'
    - `strace ls`: show all SYSTEM  calls for 'ls'
    - `ltrace ls`: show all LIBRARY calls for 'ls'
    - `strace -c ls`: amount of time for each system call
    - `strerr`: all output from strace is considered standard error.
      So '| grep xxx' wont work on the output! (use `2>&1`)

### signals
    - INTERUPT a process (software interupt)
    - strictly define - see `man 7 signal`
    - Cannot be ignored: SIGKILL, SIGTERM
    - Many signals specify to a command
    - example: `kill -s US1 $(pidof dd)`

# boot process
    - $MY_IMAGES/cs/linux/bootup-basic.jpg
    - $MY_IMAGES/cs/linux/bootup-detailed.jpg
    - BIOS: basic input output system
    - UEFI: unified extensible firmware interface
    - Interfaces offered on a PC platform to _access disks_
    - i.e. platform that sits between the hardware/firmware and the OS
    - UEFI -> good for disk size > 2TB
    - UEFI -> good for GUID Partition Table (GPT) - default on UEFI.
      (also possible on BIOS systems too) challenge: read from disk
      without firmware
    - BIOS: finds its files in areas that are not really in the
      filesystem. The files are in the MBR (Master Boot Record) in the
      meta-data area of the hard disk.
    - UEFI: you'll find everything you need to load the kernel in the
      `/efi` system partition
    - the boot loader (eg GRUB2) is responsible for loading the OS kernel

### logging
    applications can log to:
    1.  stderr
    2.  own log
    3.  rsyslog -> centralised
    4.  systemd-journald -> journalctl (Note: journald still feeds
        info into 'rsyslog')

    show most recent events (eg for sshd service)
        systemctl status sshd

    is rsyslog being used? (note: SUSE uses journald for everything!)
        systemctl status rsyslog
        systemctl status rsyslogd

    show completion
        journalctl [TAB]

    show all events since login (cleared after each reboot)
        journalctl

    cd /var/log
    cat messages (centos only?)

    v /etc/rsyslog.conf
    - modules are defined
    - rules  are defined e.g. `*.emerg   :omusrmsg:*`

### systemd unit files

    - unit files define what needs to be started
    - Different types:
      * Service
      * Mount
      * Timer (cron replacement)
      * Automount
      * Path (monitor activity in a directory)
      * Target
        - a group of unit files
        - or also used as an end-point (the state your machine boots
          into)

### systemd unit dependencies
    - systemd is an "event driven" service manager. Bootup example:
      "It's not waiting for all the services to be ready..."

    types of files:
        xyz.service
            unit file?
        xyz.target
            - the "wants" are managed from the unit files
            - although the "basic.target" does have a "wants"
        /etc/systemd/system/xyz.target.wants

    - locations
        No modifications: /usr/lib/systemd/system  <---- wrong?
        No modifications: /usr/lib/systemd/user
        No modifications: /lib/systemd/system  <--- I think this is the one on Ubuntu
        Customisation:    /etc/systemd/system   <--- user changes here

    - handy
        systemd-analyze plot >  ~/output.html
        systemctl show [service name]
        systemctl daemon-reload
        systemctl list-dependencies
            green = currently enabled
            red = not enabled

    making "targets"
        ![targets]($MY_IMAGES/cs/linux/systemd-targets.jpg)


    make target like a runlevel:
        (ie a runlevel is a "specific endpoint")
        AllowIsolate = yes

    When loading a new unit
    - "_requires_"      : units that _must_ be loaded in order to load this unit
    - "_wants_"         : optional units, but loading will continue
    - "_requisite_"     : unit must _already be active_, otherwise load fails
    - "_conflicts_"     : the listed unit must never be active
    - "_before_"        : ordering
    - "_after_"         : ordering


### systemd SOCKETS
    socket:
        listen on a specific port for incoming traffic. When traffic
        arrives the related service will be started automatically.

    example:
        c /lib/systemd/system
        ssh.socket
        ssh.service


# linux storage
    $MY_IMAGES/cs/linux/linux-io-basic.jpg
    $MY_IMAGES/cs/linux/linux-io-detailed.jpg

    VFS - virtual file system (abstraction layer)
    mmap, malloc -> go to page cache

    partition: MBR
        - stored in the master boot record
        - only space for 4 partitions
        - uses primary, extended, logical
        - extended --> pointer to other partitions somewhere else (logical)
        - 2 TB max addressable

    partition: GPT
        - GPT = GUID Partition table
        - GUID = Global Unique Identifier
        - stored in GPT partition table
        - stored in GPT partition table
        - no more primary, extended, logical partitions
        - default on UEFI
        - stores backup at the end of the disk (handy if partition
          table gets lost)

    Commands / Utilities:
        - Sander doesn't recommend 'gparted'
        fdisk # MBR systems
        gdisk # GPT systems
        xxd -l 512 /dev/sda
        gdisk /dev/sda
        mount
        vi /etc/fstab

# LVM - Logical Volume Manager
    - partitions not very flexibile, because they're bound to a disk
    - logical volumes can be easily resized
    - can create snapshots an backups too!
    - warning: snapshots are not a replacement for backups. snapshots
      are tied to the original logical volume. If the LV is deleted,
      the snapshot is gone too
    - snapshots have a limited lifetime. When you are finished with
      them, remove them

    ![Volume Groups]($MY_IMAGES/cs/linux/logical-volumes.jpg)

    cat /proc/partitions
    pvcreate
    pvs
    vgcreate
    vgs
    lvcreate
    lvresize -l <--- percentage
    lvresize -L <--- absolute number
    lvs
    lvdisplay /dev/vgstriped/lvdata
    mkfs.ex4  /dev/vgstriped/lvdata
    mount /dev/vgstriped/lvdata /mnt

    - create new volume "vgstriped", but no partition first!
        vgcreate vgstriped /dev/vdb /dev/vdc

### device mapper
    lots of screenshots
    example: "fake_disk" build your own device

### POSIX compliant

btrfs
    - "butter" / "better" files system!
    - has sub-volumes -> can be mounted as independent devices

inode
    - a file is a collection of blocks
    - 'inode' is used to address files
    - 'inode' is in all POSIX systems
    - 'inode' stores everything you need to know about a file except
      the NAME!! (eg owner, permissions etc)

    ls -i # show inode for each filename
    for ext trouble shooting:
        debugfs /dev/vgstriped/vgdata
        stat 14
        dump <22> mydumpedfile

fuse
    - file systems in user space
    - 'zfs' -> filesystem not licensed for linux kernel
    - 'sshfs' -> another example. Runs as a process in user space but
    - 'ntfs 3G' -> access windows file system
      has a link into "FUSE" in the kernel VFS.
    - but these file systems need an additional driver to work with
      the kernel

iSCSI
    - network storage
    - SCSI commands sent over the network: "i" stands for "ip"
    - makes sharing storage in a datacentre easier
    - same disk can be presented to multiple servers

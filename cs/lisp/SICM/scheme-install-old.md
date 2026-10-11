sicm installation instructions:

APRIL 2020:
    - DON'T NEED THESE 3 METHODS ANY MORE
    - I dont have a 32-bit machine and also the 64-bit method has
      changed. (64-bit uses a "mechanics.sh" now)

Contents
    - 01 install 64-bit _SCMUTILS_
    - 02 compile/install 32-bit _SCHEME_ (without scmutils mechanics)
    - 03 compile 32-bit _SCMUTILS_


# Note:
    - There isnt a linux 32-bit version of scmutils! 
    - Must compile your own version into a "mechanics.band".

# 01 install 64-bit _SCMUTILS_
    - Download the system (a TAR file, compressed with gzip) into
      a temporary directory of your choice. You can get an
      appropriate tarball from this directory. The file you want
      is something that looks like
      scmutils-20130901-x86-64-gnu-linux.tar.gz.
    - The long number is the date it was made.
    - "AMDx86-64" or "x86-64" is for 64-bit pc machines running
      GNU/Linux,
    - "ix86" is for 32-bit pc architecture machines running
      GNU/Linux.
    - Your file is about 30 megabytes .
    - (There are also some MIT/GNU scheme system files that start
      mit-scheme. These are not needed for our class.)

    - Be sure you are logged in with root privileges. If your
      system does not have a directory /usr/local, you will need
      to create one. Then execute the command lines:

    >cd /usr/local
    tar -xvzf [your-tarball.tar.gz]

    The command line to start the Scheme mechanics system is
    >    /usr/local/bin/mechanics

    (If /usr/local/bin is on your search path you need not specify the
    whole path.)


# 02 compile/install 32-bit _SCHEME_ (without scmutils mechanics)
    Unpack the tar file, mit-scheme-VERSION-ARCH.tar.gz,
    into the directory mit-scheme-VERSION. For example,
    >   tar xzf mit-scheme-VERSION-i386.tar.gz

    will create a new directory mit-scheme-VERSION.
    change into the new directory:
    >   cd mit-scheme-VERSION/src

    Configure the software:
    >   ./configure

    By default, the software will be installed in /usr/local.
    To specify alternative path:
    >   ./configure --prefix=/opt/mit-scheme.

    The configure script accepts all the normal arguments for such
    scripts, and additionally accepts some that are specific to MIT/GNU
    To see all the possible arguments and their meanings:
    >   ./configure --help.

    Build the software:
    >   make compile-microcode

    Install the software:
    >   sudo make install


# 03 compile 32-bit _SCMUTILS_
    - (assume SCHEME already installed in /usr/local/bin)

    - When you untar the scmutils, there's a subdirectory 'src'
      inside. cd there and start MIT/GNU Scheme (in my box, it is
      called simply 'scheme'). You're greeted with the prompt
      1]=>

    * Load compile.scm and load.scm:
    > 1]=> (load "compile.scm")

    ... lots of stuff ...
    > 2]=> (load "load.scm")

    * At this point, you can use all the scmutils utilities.
    I then save the 'world' using 'disk-save'
    > 3]=> (disk-save "mechanics.band" "SICM")

    * This creates a file mechanics.band that can be loaded
    in other Scheme sessions,

    1. either interactively using
    >  (disk-restore "mechanics.band"),

    2. or as an argument when executing 'scheme'.
    >   mit-scheme -band /path/to/mechanics.band

    where /path/to/mechanics.band is the path to the disk image you
    created (you don't need to keep it in 'src'; it can be moved
    wherever you prefer).

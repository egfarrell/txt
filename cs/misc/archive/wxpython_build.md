
### wxpython build from source 

question 1: 
    needed before building _vPython_?

question 2: 
    I only need to this for __linux-32__?

question 3: 
    cos __linux-64__ has '`conda install wxpython`'??

### dont forget 
sudo ldconfig at the end!!

### 1. get dependencies
    ai dpkg-dev build-essential swig python2.7-dev
    ai libwebkitgtk-dev libjpeg-dev libtiff-dev checkinstall
    <!-- ai ubuntu-restricted-extras freeglut3 freeglut3-dev libgtk2.0-dev -->
    ai freeglut3 freeglut3-dev libgtk2.0-dev
    ai libsdl1.2-dev libgstreamer-plugins-base0.10-dev 

### 2.  Download and create build directory: (Check for the lastest
    package at: http://sourceforge.net/projects/wxpython/ )

    wget https://sourceforge.net/projects/wxpython/files/wxPython/3.0.2.0/wxPython-src-3.0.2.0.tar.bz2
    tar xvjf wxPython-src-3.0.2.0.tar.bz2
    cd wxPython-src-3.0.2.0
    mkdir bld
    cd wxPython/

### 3. Build and Install:

    sudo checkinstall -y --pkgname=wxpython --pkgversion=3.0.0  \
    --pkgrelease=1 --pkglicense=wxWidgets  \
    --pkgsource=http://www.wxpython.org/  \
    --maintainer=reingart@gmail.com  \
    --requires=python-wxversion,python2.7,python -D  python \
    build-wxpython.py --build_dir=../bld --install

### 4. To remove, just simply do:
    dpkg -r wxpython

### 5. make sure to run:
    sudo ldconfig 

And that's it, we pretty much install it on our Ubuntu
12.04. Run the following to check:
import wx

Note that when you first run you will run into some errors like:

    Type "help", "copyright", "credits" or "license" for more information.
    >>> import wx
    Traceback (most recent call last):
      File "<stdin>", line 1, in <module>
      File "/usr/local/lib/python2.6/dist-packages/wx-2.9.4-gtk2/wx/__init__.py", line 45, in <module>
        from wx._core import *
      File "/usr/local/lib/python2.6/dist-packages/wx-2.9.4-gtk2/wx/_core.py", line 4, in <module>
        import _core_
    ImportError: libwx_gtk2u_xrc-2.9.so.4: cannot open shared object file: No such file or directory



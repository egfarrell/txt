
### Linux install
    - METHOD 1: build (failed for me, due to conda?)
        `Disable conda! (Otherwise g++ fails half-way throught)`
        apt-get install git build-essential python3-dev libglew-dev libpng-dev libfreetype6-dev libxml2-dev libmsgpack-dev python3-pyqt5.qtopengl libglm-dev libnetcdf-dev
        git clone https://github.com/schrodinger/pymol-open-source.git
        git clone https://github.com/rcsb/mmtf-cpp.git
        mv mmtf-cpp/include/mmtf* pymol-open-source/include/
        cd pymol-open-source
        python3 setup.py build install --home=$HOME/repos/tools/pymol-open-source-build
                > failed!! NotImplementedError: compile with --glut
        - To run: $HOME/repos/tools/pymol-open-source-build/bin/pymol

        - METHOD 1b: This worked? Weird
            python3 setup.py --glut install --prefix=~/pymol-install-py2
            - https://www.mail-archive.com/pymol-users@lists.sourceforge.net/msg15638.html

    - METHOD 2: (Commercial version)
        - https://bioinformaticsreview.com/20200707/installing-pymol-on-ubuntu/
        wget https://pymol.org/installers/PyMOL-2.5.1_283-Linux-x86_64-py37.tar.bz2
        utar PyMOL-2.5.1_283-Linux-x86_64-py37.tar.bz2
        ./pymol/pymol


### Links
    - Github Pymol open source     https://github.com/schrodinger/pymol-open-source
    - Linux install                 https://pymolwiki.org/index.php/Linux_Install
    - Windows binaries open-source https://www.lfd.uci.edu/~gohlke/pythonlibs/#pymol
    - Windows install wiki         https://pymolwiki.org/index.php/Windows_Install

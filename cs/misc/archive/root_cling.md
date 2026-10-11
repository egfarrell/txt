cern root data analysis

start cling with full c++11 support
    cling  -Wc++11-extensions -std=c++11

cling meta processor commands
    .x test.cpp       – load a file (if the file defines void test() it will be executed)
    .L libname        – load a libary or file
    .x filename.cxx   – load filename and calls void filename() if defined
    .I path           – add an include path
    .printAST         – show abstract syntax tree after each processed entity
    .help             – display a brief description
    .q                – exit cling

handy commands
    root -l         start quickly
    .q              quit session

Download pre-compiled binaries
    https://root.cern.ch/downloading-root

setup ROOT env
    source ~/repos/root/bin/thisroot.sh

python 2.7 note!
    the pre-compiled binaries use python 2!!

stack advice
    What many people do is to create their own collection of
    useful ROOT snippets over time. pyROOT is really nice
    and helps a lot. If you use C++ ROOT, it helps to be
    disciplined and to stay away from CINT, and use compiled
    code (with correct types) instead. It's a bit verbose,
    but much less error prone. Another tip is to use 'flat
    ntuples' and just store floats, ints in trees instead of
    complex objects, then you don't need to worry about
    ROOT's dictionaries. (There used to be a library to read
    .root tree files without ROOT, but unfortunately I can't
    find it anymore.)

    I can't say too much in favor of @jdm's advice to "If
    you use C++ ROOT, it helps to be disciplined and to stay
    away from CINT, and use compiled code (with correct
    types) instead." I generally switch to compiled code
    (with a makefile, even) if the task exceeds
    approximately 10 lines of C++: the static analysis is so
    much more likely to let you know when you're being
    stupid, rather than cutting you some slack and doing the
    wrong thing.

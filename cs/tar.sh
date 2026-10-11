unix tar

# tar without including directory name!
    ctar -C .ssh/ .
    # note the dot "."
    # (includes all files inside ".ssh/" but when extracted wont include ".ssh" folder itself)

# Create
	tar cvfj  dropbox.tar.bz2 Dropbox/

# Extract
	tar xvf  dropbox.tar.bz2

# compress a plain tar
    gzip myplain.tar
    # creates (overwrites) new file: myplain.tar.gz

# create   cvf
# extract  xvf
# list     tvf
# add      rvf

# 'c'  = create
# 'x'  = extract
# 'v'  = verbose
# 'f'  = output to file
# 'z'  = filter the archive through gzip
# 'j'  = filter the archive through bzip2

# note: with latest version of tar,  the options z or j does
# not need to be specified for listing or extracting.


# Use "-C" to specify the folder from which the files look
# like you want, and then specify the files as seen from
# that folder:

tar -cvzf test.tar.gz -C /home/path test

# use -C when extracting too!
    tar xvgj test.tar.bz2 -C /opt/test
    # This redirects an "extract". 
    # Eg extract contents of "test.tar.bz2" but start extraction in '/opt/test'



# You missed few really useful examples, like ie.
    tar cjf archive-$(date +%Y%m%d).tbz2 dir/

# for daily backups.
    tar cjf archive-$(date +%Y%m%d).tbz2 dir/ -N ./archive-$(date -d yesterday +%Y%m%d)

# only store files newer than DATE
    -N, --after-date DATE, --newer DATE

 # `--directory=directory'
# `-C directory'
# Changes the working directory in the middle of a command line. Eg
$ tar -c -f jams.tar grape prune -C food cherry
    # will place files `grape' and `prune' from current directory into the
    # archive `jams.tar', followed by file `cherry' from the directory `food'.

    # This option is especially useful when you have several widely separated
    # files that you want to store in the same archive. Note that the file
    # `cherry' is recorded in the archive under the precise name `cherry', not
    # `food/cherry'.

    # Thus, the archive will contain three files that all appear to have come
    # from the same directory; if the archive is extracted with plain `tar
    # --extract', all three files will be written in the current directory. 

# Contrast with the command:
$ tar -c -f jams.tar grape prune -C food red/cherry
    # which records the third file in the archive under the name `red/cherry' so
    # that, if the archive is extracted using `tar --extract', the third file
    # will be written in a subdirectory named `red'.

# You can use the `--directory' option to make the archive independent of the
# original name of the directory holding the files. The following command places
# the files `/etc/passwd', `/etc/hosts', and `/lib/libc.a' into the archive
# `foo.tar':

$ tar -c -f foo.tar -C /etc passwd hosts -C /lib libc.a

# However, the names of the archive members will be exactly what they were on
# the command line: `passwd', `hosts', and `libc.a'. They will not appear to be
# related by file name to the original directories where those files were
# located.

# Note that `--directory' options are interpreted consecutively. If
# `--directory' specifies a relative file name, it is interpreted relative to
# the then current directory, which might not be the same as the original
# current working directory of tar, due to a previous `--directory' option. 



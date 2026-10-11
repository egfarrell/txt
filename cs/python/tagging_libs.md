Tagging installed Python libraries
http://allenap.tumblr.com/post/1248890048/tagging-installed-python-libraries

Generating TAGS for the project I’m working on with the
addition of an installed library - Twisted for example - can
be a pain:
    `$ python
    >>> import twisted
    >>> twisted.__file__
    '/usr/lib/python2.6/dist-packages/twisted/__init__.pyc'
    >>>
    $ etags -R src /usr/lib/python2.6/dist-packages/twisted`

I got bored of that.
Enter pyctags to take the pain away:

`$ pyctags -e -R src py:twisted`

It’s a pretty simple script:

`#!/usr/bin/env python

from imp import find_module
from os import execvp
from os.path import dirname
from sys import argv, stderr


def expand(arg):
    if arg.startswith("py:"):
        module_name = arg[3:].replace(".", "/")
        try:
            return find_module(module_name)[1]
        except ImportError:
            stderr.write("Could not expand %r.\n" % module_name)
            return arg
    else:
        return arg


if __name__ == '__main__':
    args = ["ctags"]
    args.extend(expand(arg) for arg in argv[1:])
    execvp("ctags", args) `

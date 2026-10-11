# VPython-jupyter
    - Run VPython in browser or notebook, using GlowScript VPython API: http://glowscript.org
    - Source:   https://github.com/vpython/vpython-jupyter

### install
conda install -c vpython vpython


### syntax
    - 'Jupyter VPython' syntax differences to 'Classic VPython':
        - Vectors must be `vector(x,y,z)` or `vec(x,y,z)`...
            - ... NOT as `(x,y,z)`.
        - `display`  changed to `canvas`
        - `gdisplay` changed to `graph`
        - `curve`    object has new methods
        - `points`   object has new methods

### Variable Tip
    - $MY_BOOKS/CS/Physics-Software/Python-Statistical-Mechanics-Swendsen-1e.pdf 
    - However, be careful if you want to change a global variable
      in a program. As soon as you write ‘x=...’, ‘x’ becomes
      a local variable, and VPython forgets the global value.
    - This can be a source of much annoyance. If you want to
      change a global variable inside a function, include
      a statement such as ‘global x’ in the function for each
      global variable.
    - Curiously, if you are using a global array, you can change
      its values in a function without declaring it to be global.
      I am sure that there is a very good reason for this
      discrepancy, but I do not have any idea of what it might
      be.

### Lectures
    - Mechanics Lectures https://matterandinteractions.org/lecture-videos-fall-2019/

### Links
    - Matter & Interactions student files                     https://matterandinteractions.org/student/
    - Matter & Interactions videos                            https://www.youtube.com/channel/UCFyIvuZRY9KFKrUdYWX5kyw/videos
    - Books using VPython                                     https://matterandinteractions.org/computational-physics-books-using-python-vpython/
    - Computational Modelling Wang                            http://bcs.wiley.com/he-bcs/Books?action=index&itemId=1119179181&bcsId=10154
    - Equilibrium Statistical Physics                         http://www-personal.umich.edu/~lsander/ESP/ESP.htm
    - TODO: Get Matter/interactions Glowscript programs:      https://www.glowscript.org/#/user/GlowScriptDemos/folder/Examples/program/MatterAndInteractions
    - watch this: Run vpython in non-notebook environments!!! https://github.com/vpython/vpython-jupyter


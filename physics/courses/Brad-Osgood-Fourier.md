# EE261 - The Fourier Transform and its Applications
    - Course Website https://see.stanford.edu/course/ee261

### lecture 16 


### Headline from last time: 
    - diffraction patterns are determined by the Fourier
      transform of the aperture (or aperture function) that
      cause the diffraction.

### x-rays were discovered
    - what were they? 
    - were they waves? 
    - If waves, they should be `10^-8m`. 
        - But that was too small to measure (with standard
          techniques. e.g. diffraction gratings)

### crystals
    - what are they?! 
    - Somehow the macroscopic structure should be determined
      by the microscopic (atomic) structure.
    - therefore crystals should be made from a regular
      periodic array of the atoms ...
    - it was thought there should be a lattice structure
    - but how to test that experimentally?

### Von Laue 1912
    - study the atomic structure of crystals via diffraction
      experiments with x-rays
    - he added a number of _hypothesis_: 
        - 1st hypothesis: 
            - that x-rays were waves. 
            - and if you assume waves, this implies diffraction.
        - 2nd hypothesis: 
            - crystals have a lattice (periodic) atomic structure
        - 3rd hypothesis: 
            - the spacing of the lattice is comparable to the
              wavelength of the x-rays

### fundamental 1D version
    - think of a 1D crystal as an array of atoms along
      a line. (each atom `p` units apart)
    - ... effectively it's an _infinite_ line/array 
        - (very important for the math)
    - you want to study the electron density distribution
      for the entire array
    - the electron density for the crystal is a periodic
      version of the electron density for the atom (???)

### random
    - a periodisation is the sum of shifted versions of the
      function
    - I can shift a function by convolving with a shifted delta
      function

    ...
    ...
    - deepest fact known about the integers! 
        - (Need Poisson sumation formula)

    _SUM_ (value of a function at a given integer) = _SUM_
    (value of fourier transform at a given integer) 

    `∑_-∞^∞ φ(k) = ∑_-∞^∞ δ φ(k)`

    - you shouldnt expect any special relationship between
      how big `φ` is at 5, and how big the fourier transform
      `δ` is at 5.

    - note: its the _SUM_!!!

    - punchline: the fourier transformation of the `III`
      function (with spacing 1) = `III` (entirely equivalent
      to the poisson summation forumula)

    - if the _spacing_ in the original domain is `p`, then
      the spacing in the fourier transform domain is `1/p`

### back to link with the crystal
    - You see a bunch of spots from your crystalography, that are
      spacing `1/p` apart. 
    - That's the _reciprocal_ of the spacing of the atoms. 
        - Nature is taking a fourier transform for you...

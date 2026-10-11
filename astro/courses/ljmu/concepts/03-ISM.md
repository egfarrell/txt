# The ISM:

    01. Introduction
    02. HII regions
    03. H2 regions
    04. Dust
    05. _Additional_: HI regions
    06. _Additional_: Star Formation

### note: extra draine problems
    http://www.astro.princeton.edu/~draine/book/problems.pdf


### Hii - Ionised Hydrogen
    - Chapters 15 - photo-ionised gas
        - understand key properties of Hii regions
        - (size, timescales, ionisation fractions)

    - Chapters 27 - heating
        - how to derive the temperature of the gas
        - (heating and cooling)

    - Chapters 13/14 - background on the physics of
      ionisation

    - page 137 (chapter 14): important to know:
        - case A/B recombination
       B- on the spot approximation
        - Case B: the gas around high-mass stars when theyre
          forming, theres a lot of gas, so any ionising
          photons dont get very far before they get
          re-absorbed.

### Ionisation Potentials
    - for _H_, going from i --> ii takes 13.6eV (1st
      ionisation potential)

    - for _He_, going from i --> ii takes 24.5eV

    - so if you want to ionise Hydrogen or Helium you need
      photons of those energies

    - ie, if you have a cloud of neutral Hydrogen atoms just
      sitting there minding their own business, something needs
      to give it a kick of 13.6eV, to kick away those electrons
      that were happy orbiting the protons.
        - ie to free up the electrons and make the gas into
          a _plasma_.

    - theres several things that can do this:
        - collisions and energetic shocks (eg supernovae),
        - photons can do this,
        - and high energy particles

    - but for this lecture we're only going to consider
      _photons_

    - so we need very energetic photons that can blast
      electrons away from the core of atoms. The main source
      of these high-energy photons are from very massive
      stars. Its only the most massive stars that have
      enough energy, that they have large numbers of photons
      with enough energy to ionise Hydrogen and so on.

    - photons with energies 13.6eV and higher are called
      _Lyman continuum_ photons

### Hii regions
    - these are parts of the ISM that surround a very high
      mass star. And this high mass star has a prodigious
      _Lyman continuum flux_.

### Photoionised Gas
    - deriving the properties of Hii regions

    - We need to know the _radiative properties_ of high
      mass stars. Very handily Draine has compiled a list of
      this in table 15.1.

    - SpTp = spectral type of the star.
    - luminosity subclass: eg V = Dwarf, III is a giant
    - _Q0_ = rate of Lyman continuum photons
    - _Q1_ = rate of Helium ionising photons

### Size of Hii region
    - say you have some ISM and a high mass star. _How far
      out_ can the star ionise the gas? What sets the size
      of these Hii regions?

    - the first person to attempt this was Stromgren. He
      started simply:
        - defined the ISM as purely Hydrogen
        - assume it has uniform density
        - assume its fully ionised (no neutral gas left)
        - assume we're in a steady state (ionisation
          balance). ie `# ionisations = # recombinations`
        - assume sharp boundary (short distance going from
          ionised to neutral)

    - it turns out these were very good assumptions to make.
      A priori we cant know that, but as we work through the
      physics we'll show that these assumptions are the
      case.

### Draine Equation 15.1
    - this is the key starting off equation
    - ionisation rate = recombination rate
                     `= (volume)*(S radius)...`

    - re-arrange to give a typical size ie the Stromgren
      radius

    - Draine rearranges this equation into units that are
      sensible for Astronomy and a typical inter-stellar
      gas.

    - EM = emission measure. Its something that radio
      astronomers use as an observable to try and understand
      something physical about Hii regions.

### Draine equation 15.5
    - we _assumed_ the Hii boundary was sharp. How do we
      test that?
    - we can calculate the _mean free path_ of an ionising
      photon (ie an electron recombines and emits a photon;
      how far does that photon get before it gets
      reabsorbed.)
    - mean free path is defined as
        - `1 / (density)(cross-section)`
    - the _cross-section_ is an effective _area_ that one
      particle tends to see another in a gas when theyre
      moving past each other.
    - (look at Figure 13.1 to see how the cross-section of
      H varies with photon energies. A Hydrogen atom seems
      bigger to photons with lower energies. The higher
      energy photons interact less with the (ionised)
      Hydrogen. So the cross-section changes with energy.
    - after calculating, we find the mfp is 10^(17)cm, and
      compare that to the Stromgren radius, 10^(19)cm. So
      the mfp is much much smaller than the Stromgren
      radius.
    - this tells us the Hii regions do have a sharp boundary

### what difference does having helium make?
    - `He` abundance is about 10% that of Hydrogen
    - you can look back at the case B recombination rate and
      see its 1.9 times larger than for Hydrogen
    - the rate of He recombinations will be about 18%
      (multiply .096 abundance by the recombination)

    - go back to Draines table, anything with a `Q1 / Q0`
      ratio > 18% will have He ionised all the way out to
      the Stromgren radius.

### Compare the H ionisation radius v He ionisation radius
    - you can infer something about the _spectral type_ from
      this!

### timescales
    - say we start with a gas thats completely atomic (ie
      neutral) and you suddenly switch on a high-mass star
      and ask, how long does it take to ionise that gas?

    - we know that the total number of ions we need to
      create (volume of Stromgren radius by volume density
      by ionisation rate)

    - plugging everything in we say the ionisation time is
      very short, a few thousand years

### test assumption: all of the gas is ionised?
    - key equation: 15.9
    - lets work out how many ionised atoms there are
        - ask ourselves: how do the number of ionising
          photons drop off with radius?
        - start of with `Q0` at `R0` (centre)
        - as you step out in `R`, you have the shell of
          a sphere and within that small `dr`, you ionise so
          many atoms
        - `x = 1`: fully ionised (plasma)
        - `x = 0`: none ionised. atomic
        - rest of the maths is just re-arranging, and you
          find at the end that `x=1`, so the gas is nearly
          fully ionised.

### chapter 27: Heating and Cooling
    - what actually sets the temperature in Hii regions?

### heating
    - dominant mechanism is photo-ionisation
    - a photon is absorbed and emits a photoelectron with KE
    - the kinetic enery is what causes the heating in the
      gas
    - the KE of the emitted photoelectron is: (`hν-hν0`)
      - energy of photon coming in: `hν`
      - energy used in freeing the electron: `hν0 = 13.6eV`
    - key equation: 13.5, the photo-ionisation rate (the
      probability per unit time of photo-ionisation)
    - energy density: `U_ν / hν`
    - cross section: `σ`
    - `Γ` gamma gives the heating rate
    - useful concept: define _color temperature_ of a star
        - take blackbody distribution temperature which is
          uniquely defined by a single temperature
        - color temp is the blackbody with the temperature
          that most closely matches the _SED_ of the star.
        - the great thing about this is blackbodies have
          a well-defined analytical function and you know
          the know the number of photons as a function of
          frequency/energy.
        - we find the mean photoelecttric energy given out
          by a star of color temperature `kTc` is given by
          `kTc`!

### other heating processes
    - _dust_ is very well mixed with gas, throughout the
      whole ISM, and electrons from dust can also be
      liberated by photons, if the photons have an energy
      greater than the ionisation potentional of the dust
      grain
        - so the dust can become an important heat source in
          certain situations. Eg if you have a lot of dust,
          dust turns out to be very good at absorbing these
          high-energy photons, and it can stop the star from
          ionising all the way out to the Stromgren radius.
    - if you have a lot of photons just beneath the Lyman
      continuum, 10-13.6eV, its not enough to ionise H, but
      they can liberate electrons from dust. And if you put
      an electron from the dust into the gas phase, it will
      have some KE and will heat the gas.
        - depends on the charge distribution on the dust!
        - say you kick off some electrons from the dust,
          then the grain becomes more positive and you have
          to supply more energy to kick further electrons
          off it
    - so this is non-trivial to calculate
    - cosmic rays can heat1
    - damping from MHD waves (whats that?)

### Cooling
    - what can cool the gas?
    - well when you recombine an electron with an atom, the
      plasma loses KE and cools
    - so you can have  "_radiative recombination_" that
      removes an electron from the gas and cools it.
    - remember: need recombination coefficients
    - assume the cross-section is some knd of power law with
      exponent `γ`.
    - the real physics to get out of this: the exponent is
      _negative_. this means the more energetic the
      electrons the smaller the cross section. So the cross
      section is bigger for low-energy electrons.

    - you also have _free-free_ emission. You have plasma
      particles that are positive (ions) and negative
      (electrons) and when you have an accelerating charge,
      you produce photons.
        - ie when free electrons are scattering off ions
          they produce photons, with a continuous frequency
          spectrum and these photons can leave the gas and
          take away some of the energy. So by accelerating
          ions and electrons you emit photons which can
          escape, so youre losing energy.

    - _most important method_: collisionlly excited Line
      radiation. We've learnt that in Hii regions most of
      the H will be ionised (by photons) but atoms can also
      be ionised by _collisions_.

        - heavier elements in the gas (plasma) have
          electronic states that can be exicited by
          collisions of a much lower energy (of a few eV).

        - when the electron drops from an excited state to
          a lower state, a photon will be emited (that is if
          the time for it to drop is shorter than something
          else coming along again and collisionaly exciting
          it)

        - the KE of whatever collided has now been lost as
          a photon which leaves the gas and this is a very
          important process

        - you just sum over all the states to find out what
          the total is

### thermal equilbrium
    - key points: abundances are very important for setting
      the temp of your cloud, and densities are important
      for collision rates!

    - when does the total heating = the total cooling
    - Go to figure 27.1
    - as the temp increases, the rate of heating `Γ` drops
    - as the temp increases, the total cooling rate `Λ`
      increases
    - theres a point, where the two lines cross and the
      heating rate = cooling rate
    - and you can use the crossing point to find out the
      temperature of the Hii region: just look down from the
      intersction to the temperature scale on the x-axis.
    - for the Orion cloud abundance, the equilbrium temp is
      around 8000K.

    - can also ask: what term dominates the cooling? well
      for the Orion Nebula, you can see that the collional
      excitation that dominates by several orders of
      magnitude.

    - the total collision rate for Orion is then broken down
      into its constituent elelments, showing the
      _wavelength_ of photons emitted by different line
      exictations

    - so the equilbrium temperature depends strongly on the
      abundance of these molecules.

    - But we can also ask what happens when we change the
      abundance of these molecules. (fig 27.2)

    - eg. you could ask what it was like in the early
      universe when there was much less heavier elements
      (0.1 Orion cloud abundance). It turns ot that
      collision line cooling is much lower, and the heating
      v cooling lines cross at a much higher temperature:
      ~16000K. So when you take away these heavier elements,
      the gas cant cool as well and the equilbrium temp
      rises.

    - conversely, if we raise the abundance of heavy
      elements to 3.0 times Orion abundance, then the
      equilbrium temperature drops down to around 5000K cos
      the gas is much more efficient at heating.

    - no for all the plots so far, we've assumed the
      _density_ is the same. Well it turns out that the
      density of an ionised gas is very important. Why is
      that?

    - if you understand the QM of the molecule, that tells
      you how long it'll sit in an excitated state before it
      radiates away down to a lower state. Thats given by
      the _Einstein coefficient_.(!!!) Now if you increase
      the density rate higher and higher, you get more
      collisions per second, and an ion which is
      collisionaly excited to a higher energy level,
      collides with another particle, its going to lose that
      energy but not via a photon, but just _collisionally
      de-excited_. When that happens, the photon that was
      previously taking the energy out of the cloud, doesnt
      appear and the energy stays in the cloud. So you
      quench that cooling mechanism.

    - another figure shows: cooling rate drops as a you
      increase the density. So the gas gets hotter
      (equilbrium temp higher) as you quench the photons
      that escape.

      take home points: theory and observation shows Hii
      regions should have temp between 6000 and 5000K and
      the exact value will depend on
        - the metallicity,
        - the gas density
        - and the spectrum of radiation from the star.



### Examinable Material for ISM topic
-------------------------------------

    - Chapters and page numbers refer to "Physics of the
      Interstellar and Intergalactic Medium" by Bruce Draine

    - Bracketed items _[...] _denotes background material in
      Draine thats useful for that part of the course.

    - Items in italics is background material from Tielens : "The
      Physics and Chemistry of the Interstellar Medium"


### Lecture 1: Introduction

   - Chapter 1
        - [Chapter 1.3 ! need to know kinetic energy and ideal gas EOS]
   - Chapter 1, Tielens


### Lecture 2: HII regions
   - Chapter 15:
        - omit (15.4), (15.5), (15.6), (15.7), (15.8)
        - _Eq 15.36_ useful for Stromgren radius
        - [Chapter 12 = background interest only]
        - [Appendix D covers ionisation potentials]
        - [Chapter 14.2 = background on recombination]
        - [Will need introduction to stellar types -> covered in stars topic]
        - [Will need to know solid angles]

   - Chapter 27:
        - omit (27.2.2) and (27.2.3)
        - [Chapter 14 = background on recombination]
        - [27.3.1 -> remind what Gamma function is, but wont be tested on that]

   - Chapter 7, Tielens

### Lecture 3: H2 regions
   - Chapter 31:
        - omit (31.4) and above
        - ignore equations 31.12 to 31.15
   - Chapter 32:
        - omit (32.5) to (32.9)
        - [Chapter 35.5 = background on virial equation]
   - Chapter 33
   - Chapter 10, Tielens

### Lecture 4: Dust
   - Chapter 21: 
        - omit 21.6, 21.7, 21.8
   - Chapter 22: 
        - section 1 and 2 
        - [22.3 to 22.5 for background]
        - don’t need to know Eq (22.3) or (23.5)
   - Chapter 23: 
        - omit 23.6, 23.7, 23.8, 23.9, 23.10
   - Chapter 24: 
        - only 24.1 (equilibrium heating)
   - Chapter 5, Tielens

### Additional Material
    The following two lectures cover additional material
    that is not examinable.

### Lecture 5: HI regions
   - Chapter 29
        - [Sections 4.7 & 8 = background on Zeeman and 21cm HI transition]
   - Chapter 30

### Lecture 6: Star Formation
   - Chapter 41: 
        - omit 41.2, 41.7
        - [Chapter 35 = background on fluid dynamics, Poisson’s equation]
   - Chapter 42

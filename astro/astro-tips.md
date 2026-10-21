astro tips


### Jo Bovy Book: Galatic dynamics
    - Good chapter 3:  "Elements of Classical Dynamics". 
    - The acceleration of the Earth laboratory frame is small
      (0.034 m/s^2) compared to the experiments we perform on
      Earth (eg a ball rolling down a hill)
    - https://galaxiesbook.org/

### ADS export 
    - Custom export of citation list https://ui.adsabs.harvard.edu/help/actions/export
    - ### my custom export
    - %Y| %c| %H| %T| %u
    - CSV has extra commas etc:
        - %ZEncoding:csv (%Y), %H, %T, %c, %u. \n  



### Stellar fusion: Hoyles argument (Carbon)
    - $MY_NOTES/physics/People/Lee-Smolin-interview.txt
    - (Lee arguing fallacy of Hoyles anthropic reasoning)
    - Now, the first line which says that carbon is essential for
      life is nowhere used in the logic of the argument. It's
      just there to stand for some religious hope about being
      part of the universe. That's the mistake. 
    - But many people have drawn the conclusion from the success
      of that argument that you can have an anthropic argument
      that makes a prediction. But there was no anthropic
      argument there. There's simply the observation that the
      universe is full of carbon, and that requires explanation.
      I can reproduce that in whatever, however many contexts.


### Heaver mass, faster orbit
    - $MY_NOTES/physics/metaphysics/Smolin-5-probs-Physics.txt
    - (never really 'felt' this)
    - Newton's law of gravity says that the `acceleration` of any
      object as it orbits another is proportional to the `mass`
      of the body it is orbiting. 
    - The heavier the star, the faster the orbital motion of the
      planet. That is, if two stars are each orbited by a planet,
      and the planets are the same distances from their stars,
      the planet orbiting the more massive star will move faster. 
    - Thus if you know the speed of a body in orbit around a star
      and its distance from the star, you can measure the mass of
      that star. 


### filipenko absorption:
    - green photons got absorbed by hydrogen electron, then
      re-emitted later _in a different direction_.
    - So along the _original line of sight_ there is
      a deficit of green photons, or in other words, a green
      absorption line.


### Limb Darkening
    - "limb" in astronomy comes from the Latin word limbus,
      meaning "edge" or "border." 
    - It refers to the apparent edge or boundary of a celestial
      body, such as a star or planet, when viewed from
      a distance. The edge appears dimmer due to a phenomenon
      called "limb darkening," where light from the star's outer
      layers is less intense because we are viewing it at an
      angle, seeing through more of the cooler, less bright
      atmosphere.
    - In essence, the term limb is used metaphorically, similar
      to how it describes the outer boundary of a body part, like
      an arm or leg.

### Observational Astronomy 
    - from Kaggle competition
        - `dN`: typically stands for "detector counts" or
          "digital numbers." (or "data numbers"?)It refers to the
          raw output from the detector before any calibration has
          been applied. 
            - These values are directly related to the amount of
              light detected, but they haven't been converted
              into physical units yet.
        - `mJy`: This stands for "millijanskys," which is a unit
          of flux density commonly used in astronomy. 
            - One Jansky (Jy) is equal to `10^-26` watts per
              square meter per hertz. 
            - The mJy is 1/1000th of a Jansky and is often used
              to express the strength of astronomical sources in
              a calibrated form.
        - `Me/s`: This likely refers to "Mega-electrons per
          second" (Me/s), which is a unit that quantifies the
          number of electrons generated in the detector per
          second due to the incident light. This is a measure of
          the photon flux hitting the detector and can be used as
          an intermediate step in converting raw detector counts
          (dN) into a calibrated flux (like mJy).
    - So, in summary:
        - `dN` refers to raw detector counts.
        - `mJy` is a unit of flux density, indicating
          a calibrated measure of how much light was detected.
        - `Me`/s is a measure of the electron flux generated in
          the detector per second, used in the calibration
          process.

### PSF
    - In `deconvolution`, a Point Spread Function (PSF) is
      a crucial element used to model how an ideal point source
      of light in an image spreads or blurs as it is captured by
      an imaging system. 
    - Here's a vivid example to explain the concept of a PSF in
      deconvolution:
        - Imagine you're taking a photo of a star in the night
          sky using a telescope. 
        - In an ideal scenario, the star would appear as
          a perfect point of light. However, due to various
          factors like atmospheric turbulence and imperfections
          in the telescope, the star's light spreads out
          slightly, creating a small blurred spot on the image
          instead of a sharp point.
    - This spread or blur is precisely what the PSF represents.
      It's a mathematical description of how the ideal point
      source of light gets transformed into the observed blurry
      spot in the image. 
    - In the context of deconvolution, you use this PSF to
      reverse the blurring process.
    - Here's how it works:
    -     You know the PSF for your imaging system, which can be
          determined through calibration or modeling.
    -     When you have a blurred image, you convolve it with the
          inverse of the PSF. This operation is like trying to
          "undo" the blurring effect.
    -     The result of this deconvolution process is an image
          that should be closer to the original, unblurred scene,
          with sharper details.
    - So, in essence, the PSF is like a unique fingerprint for
      your imaging system, and it's used in deconvolution to
      recover sharp details and reduce the effects of blurring
      caused by the imaging system itself.


### Srinivasan: diffuse stars
    - Theme: Diffuse stars in contrast to quantum stars
    - Stars are balls of pefect gas. There is gas floating around
      at the top of a stellar atmosphere and this gas absorbs
      some photons generated in the depths of the star, resulting
      in black lines.


### Copernicus: Moving Earth
    - For a long time I was in great difficulty whether I should
      bring to light my commentaries written to demonstrate the
      Earth’s movement ...
        - Nicholas Copernicus (1543)

### How nuclei heavier than iron?
    - Nuclei heavier than iron (atomic number 26) originated when
      exploding stars shot neutrons into _existing star nuclei_,
      resulting in the formation of elements all the way up to
      uranium (atomic number 92), the heaviest naturally
      occurring element.

### "Spallation"
    - Additional lithium production together with beryllium and
      boron production resulted from “spallation” reactions
      whereby cosmic rays (mostly protons) struck heavier nuclei
      such as carbon and oxygen nuclei with so much energy that
      the nuclei broke apart, generating the light elements.
    - The rarity of these reactions accounts for the relative
      scarcity of these elements in the universe today.

### Supernova intuition
    - Brilliant: Stacked Ball Drop
    - Physics Girl: https://www.youtube.com/watch?v=2UHS883_P60
    - $MY_IMAGES/astro/Supernova-stacked-balls.jpg

### Loeb BH
    - $MY_NOTES/astro/BH/loeb-talk-BH.txt
    - 3 coincidences for `SgrA*`: everything resolvable around
      the 1mm scale (I took a screenshot)


### Brian Schmidt
    - on Brian Keating podcast
    - Supernova type 2 measurements...
    - Still hard - accurate to 10%
    - not enough good _codes_... hard with dust etc


### supernova metaphor
    - If a towerblock collapses, all the dust and debris billow
      outwards. Bit like a supernova explosion from the collapse
      of a neutron star...

### Gravitational waves
    - like squeezing a slinky
    - they are density waves, or pressure waves, in the fabric of
      spacetime

### Thorne–Żytkow object
    - A Thorne–Żytkow object (TŻO or TZO), also known as a hybrid
      star, is a conjectured type of star wherein a red giant or
      red supergiant contains a neutron star at its core, formed
      from the collision of the giant with the neutron star.
    - Such objects were hypothesized by Kip Thorne and Anna
      Żytkow in 1977.
    - Any light emitted from the NS at the core would be quenched
      by the huge surrounding red giant, but the pressure and
      density of the NS in the core could synthesise unusual
      elements inside the Red Giant.
        - Then turbulence drags these elements up from the core
          and they could be detected.
    - In 2014, it was discovered that the star HV 2112 was
      a strong candidate. (This was discovered by the Wondrium
      / Great Courses lecturer)
    - Another possible candidate is the star HV 11417, also
      located in the SMC.

### Radio Frequencies
    - Remember radio frequencies dont have color

### Secular stability
    - no happening on the timescale of the hydrodynamics

### EOS Barotropic:
    - when temperature is negligible
    - all thermodynamic quantities can be put in a 1-to-1
      relationship EOS: p = p(ρ)
    - But for _Nonbarotropic_ EOS: p = p(ρ, s)

### Interesting Review
    - Principles of Astrophysical Fluid Dynamics
    - In Chapter 3 a fairly standard treatment of gravity is
      given, although I appreciated the fact that they spent
      a fair amount of time discussing "_Gauss's Law for
      Gravity_", a nice tool I feel is often overlooked.
    - They also do a fine job of deriving the virial theorem,
      which any astrophysicist can tell you is invaluable to
      know.
        - Perhaps the only drawback is they present the virial
          theorem only as it pertains to gravity (rather than
          a more fundamental _statistical approach_), but this is
          understandable ... for an astronomer/astrophysicist,
          gravity is usually the force of interest when applying
          the virial theorem.

### optical depth
    - has things like 'number density' etc
    - $MY_NOTES/astro/optical-depth.txt



### Astronomy craft / methodology
    - We have two expressions (because we don't know in advance
      if this medium is optically thick or optically thin)
    - But often in astronomy, if we have two limits, we often
      invent a kind of "bridging" formula
    - further discussion: its good to have numerical results but
      analytical results much faster
        - but you usually get analytical results in certain limits
        - then you take one limit, then the other limit and then
          you have a "bridging" formula

### Caustics
    - $MY_IMAGES/astro/caustics.jpg
    - $MY_IMAGES/astro/caustics4.jpg
    - A caustic (or caustic network) is the envelope of light
      rays reflected or refracted by a curved surface or object,
      or the projection of that envelope of rays onto another
      surface
    - The caustic is a curve or surface to which each of the
      light rays is tangent, defining a boundary of an envelope
      of rays as a curve of concentrated light.
    - Concentration of light, especially sunlight, can burn.
      "Caustic" comes from Greek via the Latin "causticus",
      burning.
    - Example: caustics are visible when light shines onto
      a drinking glass. The glass casts a shadow, but also
      produces a curved region of bright light.

    - Computer graphics article:
    - A caustic is any lighting contribution that goes from
        - light source
        - to specular (reflective or refractive),
        - to diffuse surface,
        - to eye (or camera).
        - $MY_IMAGES/astro/caustics2.jpg
    - (specular: having mirror-like properties. From latin
      specere "to look")
    - Remember that even a pane of glass, such as a window, also
      refracts light. Technically, all light coming through
      a window is a caustic.
    - Basically, if light bounces off a surface in specular
      manner and then hits a diffuse surface as it illuminates
      it, it is considered a caustic.
    - Here's another computer graphics article:
        - Definition: relating to light emitted from a point
          source and reflected or refracted from a curved
          surface.
        - $MY_IMAGES/astro/caustics3.jpg

### M87 "shadow"
    - camk accretion lecture: "...this is not quite the correct
      use of shadow, silhouette would be better"
    - I was thinking that!

### Eddington Luminosity formula
    - we express it in units of solar mass
    - $MY_IMAGES/astro/bh-accretion/eddington-luminosity-derivation.jpg

### Thompson Cross-section
    - $MY_IMAGES/astro/thompson-cross-section-formulas.jpg
    - but we need to know the "surface" of the electron
        - ie need to know how "large" the electron is
        - ie need the rate of photon interception
        - ie need the Thomson cross-section `σ_T`
        - note:
            - the Thompson cross-section is purely classical,
            - no Plancks constant. That's kind of amazing.
        - note:
            - this Thompson formula is for _fully ionised_
              material
        - note:
            - the cross-section doesn't depend on the photon
              wavelength
        - The classical electron raduis appears in Thomson
          (elastic!) scattering, in relativistic Klein-Nishina
          formula and also marks the length scale where
          renomralisation (guage theory) becomes important in QED
    - AstroBaki
      https://casper.ssl.berkeley.edu/astrobaki/index.php/Thomson_Scattering
    - AstroBaki https://www.youtube.com/watch?v=B7FgipOtPN4


### Small Angle approximation
    - they can greatly simplify _differential equations_ that do
      not need to be answered with absolute precision.
    - $MY_IMAGES/astro/small-angle-approximation.jpg

### Epicyclic Frequency
    - For a particle in a closed orbit:
        - the frequency of radial motions due to a small
          perturbation in the orbit.
    - Eg: consider a planet orbiting a star in a circular orbit.
      If the motion of this planet is slightly perturbed in the
      radial direction, its orbit will change from circular to
      elliptical.
        - Thus its distance from the star (the center of the
          potential) is no longer constant, but oscillating
          between a maximum and minimum distance (apoapsis and
          periapsis).
        - The epicyclic frequency is the frequency of these
          oscillations.

### Gravitational waves
    - More precise meaning of GW's
    - Kip: you could have two different inertial frames, each
      with a particle at rest in them
    - But when the wave comes along, the inertial frames will
      move back and forth in relation to each other.
    - And that's a more precise meaning of "stretching" and
      "squeezing" of space.

### Measure mass:
    - kip thorne: in Astronomy, we always measure `mass` by it's
      gravitational pull

### Planck luminosity: Most luminous events in the universe
    - https://link.springer.com/article/10.1007/lrr-2015-1
    - The most advanced laser units on the planet can output
      luminosities as high as ∼ `10^18 W`, while at ∼ `10^26W`
      the Tsar Bomba remains the most powerful artificial
      explosion ever.
    - These numbers pale in comparison with strongly dynamical
      astrophysical events: a γ gamma-ray burst, reaches
      luminosities of ∼ `10^45 W`.
    - An order of magnitude estimate shows the total luminosity
      of the universe _in the EM spectrum_ is `10^23W`.
        - (by counting the total number of stars)
    - If all of them have a luminosity equal to our Sun, we get
      a total luminosity of approximately ∼ `10^49 W`.
    - Can one possibly surpass this astronomical number?

    - Are such luminosities ever attained in practice?
    - Is there any process that can reach the Planck luminosity
      and outshine the entire universe?
    - The answer requires once again a peek at gravity in
      strongly dynamical collisions with full control of
      strong-field regions.
    - It turns out that high energy collisions of BHs do come
      close to saturating the bound and in general, colliding BH
      binaries are more luminous than the entire universe in the
      EM spectrum.

### Black holes and Escher
    - https://www.youtube.com/watch?v=zUyH3XhpLTo
    - Theres a bit where he traces the path of photons, going
      around the photon ring, and they end up tracing the "back
      side" of the event horizon...
    - And you end up with multiple images of the back side as you
      to the edge of the shadow...
    - Anyway that reminds me of the Escher drawing, infinite
      copies as you get to the k
    - and from: http://rantonels.github.io/starless/
        - This is very interesting. When you look at a stationary
          sphere in standard flat spacetime, you can see at most
          50% of its surface at any given time (less if you're
          closer, because of perspective).
        - However the event horizon is all visible
          simultaneously, mapped in the black disk: notice in
          particular the North and South poles.
        - However, while the surface of the EH is all there, it
          doesn't cover all of the black disk: if you zoomed in
          on the edge, you'd see that this image of the EH ends
          before the shadow ends.
        - Namely you'll find a ring, very close to the outside
          edge, but not equal, which is an image of the point
          opposite the observer and delimits this "first" image
          of the EH inside.
        - So what's inbetween this ring and the actual edge?
          I haven't yet bothered making a zoom to show this, but
          there's another whole image of the event horizon
          squeezed in there. And then another, and then another,
          ad infinitum.
        - There are _infinite_ concentric images of the whole
          horizon, squeezed on the shadow. (Many thanks to
          /u/xXxDeAThANgEL99xXx for pointing out this)

### Conic Secions for orbits
    - Chandras book on Black holes uses these conic parameters
      alot (e = eccentricity etc)
	- $MY_IMAGES/astro/conic-sections-terminology.jpg

### Curry: Fluid Dynamics / Astrophysics
    - Another area is Plasma physics. A plasma is a gas of
      charged particles. The sun is a big ball of charged gas,
      a mixture of ions along with the electrons that have been
      stripped from them.
    - So this is important for understanding astrophysics and
      could be very important if we ever learn how to perform
      controlled fusion.
    - In a plasma, particles interact via the electric fields
      they all create, and as they move they create magnetic
      fields, another form of interaction,
    - Then because all of these charged particles are being
      accelerated they emit radiation which reduces their energy,
      to be received by another particle, and the result is very
      hard to think about!
    - And in GR, one thinks of everything as an _ideal_ fluid,
      and the stress-energy of that fluid determines the
      spacetime curvature which in turn affects how the fluid
      moves.
    - After this book, the student is equipped to have a lot of
      fun! I think Anderson is a great place to go after this
      book. And Anderson has a good bibliography.

### Ragtime2020
    - Central Asia like Kazakhstan
	- $MY_IMAGES/astro/Uzbekistan-observatory.jpg

### Upper limit speed sound
    - Speed of sound from fundamental physical constants
    - https://arxiv.org/abs/2004.04818
    - To be clear, this isn't an unconditional speed limit. It
      appears to be something like "the maximum speed of sound in
      matter which consists of atoms" (maybe I've missed a few
      conditions).
    - In particular, this speed limit is known to be violated
      inside neutron stars (where the speed of sound is near
      `1/sqrt(3)` times the speed of light, and may even exceed
      that).
    - The paper also mentions a proposed lower bound on
      viscosity. This is the KSS bound
      (https://arxiv.org/abs/hep-th/0405231), and various
      theories violating it have been constructed.
    - The violations, of course, don't get mentioned nearly as
      much as the proposed (and all-but-debunked) bound.

### Distance Ladder LIGO
    - By comparing the theoretical strength of the gravitational
      wave predicted by GR with the actual signal received, the
      LIGO collaboration could directly measure the distance to
      the black holes as 1.4 billion light years – without any
      use of the distance ladder whatsoever!
    - This measurement matched that of Hubble’s law and the rest
      of the distance ladder to within ten percent.
    - (Astronomers are still debating the implications of that
      ten percent deviation.)

### Speckle imaging
    - (take images faster than atmospheric fluctuations)
    - At my grad school Andrea Ghez gave a colloquium about her
      work. The idea behind her technique is that the resolution
      from images in modern telescopes is limited by atmospheric
      distortions. If you remove the distortions, you get much
      sharper images. For her: resolve the stars orbiting Sag A*.
    - Adaptive optics is one way to reduce atmospheric
      distortions. You observe some star (or a spot of light
      created by a laser) and rapidly distort one of the mirrors
      in the optical path to compensate for atmospheric
      fluctuations.
    - Andrea Ghez went further than this. Atmospheric
      fluctuations are fast, but they are not instantaneous.
    - If you can take an observation _faster than the atmosphere
      changes_, you get a much sharper image.
    - Imagine that at any given instant, a star is a very sharp
      point of light (or actually several points of light due to
      refraction), but over time, these points of light move
      around randomly over an area to create a smeared out image.
    - Of course, there a number of huge technical difficulties to
      taking these very rapid images. But if you manage it, you
      can resolve the orbits of stars around the supermassive
      black hole at the center of the Galaxy.
    - This technique is called speckle imaging.
    - I remember her joking that when astronomers write observing
      proposals, they apply for a few nights of telescope time.
      But she was applying for a few seconds of observing time
      over a decade.

### Copernicus Principle
    - Paul Francis: random comment that the Copernicus Principle,
      is just as dogmatic as the old notion the Earth was in
      a special place(!)

### Fleisch Astro mathematics
    - Ratio method used for Astronomy

### Andy Fabian
    - Most gas is INBETWEEN galaxies
    - Mass of BH usually 1000 times less than host galaxy

### Telescoper
    - Chaos and Variance in (Simulations of) Galaxy Formation
      https://telescoper.wordpress.com/2019/09/11/chaos-and-variance-in-simulations-of-galaxy-formation/

### Dark matter nightmare:
    - What if we are using the wrong equations?
    - http://backreaction.blogspot.com/2019/10/dark-matter-nightmare-what-if-we-just.html
    - HN discussion
    - https://news.ycombinator.com/item?id=33939484
    - HN comment:
        - My intuitive objection against dark matter is that it's
          basically an infinite amount of additional parameters
          to be fitted to the observations. Galaxy behaves
          weirdly? Add dark matter! It behaves as expected? It
          obviously has lost its dark matter! It stands to reason
          that for every possible observation, a particular DM
          configuration can be calculated.
        - I fail to see how dark matter could ever be falsified.
          The best potential replacement would be a theory that's
          simpler, but even then dark matter would probably
          explain the same observations.
        - The second question is: Is dark matter even matter if
          it only interacts via gravity? Wouldn't it be better
          named a _property of spacetime_?
            - That is, dark matter is a name for a recursive
              property of gravity?

### Greenstein: size of space
    - The Earth is a speck of dust, barely visible.
    - The sun is 10 feet away, the size of an inch.
    - Alpha Centauri is 400 miles away(!)

### numercial relativity conference
    - GW190412: a signal like none before
    - https://icerm.brown.edu/live-stream/


### Gravitational Wave Data Analysis - Neil Cornish,
    - we don't know our detector noise
    - the residual should follow the noise distribution
    - each data point is independent (stationary white noise)

### aside: crash course astronomy
    - If we know the planets _mass_ from the stars doppler shift
    - we can use the planets _size_ from the transit
    - to calculate its _density_.

### Albedo
    - Albedo is the term for the _reflectivity_ of an object.
    - Its the fraction of light (or radio waves) reflected from
      an object.
    - Perfect mirror:    albedo = 100% reflection.
    - Perfect blackbody: albedo = 0%   reflection.

### Kepler Orbit
	- $MY_IMAGES/astro/kepler-orbit.jpg
    - how to derive the centripital force

### Fluids and stellar plasma
    - Liquids and gases are collectively called fluids. In this
      book we deal with astrophysical fluids like stellar matter.
    - Stellar matter is a gas, often referred to as stellar
      plasma or cosmic plasma.
    - A plasma is a _conducting fluid_, e.g. an ionized gas,
      whose properties are determined by the existence of ions
      and electrons.
    - Often stellar matter is fully ionized, but for low enough
      temperatures these ions and electrons may recombine to form
      neutral atoms and molecules.

### Problem
    - The largest problem in Astronomy is distance measurement

### Narayan CAMK Talk
    - Gamma-ray bursts as the death throes of massive binary
      stars (Narayan, Paczynski, Piran, 1992)
    - Very first paper on astro-ph !

### asteroseismology
    - seismology (from Greek astēr, "star"; seismos,
      "earthquake"); Also known as stellar seismology.
    - Its the science studying the internal structure of
      pulsating stars by the interpretation of their FREQUENCY
      SPECTRA.

    - Different oscillation modes penetrate to different depths
      inside the star. These oscillations give info about the
      (unobservable) interiors of stars similar to how
      seismologists study Earth's interior and other solid
      planets through earthquake oscillations.

    - The pulsation frequencies: give information about the
      DENSITY PROFILE of the region where the waves originate and
      travel.

    - The spectrum: gives information about its chemical
      constituents. Both can be used to give information about
      the internal structure.

    - Asteroseismology effectively turns tiny variations in the
      star's light into sounds.

### Open clusters
    - When a giant molecular cloud (GMC) collapses to trigger an
      episode of star formation, many small parts of it
      separately contract and subsequently form stars.
    - This creates stellar clusters - where all stars are created
      at the same time and from material of a uniform chemical
      composition.
    - Many clusters in the Perseus spiral arm of our Galaxy have
      similar ages, sugggesting that there was a triggering event
      which caused the collapse of many giant molecular clouds
      (Phelps & Janes 1994).

    - Stellar clusters are relatively easy to separate into three
      different morphological groups. Globular clusters generally
      contain between 105 and 107 metal-poor stars, and are very
      old. Open clusters contain between fifty and several
      thousand stars which are weakly gravitationally bound and
      have ages between zero and 10 Gyr. OB associations are
      collections of stars which formed at a similar time and in
      a similar place, but are too distant from each other to be
      gravitationally bound.

    - As the stars in an open cluster are all the same age,
      distance and chemical composition, the study of these
      objects can provide important insights into how stars,
      clusters and galaxies form and evolve. The usual method of
      of studying these objects is to obtain absolute photometry
      of the cluster in several passbands, e.g., UBV . This
      allows each observed star to be plotted on colour-magnitude
      diagrams (CMDs) and colour-colour diagrams. The members of
      the cluster can then be compared to the radiative
      properties of nearby stars in order to determine the age
      and distance of the cluster and the amount of interstellar
      reddening which affects the light we receive.

### peebles future cosmology
    - zero point energy of EM field...
        - its so large that the universe wouldnt even reach the moon.

    - Thats absurd said Pauli...
        - result the zero point energy is zero.

    - Peebles not that convinced about start reasons for zero
      point energy anyway.

    - Why is universe accelerating now?
	    - Matter was closer together earlier in the lifetime of
          the universe, therefore gravity was stronger.
	    - As everything spreads out, effects of gravity become weaker and
	    - Dark Energy starts to take over.

    - Favoured and dis-favoured modes when matter decoupled from
      radiation.
    - (ie when the electrons recombined with nucleons to create
      neutral atoms)



### Astro Units
    - Energy:
        - erg:           1 erg = `10^-7 J`
        - electron volt: 1 eV = `1.6 ∙ 10^(-19) J`
    - Wavelength:
        - Angstrom: 1 A  =  `10^(-10) m`
        - Angstrom: 1 A  =  `0.1 nm`
        - micron:   1 μ  =  `10^(-6) m` typical wavelength of light???
    - flux density:
        - jansky:   1 Jy = `10^(-26) W/m^2/Hz`


### galactic coords.txt
    - `l` - longditude
    - `b` - latitude
    - The galactic coordinates use the _Sun_ as the origin.
    - Galactic longitude (`l`)
        - measured with primary direction from the Sun TO THE
          CENTER of the galaxy in the galactic plane,
    - galactic latitude (`b`)
        - measures the angle of the object ABOVE the galactic
          plane.


### Rieke-measuring-universe
    - Was recommended in the LJMU observation module.
    - I orignally bought the book from German online bookshop
      - https://www.buecher.de
    - $MY_BOOKS/Astro/Rieke-Measuring-the-Universe-2012.pdf
    - $MY_IMAGES/astro/Rieke-Measuring-Universe/C01_GR01.jpg


### GAMMA GRB's
    - transient, one-off events, not repeating phenomena
    - people have looked but they dont repeat,
    - one time, one place on the sky
    - for about 20 years after 1973 we didnt know alot more about
      these events. Reason: gamma ray photons are very hard to
      localise
    - imagine trying to create a mirror that can localise a gamma
      ray photon - ... a pretty difficult task
    - Real dramatic progress in the field came 30 years after the
      original discovery

### cosmic rays
    - not "rays"!
    - we're NOT talking about rays of LIGHT,
    - they're pieces of (electrically charged) MATTER
    - Milikan originally thought they were photons...
    - sub-atomic particles: mostly atomic nuclei (protons) and
      some electrons Hydrogen nuclei, some helium, tiny amount of
      metals and a tiny amount of anti-matter!
    - they're the only examples of matter from outside our solar system

### Astro Data problems
    - traditional were a lot of statistical errors because number
      of data points was small
    - Now with billions of data points, statistical errors are
      small `1 / sqrt(n)` but there are systematic errors
    - If they are obvious systematic errors we call it
      "callibration" but when they are small we have to dig them
      out of the data

### Measuring Redshift
    - To measure a redshift, we need to know what lines to
      expect, and what their laboratory wavelengths are.
    - The following graph shows some typical lines seen in a star
      or galaxy. Not all stars will show all lines, and there are
      other lines that can be strong in certain stars.
    - The C-H line is due to vibrations in the chemical bond
      linking the carbon to hydrogen in molecules.
    - $MY_IMAGES/astro/common-spectro-lines.jpg

### Oort (Srinivasan)
    - Oort said Astronomy is divided into two:
    - Study of Crab Nebula
    - and rest of the universe(!)

### dark energy metaphor
    - A flea jumps worth of energy in a football field size of space


### CDS Multi-Order Coverage "MOC"
    - Welcome back to our series about Python access to CDS.
    - In our first post, we introduced ipyaladin, a way to
      visualise your favorite sources.
    - In this post, we examine the one question every
      observational astronomer asks all the time:
        - WHICH SURVEYS HAVE OBSERVED THIS OBJECT?
    - At CDS, we have developed Multi-Order Coverage (MOC, an
      IVOA standard) maps to help you answer this question.
    - A MOC describes the footprint of a survey or, in more
      technical terms, it is a map (or list) of all those HEALPix
      cells (to a chosen resolution) covered by a survey.

### Hubble Tension
    - Here’s another example from the cosmology talks curated by
      Shaun Hotchkiss.
    - In this one, Adam Riess talks about what he considered to
      be the leading candidate for a systematic error in the
      SHOES measurement of the expansion rate of the Universe.
    - This is “Cepheid crowding”, the possibility that background
      sources change our interpretation of Cepheid brightness,
      ruining one step in the SHOES distance ladder.
    - Riess devised a nice way to test whether the crowding is
      correctly accounted for and find that it is, so crowding
      cannot be the “explanation” of an error in the distance
      ladder measurement of H0.
    - Riess stresses that both early and late universe
      measurements of H0 are now backed up by multiple different
      measurements.
    - Accordingly, if the resolution isn’t _fundamental physics_,
      then no single systematic can entirely solve the tension.


### Asimov spectra
    - ./asimov/sunlight-spectra.txt
    - Because the band of colors was an insubstantial phenomenon
      with no mass, Newton called it a light spectrum (spectrum
      is Latin for 'ghost').
    - In 1857 Robert Bunsen (1811-1899), produced a gas burner so
      well fed with air that it produced a _colorless_ flame.
    - If it was used to heat a certain chemical, the light given
      off would produce a color not confused with any emitted
      from the burner itself.


### James E. Gunn
    - Cosmology may look like a science, but it isn't
      a science...
    - A basic tenet of science is that you can do repeatable
      experiments, and you can't with cosmology.

### ASP
    - The Astronomical Society of the Pacific (ASP) is an
      American scientific and educational organization, founded
      in San Francisco on February 7, 1889. Its name derives from
      its origins on the Pacific Coast, but today it has members
      all over the country and the world. It has the legal status
      of a nonprofit organization.
    - It is the largest general astronomy education society in
      the world, with members from over 40 countries.

### "Beaming"
    - lovely explanation of (relativistic) beaming
	- $MY_IMAGES/astro/beaming.jpg
	- $MY_IMAGES/astro/relativistic-beaming.jpg

### Super Novas
    - 99% of the energy comes out as neutrinos!

### GRB fluence
    - Fluence. The total energy released by a gamma ray burst
      during its active gamma ray phase is the burst fluence.
    - This corresponds to the flux integrated over the duration
      of the burst, and ranges over three (5?) orders of
      magnitude, from 10^8 to 10^3 erg/cm2.

### Doppler Redshift
    - You're getting the DIFFERENCE between the observed
      wavelength and laboratory wavelength...
    - and expressing that difference as a FRACTION of the lab
      wavelength... that gives the redshift
    - $MY_IMAGES/astro/anu01/calc-redshift-from-spectrum.jpg
    - positive redshift `z`, means its moving away...


### Intensity (for resolved sources only)
    - Intensity provides more information about the astronomical
      source than does the flux density.
    - Intensity is the amount of radiation emanating from each
      small piece of the object and provides information on how
      the radiation varies with position on the source.
    - Intensity is directly related to the microscopic processes
      responsible for producing the radiation.
    - The measurement of of a large flux density alone cannot
      tell us whether the source involves very strong emission,
      has a very large surface, or is very close.
    - Clearly, we can only measure the intensity of a source if
      our telescope can RESOLVE the source, meaning we can
      distinguish the emission from different parts of the
      source.
    - For unresolved sources, such as most stars, the radiation
      we receive appears to come from a single point on the sky.
    - For these unresolved sources (or point sources) we can only
      measure the source's FLUX DENSITY.
    - An important fact about intensity is that it is _DISTANCE
      INDEPENDENT_.
    - The flux density of a source depends on the inverse square
      of its distance. And, we saw in Equation 1.6 that the solid
      angle also depends on the inverse square of distance. The
      flux density per solid angle, then, must be independent of
      distance.
    - This means that we can view the distance dependence of flux
      density as coming from the distance dependence of solid
      angle.


### Nice point Luminosity
    - Instead of referring to the total amount of energy a source
      emits over its LIFETIME, we usually refer to the RATE at
      which a source emits energy, called the luminosity (`L`).
    - The luminosity of a source may change with time and what we
      measure is its current value.

### Steradians
    - The solid angle (`Ω`) defines the OPENING ANGLE of a cone.
    - I didnt know if the solid angle was an actual little
      'circle' or something at the 'tip' of the cone
	- $MY_IMAGES/astro/solid-angle.jpg

### Radio Astronomers measure frequencies
    - Radio astronomers always measure frequencies directly,
      while wavelengths are usually measured in the rest of the
      electromagnetic spectrum.
    - Measuring a frequency has two practical advantages:
        - (1) frequency can be measured more accurately than
          wavelength because clocks are more accurate than rulers
          and
        - (2) frequency doesn’t change when radiation passes
          through a refractive medium, but wavelength does.
            - (I was wondering about this the other day!! See
              note in my main Physics tips)

### Astro Convention(s):
    - positive velocity: going away from observer
    - parsec: standard unit of distance (30 trillion Km)
    - parsec: 3.3 light years distance

### SKA found...
    - FRBs: fast radio bursts
    - dont know what they are

### moon
    - 1 square degree

### Doppler
    - Spectral line Emission allows something you can’t measure
      with the continuum:
        - measure velocity via the Doppler effect.
    - He noticed waves from an approaching object would be
      bunched up and therefore the DISTANCE BETWEEN PEAKS would
      be shorter and the frequency higher.
    - Waves from a receding object would be stretched out, making
      them longer and at a lower frequency.
    - If you know precisely what frequency a given radio emission
      should be when at rest (REST FREQUENCY) and if you can very
      precisely measure its observed frequency, you can calculate
      its velocity toward or away from you.

### Wein
    - Good Discussion
        ./courses/stars/03-Measuring-Stars-with-Light.txt:62
    - also ties in with LJMU:
        ./courses/ljmu/obs/obs-lecture-notes.md:236

### Andy ljmu planets
    - 1 month getting data
    - 3-6 months error analysis (!)

### Earth around the sun
    - Earth travels at 30km per sec!

### telescoper: flat priors
    - This paper is in part a response to a paper I blogged about
      here and some other related work with the same general
      thrust.
    - I thought I’d mention the paper here, however, because it
      contains some interesting comments about the appropriate
      choice of PRIORS in the problem of inference in reference
      to cosmological parameters.
    - I feel quite strongly that insufficient thought is given
      generally about how this should be done, often with
      nonsensical consequences.
    - It’s quite frustrating to see researchers embracing the
      conceptual framework of Bayesian inference but then
      choosing an inappropriate prior.
    - The prior is not an optional extra – it’s one of the key
      ingredients. This isn’t a problem limited to the
      inflationary scenarios discussed in the above paper, by the
      way, it arises in a much wider set of cosmological models.
    - The real cosmological flatness problem is that too many
      cosmologists use flat priors everywhere!

### Radiant flux: OU S382
    - (I think I was wondering about this years ago!)
    - In book 1  the flux equation on page 12 is
    - `F = L/4πR^2 `
    - In exams book the flux is
    - `L/4πd^2`
    - Is this an error, or two different kinds of flux?
    - Answer: They're basically the same equation, just that the
      first is for the flux at the _surface_ of the object and
      the second is for flux at _distance d_.

### Open Uni: s282
    1. Sun + Stars
    2. Galaxies + Cosmology
    3. Intro Solar System

### Open Uni: s382
    - Ive 3 pdfs:
    - 1. Intro Astrophysics + Cosomology
    - 2. Stellar Evolution + Nucleosynthesis (Norton)
    - 3. Transiting Exoplanets (Haswell)


### length conversion
    - 1 Angstrom    =  0.0001 Microns
    - 1 Angstrom    =  0.000,000,01 centimeter
    - 1 Nanometer   =  10 Angstroms
    - 1 Micron      =  1,000 Nanometers
    - 1 Micrometer  =  1,000 Nanometers
    - 1 centimeter  =  10,000 Microns
    - 1 centimeter  =  10,000,000 Nanometers (10 million nanometers)

    - MICRON bigger than NANOMETER bigger than ANGSTROM
    - Note: Micron called micrometer now!



### Notation for Degrees of Ionization
    - Suffix  Ionization              Examples        Chemist notation
    - I       Not ionized (neutral)   H I, He I       H, He
    - II      Singly ionized          H II, He II     H+, He+
    - III     Doubly ionized          He III, O III   He++, O++



### balmer_series.txt
    - Level       3→2     4→2     5→2     6→2     7→2     8→2     9→2     infinity→2
    - Name        H-α     H-β     H-γ     H-δ     H-ε     H-ζ     H-η
    - (nm)        656.3   486.1   434.1   410.2   397.0   388.9   383.5   364.6
    - Color       Red     Cyan    Blue    Violet  (UV)    (UV)    (UV)    (UV)


### cosmic homogeneity
    - One issue that emerged from the mix of theoretical and
      observational talks concerned the cosmic homogeneity scale.

    - Our standard cosmological model is based on the
      Cosmological Principle, which asserts the Universe is
      broadly homogeneous (is the same in every place) and
      isotropic (looks the same in all directions).

    - But the question troubling cosmologists for many years is
      what is meant by large scales? How broad does the broad
      brush have to be?

    - Some presentations discussed the worrying evidence for the
      presence of a local void, a large underdensity on scale of
      about 200 MPc which may influence our interpretation of
      cosmological results.

### flux
    - theres a difference viewing the sun from Earth or Jupiter
    - we need something to account for angle of view
    - `cos(theta) dA` ... the `cos` is to project the slab
      of area exactly *perpendicular* to the beam
    - the brightness of the sun is constant, but the solid
      angle gets smaller the further away you get from it

### Great Explanations! AaronParsons (AstroBaki)
    - ./Parsons-Astrobaki.txt
    - Specific Intensity (brightness):
        - the difference between 'specific Intensity' and 'flux'!

### 2014: flux v flux density
	- flux: 		energy (per unit? Area) (per unit Time)  over ALL wavelengths    <--- this isnt really practical
	- flux density: energy (per unit? Area) (per unit Time) (per unit  wavelength)
	- flux density: energy (per unit? Area) (per unit Time) (per unit? frequency)

### 2020: Explanation of why we need flux density
    - In reality, flux is not a measurable quantity, because no
      telescope can measure the rate energy is received over the
      ENTIRE electromagnetic spectrum.
    - Telescopes and detectors are limited in the wavelengths
      they collect; they only detect the radiation over a small
      fraction of the EM spectrum.
    - In fact, since the radio regime covers such a broad range
      of wavelengths, most radio telescopes can only detect at
      a very small fraction of the radio wavelengths at any one
      time. Therefore we need a new measure: flux density
    - Flux density is the flux per unit frequency (`F_ν`)
      interval or per unit wavelength (`F_λ`) interval at
      a particular frequency or wavelength.
    - 2020: From the definitions above in 2014 I never really
      understood the "point" of flux density. Now I do!
    - Unlike flux, flux density is a quantity we can measure
      directly. `F_ν = F / ∆ν` where `∆ν` is the 'bandwidth'.


### counts/gain
    (number of counts) * (gain) = number of photons?

### berlin
    - PIRSA time conference - tim k shape dynamics
    - presentation is exploiting well know astro phenomenan of
      "core-halo" structure

### b-v
    astronomers use filters!

### light
    - refraction _is_ wavelength dependent
    - reflection (mirrors) _isnt_ wavelength dependent

### light measurements
    - magnitudes good for _point_/compact sources
    - surface brightness good for _extended_ sources

### telescope flexure
    - the relative position of the gravity vector relative to the
      different parts of the telescope changes...
    - therefore distance between different parts of the optical
      system change due to the action of gravity as you point in
      different directions

    - its a problem for any instrument attached to a telescope
      (eg cassegrain)

### plate scale
    - is the inverse of focal length `1/f`

### luminosity
    - `L = R^2 T^4 `
    - where `R` is the stars radius

    - but in terms of FLUX (density):
    - `L_ν = 4π  * r^2 * F_ν`
    - but here, `r` is the distance to the star, not the stars
      radius

### analyze universe mooc
    - fitting a line:
    - "meet our requirement that 2/3 of all the data being `+1 σ`
      or `-1 σ` of the mean"
    - is this requirement just because of Gaussian Bell curve?

### eye response
    - analysing the universe mooc
    - check Fechner "just noticable difference in a stimulus"
    - doesnt respond to _differences_ in brightnesses
    - responds to _multiples_ of brightnesses

                Day             Night
                ---------------------
    On Star     10,010 E        11 E
    Off Star    10,000 E        1  E
                ---------------------
    ∆M              10 E        10 E     the same!!!

    - our eye has a tremendous dynamical range
    - we can perceive a difference of about 25 magnitudes of
      objects in the sky!
    - that corresponds to an astonishing 10 billion times
      from the faintest object we can perceive to the
      brightest object we can perceive
    - our best CCDs only have a dynamic range of 10,000!

### detect neutron stars
    - Neutron stars do not produce _light_ in nuclear reactions,
      like ‘normal’ (main sequence) stars do.
    - Instead, isolated neutron stars are visible because charged
      particles, like electrons, produce radiation when they are
      accelerated by the neutron star’s magnetic field.
    - This is known as synchrotron radiation and is often in the
      radio spectrum.
    - This means isolated neutron stars can be observed with
      radio telescopes.

    - Some neutron stars have been found to have magnetic fields
      so high that they cannot be described with classical
      physics and quantum field theories must be used.
    - This is because when _magnetic fields_ get this high they
      _affect the space_ around them causing images to be
      distorted and magnified.
    - These magnetic fields are 10,000 billion times larger than
      the magnetic field of the Earth at the Earth’s surface, and
      cannot be found anywhere else in the universe.

### how many stars/galaxies
    - each galaxy contains about 100 billion stars
    - and theres about 1000 billion galaxies?

### Paul Franics talk
    - universe is/was infinite. Universe was infinite even
      a millisecond after the big bang

    - same amount of mass (matter?) present at Big Bang as
      there is now in the universe (ie the steady state
      theory is wrong). So actually the universe is getting
      less and less dense, and more spread out as time goes
      on

    - at the moment we know no limit as to how close we can
      pack things together. Maybe fundamental constituents
      of matter are point particles

    - CMB is actually from the photons released when matter
      and anti-matter analiated each other. And to this day,
      for every bayron in the universe there are one billion
      `10^(9)` microwave background photons which are left
      over from this annalisation. This tells you that all
      but 1 part in a billion were destroyed very early on.

    - interesting about radiation: you can have 2 gamma rays
      in the same "space" at the same time... bit like
      Feynmann when he said 2 light rays can cross each
      other?

    - funny/weird thing about dark matter: the (repulsive)
      force is stronger the _further_ away each object is
      from each other. (Thats totally opposite to gravity
      for example that gets _weaker_ the further away you
      are). Also dark energy _pushes_ rather than pulls.

    - how to keep out of a black hole: a small "_sideways_"
      velocity keeps you out of a black hole. You go into an
      elliptic orbit around the BH instead. According to
      Francis: its a bit like _rips_ in an ocean current,
      swim side-ways instead of directly against them. So
      related question: how can you get enough stuff to fall
      into a BH (to make them super-massive) if everything
      is moving a bit "sideways"??? We don't know. As far as
      we can tell, BH's should never have gotten as big as
      they have.

    - other mysteries!
        - how exactly to giant stars pulsate: they actually
          puslate much slower than our theoretical models.
        - where are all the dwarf galaxies (which should be
          left over when the Milky Way was created)
        - why didnt planets fall into the sun? the
          protoplanet material should have been slown down
          by the protoplanet gas/dust and fallen into the
          star...
        - how did Sedna get into its orbit?

    - "it worries me a bit": astrophysics is still very
      "common sense" compared to modern physics (quantum
      mechanics)...does this just reflect how poor our data
      are?

### airy functions (diffraction)
    - we write as "Bessel" functions

### Brilliant: ANU MOOC
    - how do you infer the masses of different stars?
    - key words: temperature, surface gravity, models,
    - rotation measure
    - see my file: ./anu-masses-stars.md

### Reciprocity theorem
    - most properties dont change if its working as an
      emitter or as a receiver
    - this is because maxwells equations dont change with
      time reversal
    - so we'll use the emission properties of an antenna to
      make it easier (although we're interested in the
      receiving properties)

### plate scale
    - size of a given arc-second on the focal plane

### IR imaging
    - collimator: make light rays parallel
    - beam splitter: remove optical light

### Array Equation
    - remember: the S/N is the fundamental assessment of the
      quality of any observation or measurement

    `S/N = (# of photons/electrons) / sqrt(σ_*^2 + σ_b^2 + σ_d^2 + σ_r^2) `

    - `σ_*` noise from source itself (poisson)
    - `σ_b` noise from background
    - `σ_d` noise from dark current
    - `σ_r` noise from readout

### CCD noise
    - slow readout: lots of noise is bandwidth dependent. If
      you reduce the bandwidth, you can reduce the noise.

    - And how do you reduce the bandwidth? Increase the
      readout time.

### NIR region:
    - 1 - 6 μm

### all stars ROTATE
    - the sun rotates every 29 days
    - second time I have this note!

### Hubble Expansion
    - the rate of separation is proportional to the
      _separation_ (??) Should that be: "proportional to the
      acceleration???". check this: `ȧ/a`

### Proxy Detection (Kennicutt 1989)
    - almost impossible to detect molecular Hydrogen.
    - So measure use carbon monoxide instead (strong emission in
      the SubMM region) and convert back to molecular Hydrogen.
      (all sorts of complications with this conversion)

### Nuclear fuel proportional to mass (Eggleton)
    - hence star lifetime roughly proportional to `M/L`

### Spherical Abberation
    - waves that are _away_ from the axis receive more
      curvature (or less) than rays closer to the axis

### Bolometric Magnitude
    - The bolometric magnitude of a star is a measure of the
      total radiation of a star emitted across all
      wavelengths of the electromagnetic spectrum.

    - The _absolute bolometric magnitude_ (ABM) is the
      bolometric magnitude the star would have if it was
      placed at a distance of 10 parsecs from Earth.

### OBS ljmu tutorial 1
    - Flux = L / 4πr^2

    - Flux _density_ (assuming you have the
      flux)
      - `F_λ = F / ∆λ`

    - say flux density in the optical
      (between 3600 and 10000A)
      - `F_λ = F / 6400`

### one of the most important astro equations!
    - radiative transfer

### Stefan-Boltzmann Law
    -  _hotter_ stars emit much more energy Per unit surface area
       than _cooler_ stars.
    - `ε = σ T^4`

    - star_1 = 6000k
    - star_2 = 3000k

    - energy ratio  = (star_1 / star_2) ^ 4
                    = (6000   / 3000  ) ^ 4
                    = 2 ^ 4
                    = 16 times more energy emitted

### basic stellar measurements
    - Wien displacement: differentiate Planck (linear ν ∝ T)
    - Stephan Boltzmann: integrate Planck (get bolo flux)
    - Rayleigh-Jeans approx: low temperature:  `hν/kT << 1`
    - Wein Approx:           high temperature: `hν/kT >> 1`
    - effective  temp: Stephan Boltzmann & luminosity relation
    - brightness temp: `I_ν = B_ν (T_b)` & Rayleigh-Jeans approx

### LJMU OBS:
    - astronomers carry in their hearts:
        - DISTANCE is always a problem!

### stellar equations 1
    1. hydrostatic equilibrium               ( `dP/dr = ...`)
    2. mass continuity                       ( `dM/dr = ...`)
    3. energy generation                     ( `dL/dr = ...`)
    4. energy transport ( temp structure)    ( `dT/dr = ...`)
    5. Whether or not the star is convective ( `d ln T / d ln P > ...`)

### stellar equations 2
    - `ρ_0` is by definition the central density of the star
    - at the centre of a star, gravity must be zero! `g = 0`
    - at stellar surface, density (and pressure) go to _zero_

### defocussing telescope (for transits!)
    - ANU video: lovely idea: they had a pixel grid, and the
      star was jumping around from pixel to pixel due to
      atmospheric seeing.

    - So they defocused the telescope and that smoothed out
      the jumping and you had a better average which will
      make transit dips easier to find.

### our eyes are logarithmic
    - astronomers determained that a 1st magnitude star is
      100 times brighter than a 6th magnitude star

    - ie per second, 100 times more photons hit your eye
      from a 1st mag star as from a 6th mag star

    - so a difference of 5 magnitudes (6 - 1 = 5) is equal
      to a factor of 100 in brightness

    - thats because our eye responds on a logarithmic scale

    - for every equal _factor_ in brightness, you get
      a _one-step_ increase or decrease in the observed
      magnitude (the response of the eye to the star)

    - ie a difference of 5 magnitudes equals a brightness
      factor of 100.

    - That means every one mag difference must correspond to
      the 5th root of 100 100^(1/5) in brightness
        ```
        100^(1/5) = 2.512...
        ```

    - for "star(a)" and "star(b)":
        `brightness_{a}  `
        `--------------  = 2.512^(m_b - m_a)`
        `brightness_{b}`

    - If star(b) = mag 4, star(a) = mag 1
        `brightness_{a}  `
        `--------------  = 2.512^(4-1)  =  2.512 * 2.512 * 2.512`
        `brightness_{b}`

        b = apparent brightness
        m = apparent magnitude


### key measurements
    - temperature (Wiens law)
    - and intrinsic luminosity (inferred from apparent
      brightness/distance)
    - allow us to determine almost everything about a stars
      life and death.

### parallax
    - method of _triangulation_ to measure distance.
    - (can measure up to 1500 light years away)

### my ipad notability diagram
    - $MY_IMAGES/astro/link-obs-theoretical.jpg
    - Two characteristics of stars:
        - OBSERVATION               THEORETICAL
        - -----------               -----------
        - brightness     ----->     luminosity (L)
        - color          ----->     Temperature (T)


### Measure a stars motion!
    - when an object moves towards you the emitted waves are
      bunched up (due to the _motion of the emitter_!)

### color
    - color of a star is associated with _energy_

### Gaussian processes
    - @exoplaneteer during #AstroHackWeek Gaussian Process
    - intro: "In astronomy, basically every observation ever has
      correlated noise."

### trivia
    - white dwarfs parallel the main sequence at lower
      luminosity.

### Terrible masters mistake!
    - Just a quick email as, as I believe Ulrich has mentioned to
      you, we had noticed that the `sim_eclipses.py` code was
      picking up some wrong lines, where eclipses did not occur.
      These were lines where the critical angle `((R1 + R2)/a)`
      was greater than the angle of inclination, so
      - `a > (R1 R2)`.

    - This is because you had been searching by just the
      BiSEPS ID, inclination and metallicity: the BiSEPS ID
      remains the same throughout a system's lifetime, while
      the _line number_ changes as it evolves. Searching by
      the line number as well as the BiSEPS ID, inclination
      and metallicity solved the problem: see my code for
      the changes.

### Terrible masters mistake 2!
    - See also:
        - $MY_CODE/old/jobs/ou/MASTERS/pam_probability.txt
        - $MY_CODE/old/jobs/ou/MASTERS/pam_sim_eclipses.py
        - $MY_IMAGES/astro/masters-mistake-sin-i.jpg
    - MY WRONG CODE
        - random_inclinations = `np.random.randint`(low=0, high=90, size=len(binary_table))
    - PAM'S CORRECTED CODE
        - inclination=np.arange(0,90)
        - sini_prob = np.sin((90-inclination)*np.pi/180)-np.sin((90-inclination-1)*np.pi/180)
        - random_inclinations = `np.random.choice`(inclination+1, len(binary_table), p=sini_prob)
    - VIVA FEEDBACK
        - Clarify how randomised inclinations are weighted. Check
          if the software incorporates a `Sin(i)` term to account
          for random inclination directions (rather than values).
          If not, explain how this has affected the solutions
          (page 61/62)
    - RESPONSE:
        - The random inclinations were incorrectly weighted. This
          has been noted in the text:
            - A weakness of the current implementation is that
              the all random inclinations were weighted with
              _equal probability from an assumed flat
              distribution_.
            - This is incorrect as the inclinations should be
              drawn from a sin(i) weighted distribution to
              reflect the _higher probability of observing
              a transit edge-on_. This incorrect weighting has
              resulted in an unrealistic number of shallow
              transits which could generate an unrealistically
              high number of Earth-analog blends.


### Roche Lobe overflow
    - there must be a driving mechanism
    - (was asked this at the viva! I had a notability pdf
      about it!)

### I never full appreciated
    - stars ROTATE
    - and that makes them oblate e.g. altair

### measure
    - measure the temperature from the spectrum.
    - how???
    - (see ANU MOOC?) ./courses/anu-courses.txt

### temperature
    * temperature affects luminosity (energy released per
      second) in the form `E = σT^4`
    * so twice as hot, will produce 16 times the luminosity
    * but surface area also important!

### Apparent mag depends on your wavelength!
    - beteljuice is brighter in _red_ than in _blue_,
    - so has a higher (lower!?) magnitude in blue

### 6th mag versus 1st mag
    - 1st mag: 100 times brighter
    - 1st mag: 100 times as many photons hit eye per second
    - 1st mag star is ~ 2.5 times brigher than 2nd mag star

### Zodiacal light (false dawn)
    - The zodiacal light – or "false dawn" – is an eerie light
      extending up from the eastern horizon, before sunrise, in
      autumn.
    - You might also see it in the west after sunset, in
      springtime, where it’s called the "false dusk".
    - The zodiacal light can be seen for up to an hour after
      dusk. Unlike twilight dusk, though, there’s no rosy color
      to the zodiacal light.
    - The reddish skies at dusk and dawn are caused by Earth’s
      atmosphere, and the zodiacal light originates far outside
      our atmosphere.
    - When you see the zodiacal light, you are looking edgewise
      into the plane of our own solar system. The zodiacal light
      is actually sunlight reflecting off _dust particles_ that
      move in the same plane as Earth and the other planets
      orbiting our sun.

### standard deviation of astro measurements
    - sqrt(n) - poisson? (from coursera)
    - consequence 1:
        - you need 10^2 more measurements
        - to get standard deviation down by factor of 10
    - consequence 2:
        - need 2/3's of all data points within plus or minus
          1 sigma

### log plots
    - put the actual log base underneath the power to get
      a better feel for log-log plots

### bolometric magnitude
    - corresponds to LUMINOSITY, in magnitude units:
    - that is, after taking into account all electromagnetic
      wavelengths, including those unobserved due to
      instrumental pass-band, the Earth's atmospheric
      absorption, or extinction by interstellar dust.
    - For stars, in the absence of extensive observations at
      many wavelengths, it usually must be computed assuming
      an effective temperature.

### luminosity
    `L = 4πd^2` (apparent brightness)

### luminosity
    - total amount of (energy), (per unit TIME)
    - (joules) per (second)
    - watts
    - so luminosity is like power!

### symbols!
	arcminute '
	arcsecond ''

### parsec
	- d = 1/P (angle P in arcseconds)
	- and if P = 1 arcsecond
	- then the distance d is 1 parsec

### one arcsecond
    - arcsecond: angle subtended by a golf ball 10 km away!

### stellar parallax
    - but if the earths orbit is TINY, RELATIVE to the distance
      to the stars, then you _dont measure_ any parallax
    - ...which is exactly what happened

### absorption lines
    - heres the kicker...
    - when the electron drops down an energy level,
    - it usually re-emits the photon _IN A RANDOM DIRECTION_!!!
    - so thats why you get the black lines! (in the original
      direction)

### ratio mass jupiter to sun
	Jupiter, is 0.0009% the mass of the Sun,
	i.e. jupiter ~1000 times less massive than the sun

### Dark Clouds
    - Star formation regions are dark clouds.
    - And they are cold.
    - How do we know dark clouds are cold?
    - Hot clouds emit light:
        - seen as glowing HII regions or emission nebulae
    - Dark clouds dont emit light:
        - because of cosmic DUST which absorbs light
        - Dust only survives in COLD environments
    - `Dark clouds  ->  have dust  ->  dust only in COLD`

### neutron binaries
    - because so compact (10km) can orbit close to each other!
    - only 50km apart with a period of 275 Hz
    - so you'd only see a blurry taurus
    - At 0.25 seconds before merger, the system outshines all the
      stars in the galaxy,
    - but... in gravitational radiation! (...not EM radiation!)

### Hα emission
	- robust indicator of star formation (astrobite article)

### Alex Selzay
	- software is becoming a new kind of instrument

### Books
    - Try to get this: Cecilia Payne-Gaposchkin: An Autobiography and Other Recollections
    - $MY_BOOKS/Astro/Robinson-Starlight.pdf
    - $MY_BOOKS/Astro/Robinson-Spectroscopy.pdf

### links
    - Cosmicus Cosmology / Astronomy                                   https://m.youtube.com/@Cosmicus-w6s/videos
    - How to play with deep space data                                 https://www.youtube.com/watch?v=6wrEZwX_5Ak
    - OU Masters code                                                  https://bitbucket.org/biseps
    - Relative Star Size                                               https://www.youtube.com/watch?v=GoW8Tf7hTGA&t=2s
    - Size of space                                                    https://neal.fun/size-of-space/
    - how astro datapipline is done                                    https://news.ycombinator.com/item?id=22025961
    - Particle Data Group - review HEP Cosmology                       http://pdg.lbl.gov/
    - Andy Lawrence                                                    https://andyxlastro.me/
    - SKA science paper                                                https://arxiv.org/abs/astro-ph/0409274
    - SKA books                                                        https://www.skatelescope.org/books/
    - Skynet Robotic Telescope Network                                 https://skynet.unc.edu/
    - Astrostatistics Portal                                           https://asaip.psu.edu/
    - Paul Francis Simulations                                         http://www.mso.anu.edu.au/pfrancis/simulations/
    - Angela Speck Videos                                              https://www.youtube.com/user/StarDustSeck/videos
    - Teaching Astronomy online                                        https://www.youtube.com/playlist?list=PLFhVT3VzlwKozPrbWlcSLnoO0VJHOvOSt
    - AAS meeting jake new stats package                               https://aas.org/meetings/aas235
    - AAS books (some education)                                       https://iopscience.iop.org/bookListInfo/aas-iop-astronomy
    - AAS Online Resources Google Docs                                 https://docs.google.com/document/d/1UPZVyq2U7GTC5I7R1TI_rsRDwu4FXt9aukGYXIeq60Q/edit?ts=5e6a9f6a
    - AAS Online Resources / Advice                                    https://docs.google.com/document/d/1OsuFfqrlYa9diTJyTTzwADrlk-4Ba7dghuMzw90p-og/edit?fbclid=IwAR0BBNFQijDTTGOP90U_e7h7DiO1Jo_G_7TFFuxjPwpwSzq2dt2A1yDIeBc
    - SARA annual conference                                           https://www.youtube.com/watch?v=_ZDeNzhbC1c
    - Open Astro bookshelf                                             http://open-astrophysics-bookshelf.github.io/
    - Redshifts versus paradigm shifts; against renaming Hubble's Law  https://arxiv.org/abs/1909.07731
    - Good educational explanations eg Specific Intensity              https://www.youtube.com/user/AaronRobertParsons/videos
    - Srinivasan Random walk astrophysics                              https://www.youtube.com/playlist?list=PL04QVxpjcnjidFFZjZ3m0aJ6pnKfBN5sA
    - CRC Press: Series in Astronomy and Astrophysics                  https://www.routledge.com/Series-in-Astronomy-and-Astrophysics/book-series/TFSERASTAST?pd=published,forthcoming&pg=1&pp=48&so=pub&view=list
    - Obsolete trig functions and why we don't use them anymore (2013) https://news.ycombinator.com/item?id=25265943
    - Awesome Space utilities Github                                   https://github.com/orbitalindex/awesome-space
    - HN Loeb Oumuamua                                                 https://news.ycombinator.com/item?id=25956720
    - David Spergel Our simple universe                                https://www.youtube.com/watch?v=e6LRGRBgPlw&feature=youtu.be
    - Telescoper Danish paper                                          https://telescoper.wordpress.com/2017/06/27/the-danish-paper-and-how-science-works/
    - The infinite turn and speculative explanations in cosmology      https://arxiv.org/abs/1604.06773
    - Ligo: Triumph of Experiment or Theory                            https://www.youtube.com/watch?v=JQjzw99b0tE
    - jake vanderplas: intro machine learning for astronomy            $MY_BOOKS/Astro/jake_astro_stats_2.pdf
    - Astrobites                                                       https://astrobites.org/
    - Birr Castle - I-LOFAR offaly ireland                             https://lofar.ie/birr-castle/
    - Light Years Ahead | The 1969 Apollo Guidance Computer            https://www.youtube.com/watch?v=B1J2RMorJXM
    - CCD's: Calibration frames: flats, bias, darks etc                https://practicalastrophotography.com/a-brief-guide-to-calibration-frames/
    - HN: dark energy not there?                                       https://news.ycombinator.com/item?id=43419996

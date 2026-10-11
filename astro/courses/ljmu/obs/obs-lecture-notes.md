equations
    - resolving power
    - grating equation
    - angular resolution of telescope: `θ = 1.22 λ / D`
      (defined from airy diffraction pattern)
    - but with a telescope diamater larger then r0 (ie fried
      parameter), the resolution is:   `θ = 1.22 λ / r0`
    - _Strehl_ ratio: ratio of real PSF to ideal PSF for
      that telescope (ideal: diffraction limited)
    - _Strehl_ ratio: for seeing limited telescope is:
            `S = (r0/D)^2`

misc
    sky spectrum contamination: air glow lines (from Oh molecule)

# Contents:
    - 01: EM radiation
    - 02: Measurement & Errors
    - 03: Fourier transform
    - 04: Optics
    - 05: Optical abberations
    - 06: Telescopes
    - 07: Detectors
    - 08: Detector Noise
    - 09: Photodiodes, NIR
    - 10: CCDs
    - 11: Reading Strategies, Digitisation, Photomultipliers
    - 12: Imaging in optical/NIR, Data reduction
    - 13: Photometry (measure 'amount' of light)
    - 14: Spectroscopy-I (split radiation)
    - 15: Spectroscopy-II
    - 16: Adaptive-optics
    - 17: Interferometry (higher spatial resolution)
    - 18: Radio Astronomy (Sub-mm)

# Lecture 01: EM radiation

    - This course is about the process of obtaining and
      analysing data. _Data_ is the fundamental concept of
      the module. But what is data? Data is a piece of
      information we collect when we go out there and
      observe the objects we want to study.

### EM Radiation topics:
    - Radiometry (how to measure radiation)
    - Blackbody radiation
    - Radiative transfer (how radiation interacts with matter)
    - magnitudes
    - absorption/emission Earths Atmosphere

### reading
    - Rieke: Sections 1.1 - 1.3
    - Gray:  Chapter 5
    - pdf:   brightness versus flux

### Astro information carriers
    - EM spectrum: "light". (Technically "light" refers to
      EM radiation in the optical)
    - neutrinos
    - cosmic rays (protons, α particles, electrons)
    - 'in situ' analysis. in the solar system eg meteorites
    - gravitational waves

    but vast majority of info comes from EM radiation!

### EM measurements
    1. intensity
    2. polarisation
    3. frequency

### EM spectrum
    - visible light: wavelength: 1 millionth of a meter:
      10^-6m
    - different physical _processes_ are observable in
      _different_ wavelengths.
        - thermal
        - synchrotron
        - cyclotron
        - compton
        - bremsstrahlung
    - so in order to fully understand the physics of
      a source you must observe it at a _variety_ of
      wavelengths

### hand units conversion sheet
    Energy:
        - erg:           1 erg = `10^-7 J`
        - electron volt: 1 eV = `1.6 ∙ 10^(-19) J`

    Wavelength:
        - Angstrom: 1 A  =  `10^(-10) m`
        - Angstrom: 1 A  =  `0.1 nm`
        - micron:   1 μ  =  `10^(-6) m`
        - micron:   typical wavelength of light???

    flux density:
        jansky: 1 Jy = `10^(-26) W/m^2/Hz`

### radiometry
    - in most cases, we will treat light as a particle
      (except when we talk about hetrodyne detectors in the
      radio astronomy section)

    - fundamental equation (which decides if a photon is
      ultra-violet or infrared etc):
      - `E = h ν`
        `  = h c/λ`

### solid angle
    - its an _angular AREA_ on the sky
    - units: square degrees
    - units: square radians = steradians
    - if you integrate the solid angle over the entire
      sphere, you get `4π` square radians
    - at a position, (θ, φ) on the sky, the _area_ is;
        - `dΩ`
        - `dA / r^2`
        - `sinθ ∙ dθ ∙ dφ`

### Specific Intensity. (Surface Brightness) (Intensity density)

    - Its the amount of _energy_ contained in the solid
      angle
      - divided by the perpendicular (cosθ) area of the source,
      - divided by solid angle subtended by the source,
      - per unit time
      - and per unit frequency.
        - `I_ν = dEν / (dA cosθ) dΩ dt dν`

    - because per unit frequency, we call it the intensity
      _density_ (so _per unit frequency_ type things, are
      usually called a 'density')

    - if theres no absorption or scattering, then `I_ν` is
      constant along any given ray. Therefore `I_ν` is
      independent of _distance_! Having a quantity that can
      be defined independent of distance is a very good
      thing!

    - if its independent of distance, then what you measure
      at the Detector is the same as what is emitted by the
      source.

    - the _caveat_ is: you can only measure intensity if the
      source can be resolved! Why? Remember that `I_ν` uses
      the solid angle subtended by the source, so if you
      cant measure the solid angle subtended, then `I_ν`
      isnt defined.

    - thats why `I_ν` is often called the "surface
      brightness"

### flux density
    - I see it! You just integrate out the "perpendicular
      surface area, solid angle bit (cosθ dΩ)" from the
      specific intensity `I_ν` and you get the amount of
      flux energy flow per unit area, per unit time, per
      unit frequency.  (or the Luminosity per unit area at
      the detector?)

    - another definition: its the integral of specific
      frequency over the _solid angle subtended by the
      source_.

    - so really the flux density doesnt allow for the
      "viewing angle"

    - this is the most commonly measured quantity because
      _most sources are not resolved_! (I mean most stars
      are not resolved - but galaxies are resolved so you
      can measure surface brightness for galaxies)

    - it is distance dependent `f_ν ∝ r^(-2)`

    - note: it can be measured for resolved and unresolved
      sources

### luminosity
    - the flux leads us to the luminosity. Its when you
      integrate the flux over the complete area and what you
      are left with is the amount of radiation that the
      source emits per unit frequency (or unit wavelength)
      per unit time.

    - luminosity is an intrinsic quantity.
        - However you need to know the distance(???)
        - `L_ν = 4π ∙ r^2 ∙ F_ν`
        - question! but is 'r' the radius of the star, or
          the distance to the star from an observer?

    - bolometric luminosity: integrate over all the
      frequencies (or wavelengths):
      `L = integrate_0^∞  L_ν dν`

### Black body radiation
    - "imagine a source that reflects no light - any
      radiation incident on it gets absorbed, and converted
      into the bodys heat - its _thermalised_"

    - one example of this is a _furnace_. A furnace behaves
      pretty much like a black body. Or a cavity with
      a small hole. So any radiation incident on the hole
      isnt going to be reflected off, therefore any
      radiation emitted by the cavity hole is due solely to
      its temperature. And if its in thermodynamic
      equilibrium, Max Planck had determined the shape of
      the spectrum emitted by this source.

    - by shape of the spectrum, I mean how many photons as
      a function of wavelength is the source radiated.

    - the important point is: if you examine the equation
      for a blackbody spectrum, the only variable that it
      depends upon is the _temperature_.

    - Now a star radiates quite closely to a blackbody. It
      isnt in exact thermal equilibrium, it does have
      a range of temperatures inside it, therefore we can't
      describe it with a _single temperature_.

    - side note: the best black body measured is the Cosmic
      Microwave Background. The spectrum is a black body
      function with a temperature of 2.7K.

### Wiens displacement law
    - some properties of black body radiation can be infered
      by mathematical manipulation of the Planck equation

    - manipulation: differentiate _what??_ (product and
      chain rules) to find peak wavelength

    - the most "popular" frequency a Blackbody emits
      most energy at is _linearly related_ to the
      temperature

        - `hν_(max) = 2.82 kT`]

        > "The higher the temperature, the higher the
        > frequency".

        > "hotter stuff, emits at higher energies"

    - this law provides an easy way of _gaining the temperature_
      of a star. (The temperature of a star is a very important
      quantity to understand what goes on in a star)

### Stefan-Boltzmann Law
    - if you integrate the Planck spectrum (in frequency or
      wavelength) then you get: "the total bolometric flux
      radiated by a black body is ∝ to the constant `σ` by
      the temperature to the 4th power" `F = σ ∙ T_(eff)^4`

    - Its an important relation. If you know the _distance_
      `R` to a star, you can use Stefan-Boltzmann to find
      the luminosity of the star.
        - `L = 4π ∙ R^2 ∙ F`
        - `L = 4π ∙ R^2 ∙ σ ∙ T_(eff)^4`

    - the temperature of a star that obeys the relationship
      above is called the "_effective temperature_"

    - ie the temperature that fits this relation is the
      effective temperature. "But note, there are other ways
      of defining the temperature. As I said a star has
      a range of temperatures."

    - the effective temperature of a star, is the
      temperature the star would have if it radiated as
      a black body

    - note: the Luminosity of a star is an _intrinsic_
      quantity that is difficult to obtain.

### Rayleigh-Jeans approximation (low temperature)
    - make the Planck radiation equation easier to work with

    - works for very low frequencies (long wavelengths)

    - then you have `hν/kT << 1`, and you work that into
      Plancks equation you get a _simpler relationship_
      between the intensity and the temperature. Its
      a linear relation.

    - in this case the spectrum becomes a 2nd degree power
      law

    - its very useful in radio astronomy where youre dealing
      with longer wavelengths (in those cases: `hν/kT << 1`)

### Wien approximation (high temperature)
    - now in the high frequency case, `hν/kT >> 1`

    - useful at optical, UV and X-ray wavelengths

    - rapid decrease of brightness - "Wein Tail"

### Brightness Temperature
    - very often used in Radio Astronomy where the
      Rayleigh-Jeans condition usually applies

    - Start of with: `I_ν = B_ν (T_b)` <---- check this!!!

    - with the Rayleigh-Jeans approximation:
        - `I_ν = 2 ν^2 k T_b / c^2`

    - we get: `T_b = I_ν ∙ c^2 / (2 ν^2 k)`

    - This gives us the brightness temperature: Its the
      temperature a blackbody would have in order to radiate
      at the measured intensity `I_ν` at a given frequency
      `ν`. Its a lower limit to the true thermodynamic
      temperature.

### Radiative Transfer
    - one of the most important equations in astrophysics

    - When light goes through matter, energy may:
        - be added to it by emission processes
        - subtracted from it by absorption processes

    - therefore the specific intensity `I_ν` will not
      (normally) remain constant.

    - _Scattering_ of photons into and out of the beam may
      also occur

    - its important because its an equation that describes
      macroscopically how light interacts with matter

    - as light (EM radiation) propagates through a medium,
      the variation its intensity undergoes (`dI_ν`) depends
      on two quantities:

        1. the amount of radiation that is lost due to
           absorption or scattering (see minus sign!)
           `- α_ν ∙ I_ν ∙ ds`

        2. plus any additional radiation that is emitted by
           the medium `+ j_ν ∙ ds`

        - where `ds` is just the length of space considered
          here

    - The equation looks simple, but the whole complex
      microscopic physics is encapsulated in these two
      coefficients:
        - absorption coefficient: `α_ν`
        - emission coefficient:   `j_ν`

    - this equation is important because everything that
      happens to the photons from the moment they leave the
      object you are studying:
        - goes through the ISM,
        - interacts with dust,
        - eventually hits/interacts Earths atmosphere
        - then hits your telescope mirror,
        - then gets through the camera,
        - through all the optics,
        - finally gets to the detector
        - and generates _photo-electrons_.

    - All that is describable by the radiative transfer
      equation!

### Simple Cases - Radiative Transfer
    - emission only
        - (`I_ν(s_0)` + integral with `j_ν`)
    - absorption only
        - (`I_ν(s_0)` * negative exponential with `α_ν`)

### Magnitudes
    - larger magnitudes are _fainter_!

    - the fact that its logarithmic is helpful, because
      theres a huge range of luminosities (intrinsic and
      observed fluxes), and dealing with it logarithmically
      is convenient

    - manipulating the magnitude definition we can define
      the _absolute magnitude_ of a given object, which is
      the magnitude it has at a distance of _10 parsecs_.
      (Its a convetion).

    - the absolute magnitude allows us to define the
      _distance modulus_ which is a measure of the distance
      of the object. It is the difference between the
      - apparent magnitude (`m`)
      - and the absolute magnitude (`M`).
      - The bigger this number, the farther away it is
      - `m - M = 5 log(d) - 5`
      - ie `m - M` is ∝ to the log of the distance

### The Earths Atmosphere
    - the vast majority of astro observations are collected
      from the ground so we have to be able to account for
      the Earths atmosphere

    - optical window, quite a bit of light reaches the
      ground

    - in the NIR you get some blockages + windows

    - in the far infrared (100 microns) you get nearly all
      blocked

    - radio window as well

    - _Rayleigh scattering_: UV radiation scattered by
      molecules. This is what makes the sky blue. When the
      sun is low in the horizon it looks red. This is
      because it goes through a big chunk of the Atmosphere
      (think about the geometry of the problem) and the
      atmosphere is very efficient at Rayleigh scattering
      the UV (blue radiation) and not as efficient in the
      red.
        - but when you look away from the sun what do you
          see? You see the scattered radiation which is
          blue! So the sky is blue because essentially the
          Rayleigh scattering the blue radiation towards
          you.

    - _summary_:
        - two "broad" windows in the radio, optical
        - Narrow windows in the IR

    - _Filters_: were developed to maximise sensitivity
      in the transparent regions of the atmosphere.

      Especially in the near to mid-IR, the z,g,h,k bands
      really match up with the patches where the
      transimission is 1 (ie good patches).

      Because photons are so precious and hard to obtain, we
      optimise our ability to detect radiation by exploiting
      the windows where the atmosphere is most transparent.

### Atmospheric Emission
    - this is an important background that you have to
      understand in order to be able to deal with it (and
      subtract from the measurements you make of the light
      coming from outer space)

    - the optical is dominated by scattered moon-light. This
      is the main source of _sky background_. So if youre
      observing faint objects in the optical, you really
      want to do it when the moon isnt up. (professional
      observatories take this into account when allocating
      time)

    - for IR this isnt as important, because the moon isnt
      very bright in the infrared. So usually when the moon
      is full, thats when you do IR astronomy.

    - "_the sky itself is brighter in the IR!_". The
      Atmosphere does have emission lines in the IR, called
      "airglow" lines, mostly due to the `OH` molecule, and
      sometimes due to `O_2` as well. So when you're doing
      Spectroscopy in this region, you try to stretch it to
      see in-between these sky line emissions.

    - mid-IR, as well as sky lines, you have the _dome_ and
      _telescope_ itself emitting, and they have to be
      subtracted from the radiation of the celestial body
      youre trying to observe.

    - this makes observing in the IR somewhat tricky

### Backgrounds
    - in nearly all situations you have to deal with
      a background. ie. youre observing an object and youre
      observing a background with it.

    - most of the background comes from the sky (depends on
      which spectral range youre dealing with) but
      a substantial part comes from the instrument itself.

    - both the object and the background signal will have
      a _statistical uncertainty_ associated with its
      measurement.

    - In summary: background can be "instrumental" or
      "external"

# Lecture 02: Measurement & Errors
    - what is measurement? Fundamentally its taking
      a _ratio_ between numbers. It like comparing
      a quantity between two objects. In one object the
      quantity is well known and in the other it isnt.

    - ultimately any measurement is traceable to the value
      of the _standard_

    - _accuracy_: how far is your measurement from the true
      value.

    - But remember! To measure how accurate you are, Your
      "ruler" must be well _calibrated_. And the only way
      you know if your ruler (instrument) is well calibrated
      is if everyone agrees to observe the same standard.

    - so you observe standard stars and you see whats the
      difference between the standard star that you measure
      and the one thats tabulated in the literature.

    - people forget - in astronomy most of the time you're
      working with _calibrated quantities_! (hat tip
      Brahe/Kepler)

    - lecturer comment: very often "calibration" is used in
      misleading ways in the literature. (why? expand?)

    - _precision_: tells you how broad your distribution is

    - _signal to noise_: this is more related to the
      precision of the measurement than the accuracy itself.

    - signal: is the thing you want to measure

    - noise: irregular fluctuations, overlap the signal and
      disturb its measurement

    - ideal process: measure the background, measure the
      signal, subtract one from the other. But in real life
      something is added to both the background and the
      signal: noise!! (fluctuation)

    - so what do you want to get a precise measurement? You
      want to get a high signal to noise ratio. You want the
      amount of noise relative to the size of the signal to
      be very small.

    - photon statistics: one of the most important sources
      of noise in any astrophysical measurement is
      uncertainty in the _photon counts_. There is
      a statistical uncertainty associated with photon
      counts - even if you had a perfect instrument that
      collected all the photons coming from the star/galaxy,
      you'd still have that uncertainity associated with
      your measurement.

    - the way to deal with these photon count uncertainties
      is by resorting to the concept of probability
      distributions.

### probability distributions
    - the probability of a measured variable x having
      a value between `x` and `x+dx` is given by multiplying
      a function `p(x)` by `dx`. And the integral between
      `-∞` and `∞` of the function `p(x) `is normalised to
      1.

    - μ = mean: `int_(-∞)^∞ x ∙ p(x) dx`

    - σ^2 = how wide the distribution is

    - _median_: mid-point value: the value at which the
      probability of getting anything lower than that value
      is the same as getting a number above that value.

    - _mode_: most probable value

### sample vs population
    - you only ever have a finite number of observations

    - so all those integrals in the previous paragraph are
      _sums_ `∑` in real life.

    - your sample is finite and thats the problem. You want
      a sample that is large enough, where `N` the number of
      objects in the sample is large enough, that its
      a representative sample, so that the mean and variance
      from the sample approach the real mean/variance of the
      population that your trying to measure.

### distributions
    - binomial

    - poisson: the limit of the binomial distribution when
      you have a very low probability (`p << 1`) in a very
      large number of observations: `n >> 1`.

    - poisson: the variance becomes the mean. (σ^2 = μ).
      This makes it very handy to estimate the signal to
      noise. Because the standard deviation is simply the
      square root of the mean. `σ^2 = μ`

    - rule of thumb: generally `S/N > 3` is the threshold
      for detection

    - gaussian: handy cos its mathematically easy to treat.
      Note: in the limit when _the number of observations or
      the signal(μ)_ is very high, the poisson distribution
      becomes very similar to the gaussian distribution.

### Confidence Levels
    - question: are _outliers_ special for some special reason
      or are they just due to statistical fluctuations?

    - what is the probability they are due to fluctuations?
      Thats where the concept of confidence interval
      appears.

### uncorrelated noise:
    - just _add_ the variances:
        - `σ^2 = (σ_x)^2 + (σ_y)^2`

    - and for `f=xy` or `f=x/y` then
        - `[σf / f]^2 = [σx / x]^2 + [σy / y]^2`

### expected errors
    - why do we care about the ability to assess the errors
      in the experiment?

    - well a measurement is close to meaningless without an
      estimate of the error bars. (CERN talk about theory
      confirmation good here)

    - because you could spend a whole lot of time making
      a measurement that cannot test a model. ie we often
      have to _fit_ a quantitative model to the data. If you
      have two plot lines from two models, but the error
      bars are huge and both lines go through all the error
      bars, then you cant see which model is better!

    - for example: you have to be able to say if the
      scattering in your data is intrinsic or due to
      measurement errors alone.

    - lecturer remark: _estimating an error bar_ is often
      more difficult than estimating the measurement itself!


# lecture 03: Fourier Transform
    - any given periodic function can be expressed as
      a discrete sum of trig functions - this is the
      _Fourier series_.

    - the more terms you add, the better the series
      represents your original function

    - the Fourier transform is nothing but an extension of
      the concept to a continuous space. You no longer have
      a series of functions with a discrete number of
      periods, but a _continuum of periods_ that you use to
      describe the function.

    - the integral of the transform f(σ) ∙ exp(...) gives
      the original function F(x)

    - the integral of F(x) ∙ exp(...) gives the transform
      f(σ)

    - so with the transform, you're representing a given
      function in a different space, _frequency space_.

    - So if youre given some periodic/non-periodic function
      you can always express that function (or distribution)
      by a _combination of frequencies_. And some of them
      are the dominant frequencies representing that
      function.

    - note: the fourier transform is a _linear operation_.

    - can have a Fourier transform of a function of _2
      variables_ or `n` variables etc.

### why bother with the fourier transform
    - diffraction by EM radiation is well expressed
      mathematically by the F transform

    - thats handy when you have to deal with problems of:
      - _image formation_
      - for understanding _Spectroscopy_.
      - for understanding the _time resolution_ of a signal

### some common Fourier transforms
    - _box function_ - the Fourier Transform of this function
      is called the "sinc" function

    - the width of the "sinc" function is inversely
      proportional to the width of the box function. ie the
      wider the box function, the narrower the sinc
      function.

    - _Gaussian_ function. The Fourier Transform of
      a Gaussian in "x space" is a Gaussian in "frequency
      space" too!

    - Dirac delta function: represents an impulse or taking
      place in a very small space or short length of time.

    - The FT of the Dirac Delta is an exponential (complex)
      number. Remember that a complex number, when expressed
      in polar form, has an amplitude and a phase. The
      amplitude is 1 and the phase is a linear function of
      the frequency.

    - This means all frequencies have equal weight in the FT
      of the Dirac(??). So an infinitesimal width in x is
      converted into an infinite extension in σ. (or
      conversely, in order to generate a function that is
      infintely narrow in space, you need an infinite number
      of frequencies, to reproduce that function)

    - a pair of delta δ functions: gives you a sinusoidal
      function.

    - and what if you combine an infinite number of delta
      functions? This is known as the "_Shah_" function or
      the _comb_ function. And the FT of the Shah function
      is another Shah function, but the separation between
      the "teeth" of the comb is the inverse (`1/∆x`) of the
      separation `∆x` of original Shah function. (This
      relation comes in very handy in Spectroscopy)

    - why talk about the "box" and "shah" functions? Because
      they simulate what happens when you observe a given
      astrophyscial phenomenon.

    - Its impossible to observe something that is
      continuous. Any instrument has a limited sampling
      ability, a finite sampling size, either in time or in
      space. We have this impression of continuity of
      events, but even our own eyes cannot sample anything
      in an infinitely small amount of time. We integrate
      the image we see for a given amount of time. So
      everything is finite, we never sample anything
      continuously.

        - "_Shah_": So actually what you get is many finite
          samples (like the teeth of a comb!) of the real
          thing youre observing. (finite sampling)

        - "_box_": also its impossible to observe something
          for an infinite amount of time, or to have an
          infinitely large spatial representation of
          something. So theres a box function to limit the
          representation of your observation in time or
          space (or any other variable).

        - so your continuous function has to be multiplied
          by the shah function and the box function, to get
          a limited representation of finite samples.

### convolution:
    - the FT of the product of two functions `FT of
      F(x)G(x)` is equal to `f(σ) + g(σ)`

### sampling
    - for a sampling interval of `∆`, the Nyquist frequency
      is `1/2∆`

    - ie Critical sampling is two sample points per cycle,
      or 1 sample point every half period.

    - this is a fundamental concept in _signal
      reconstruction_

# lecture 04 - Optics
    - fermat: ray of light will follow "least time" path
        * two important consequences:
            - Law of _Reflection_
            - Law of _Refraction_

    - _Law of Reflection_: angle of incidence = angle of
      reflection. (intuitive law, if you're looking at
      a mirror you know exactly where to move to see an
      image coming from an object on the other side ??)

    - law of refraction: a ray of light travelling from
      medium to another _changes direction_.
      - `n' sinθ = n sinθ`

    - because of refraction, light coming from a star into
      Earths Atmosphere also changes direction. When you
      look at a star on the sky, the real position of the
      star is slightly different. (light travels from the
      medium of the vacuum, into the medium of the
      atmosphere). You have to account for this refraction
      using Snells Law to find the real position of the
      star.

    - _lens_: "It operates essentially using Snells Law!!!"

    - spherical lens: (from youtube video) this type of
      lens is just like a small section cut out of a full
      glass sphere! (try and picture it)

    - some important terms:

        - _optical axis_: axis of symmetry of the lens

        - _Paraxial Approximation_: (means: "close to the
          optical axis") only paraxial rays incident on
          a spherical mirror which are parallel to the
          principal (optical) axis pass _through the focus_
          after reflection.
            - basically it gaves you the small angle
              approximations eg tanθ = θ etc
            - so if we have an extend object thats being
              imaged, so long as the object is small
              compared to the size of the system, so that
              the rays coming from the object are all
              paraxial rays, then the image of this object
              will be brought to focus along a plane, called
              the _focal plane_.
            - if the object departs very much from the
              paraxial approximation, the focal plane ceases
              to become flat and becomes a surface with
              curvature
            - note: _abberations_ are departures from the
              paraxial approximation.

    - note: anytime you are dealing with a lens, there is
      a dependence of focal length on _wavelength_ (because
      the index of refraction is dependent on wavelength!)

    - then: discussion about _ray tracing_

    - definition: _thin lens_: its thickness is negligible,
      plays no role

    - thin lens formulae

    - Lagrange invariant - check this?

    - _plate scale_: (OU book s382 has great explanation of
      plate scale) usually expressed as _arcseconds per
      millimetre_.
      - `dθ / dy = 1 / f`

      - Very useful to know : eg say you are designing an
        instrument to go on the focal plane of a telescope,
        you have to know what the plate scale is so that you
        know the size of the detector you need to place
        there in order to collect an image. Or you need to
        know the size of a given slit which will be the
        entrance for a given spectrograph.

    - _focal ratio_: ratio between the _focal length_ of
      your system and the _diameter_ of the aperature.
      - `F = f/D`
      - note!!! focal ratio usually expressed as `f/F`
      - the _smaller_ this number, the _faster_ the mirror.
        (ie in order to collect an amount of light per unit
        area on your plane, you need _less exposure_ time
        for an object of fixed brightness)
      - if your priority is to get a good spatial resolution
        and not so much exploring faint objects, you want
        a very _large focal ratio_, because your focal
        length is long, and your ability to separate objects
        on the focal plane becomes improved. (on the other
        hand, you lose light per unit area on the focal
        plane, and its hard to observe faint objects)
        - _fast mirror_: low spatial resolution, lots of light
        - _slow mirror_: good spatial resolution, less light

    - note: a large focal length increases the size of the
      image but decreases _illumination_. Whats
      illumination? Its the energy per second per unit
      angular area of the image. Its ∝ to `1/F^2` where `F`
      is the focal ratio.

      - ie you get fewer photons on the focal plane because
        you are stretching the image so much.

### Diffraction
    - very important concept in astrophysics

    - when light goes through a given aperture, it gets
      diffracted! Best way of explaining this is Huygens
      principle:

      > you treat every point in the aperture as if it was
      > emitting its own spherical waves

    - when these spherical waves propagate towards a medium
      (detector?) they interfere _constructively_ and
      _destructively_ as a function of position on the focal
      plane. This will imprint a difraction pattern on the
      focal plane, of varying intensity as a function of
      position.

    - !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    - single slit diffraction: apply the _Fourier transform_
      to the mathematical function that describes spatially
      the aperture that the light is going through.
        - so in the case of a single slit, the 1D case,
          recall that the slit can be described by the _box
          function_
        - we have learned in lecture 03 that the Fourier
          transform of the _box_ function is the _sinc_
          function, that describes the amplitude of the
          diffraction pattern as a function of the angle.

        - aside: to get the actual diffraction pattern, you
          take the square of the sinc function? Cos the sinc
          function has _little negative bumps_, but when you
          square it they become positive and match the
          diffraction pattern

    - now pass light through a _circular_ aperture?
      (remember telescopes are usually circular!) So we're
      going away from the 1D case. We can describe this
      aperture using the cylinder function.

    - _airy function_ (_3D_): mathematical function that
      describes the diffraction pattern of a circular
      aperature. (main bright circle "peak", and secondary
      circles as you move away from the centre)

    - _airy function_: important to remember the positions
      of the minima: they are functions of the wavelength
      and size of the aperture: (for small `θ`)
      - `θ = 1.22λ / d, 2.233λ / d, 3.238λ / d, ...`
      where 'd' is the diameter of the aperature

    - airy function: allows us to define the _spatial
      resolution_ of a given instrument.

    - Rayleigh criterion: for the resolution of a mirror
      (lens):
        - `θ = 1.22 λ / d`
        - where `θ` is in radians
        - so if two sources are separated by this angular
          distance, then they can be resolved

    - diffraction limit: the airy diffraction pattern
      defines the difraction limit of your instrument. In
      practice its very hard to reach the diffraction limit
      in a real situation because:
        - the atmosphere (_seeing_) distorts the light wave
          front from stars
        - mirror surface imperfections

    - `d` for diameter: remember that a larger 'd' for your
      instrument leads to a smaller airy disk, which leads
      to larger spatial resolution.

      - Conversly, the higher the wavelength `λ`, ie the
        further into the red, for a fixed diameter, the
        worse the resolution is. So its easier to reach the
        diffraction limit at long wavelengths

### point spread function and Strehl Ratio
    - the PSF (instrument profile) is what defines the
      spatial response of a given optical system.
    - If you have an object that is unresolved (eg. a star)
      what is the shape of the image that is formed in the
      focal plane of your instrument? (its not a point
      shaped image, its going to be broad)

    - the PSF of a perfect diffraction limited Telescope is
      the airy function

    - the _strehl ratio_ `S`, is the ratio between the
      amplitude of the real PSF over that of a perfect
      diffraction limited case for the same system.

    - `0 ≤ S ≤ 1`. Where perfect, `S=1`. Without adaptive
      optics, a telescope typically achieves S = 0.05

### encircled energy
    - another way of defining how sharp your images are is
      the concept of _encircled energy_

    - "what is the _radius_ in which, 50% or 80% of the
      energy within a given PSF is contained."

    - if your image is very sharp, ie if your Strehl is very
      high, a lot of the energy in your point source image
      is going to be contained in a very small radius.




# lecture 05 - Optical abberations



# Lecture 07: Detectors
    - Reading: Rieke: Chapter 3
               Kitchin: Pages 1-29

### Why do we need detectors?
    - why arent our eyes good enough?

    - _increased sensitivity_: our eyes are only sensitive
      to the _optical_ while detectors can sense EM
      radiation going from radio wavelengths all the way to
      high energy x-ray photons.

    - _time integration_: also our eyes integrate the signal
      only for a very short time, whereas detectors can
      integrate for a very long time which increases
      sensitivity to faint objects.

    - _linear response_: our eyes have a logarithmic
      response whereas detectors have a linear response to
      incoming power. This makes the conversion between
      signal and flux very straightforward and more
      accurate.

    - also the detector leaves a permanent _record_.

### basic properties of (electronic) detectors
    1. spectral response
    2. quantum efficiency
    3. linearity, saturation and dynamic range
    4. time and frequency response
    5. noise

### spectral response
    - first we'll examine _photon absorption_. In general,
      radiation detection involves the absorption of
      a photon by an electron, which transfers energy to the
      electron which is freed from its (initially) bound
      state. The freed electron moves across the detector,
      creating an electric current.

    - valence and conduction _bands_. You have more energy
      levels at long separation between 2 atoms, than you do
      when they are moved closer (there is an interaction
      between the two atoms)

![energy splitting]($MY_IMAGES/astro/energy-levels.jpg)

    - energy levels between valence band and conduction band
      is called the "band gap".

    - _doping_ changes the "width" or "height" of the band
      gap. It can leave you needing less energy to promote
      an electron into the conduction band. Thus you can
      detect longer wavelength photons, that previously
      _wouldnt_ have excited an electron into the conduction
      band!! (do the impurities introduced by doping "live"
      in the forbidden band gap???)

    - absorption coefficient: what is the "ability" of the
      solid to absorb energy (photons) as a function of
      wavelength.

    - plot of where different materials go "blind" (have
      a cutoff) to different photon energies. ie the
      detector has a band gap that prevents it seeing
      photons of low energies (for example)

    - but what does _doping_ do to these sharp cutoffs?
      Allows the detector see photons at longer wavelengths
      (ie alters the cutoff)

### Quantum Efficiency
    - the ratio between the number of detected photons over
      the number of incident photons. Eg if a detector
      records 90 out of every 100 photons received, the
      ratio or quantum efficiency is 0.9 or 90%.

    - factors affecting QE:
        - surface loses due to reflection. (use an
          anti-reflective coating!)
        - loses due to non-sensitive regions eg. Surface
          electrodes. Solution: make electrodes smaller,
          thinner and with a low absorption coefficient.
          Also back illumination.
        - penetration loses through the device

    - discussion QE: reflection losses. Picture of reading
      glasses with/without reflective coating. You can see
      the difference. Ideally you'd like the lenses to
      absorb all the light.

    - formula for loss with light travelling from refractive
      index `n_0` to `n_s` is:
      ```
      R = [ (n_0 - n_s) / (n_0 + n_s) ]^2
      ```
    - note: for reading glasses we have two transitions:
      into the glass lens, and then out the other side.
      1. air --> glass,
      2. then glass --> air.

    - anti-reflective coatings have a refractive index
      inbetween the two materials (eg. air and glass)
      Optimum value is:
      ```
      n = sqrt(n_0 * n_s)
      ```
    - note: Optimum 'n' is affected by wavelength so you
      have to "tune"

### linearity, saturation, dynamic range

    - linearity: the degree to which the output signal is
      _proportional_ to incoming photons

    - the more linear the detector the easier it is to
      process and analyse the signal

    - ie if the detector is linear across a wide range of
      signals, it means converting the signal into incoming
      flux is made very easy by just applying a constant
      number to it.

    - the old photographic plates were heavily non-linear
      and made the _conversion_ between signal and flux very
      difficult and uncertain.

    - saturation: as you _expose_ the detector with a constant
      source for a length of time, the signal grows linearly
      with time, until eventually it ceases to grow linearly
      and thats when the detector reaches the "saturation"
      point.

    - saturation is when no matter how long you _expose_ the
      detector it ceases to record any additional photons.
      The detector is overloaded, like a full bucket of
      water!

    - theres an area between linearity and saturation where
      the signal is still being recorded but with more
      uncertainty.

    - dynamic range: the ratio between the highest and
      lowest detectable signal. You want this range to be as
      large as possible, because then you can expose very
      bright and very faint sources at the same time without
      comprimising the signal.

    - the eye has an amazing dynamic range! This is mainly
      because it has a logarithmic response which allows it
      to record very bright sources at the same time as
      faint sources.

### Time response

    - very important if youre interested in recording
      time-series of data

    - time response definition: how long the detector takes
      to return to its initial state after the detection of
      a signal

    - detectors are electrical devices (with Resistance R,
      capacitance C) and have a finite response time to
      a given impulse:
      ```
      τ = RC  (characteristic time)
      ```

    - the higher the capacitance of the detector the longer
      it takes to release its charges and return to its
      original state. Also the higher the resistance the
      longer the time...

    - theres a formula for voltage response (exponential decay with
      characteristic time `τ` )

    - frequency response: take the fourier transform of the
      voltage response function (formula)
      We are measuring the frequency dependence of the
      amplitude. ie the amplitude of the signal as
      a function of frequency.

    - cutoff frequency:
    ```
    f_c = 1 / (2π τ_{RC})
    ```

    - detectors with a given response time can only record
      frequencies that are lower than a given value. Suppose
      it takes me 5 seconds to return to an original state
      after I record a signal. If I'm sent a signal every 10
      seconds, I'll be able to record every pulse I receive
      (0.1 Hz). But if I receive a pulse every 2 seconds
      (0.5 Hz) I'm in trouble! This freqnency is too high.

    - lecturer comment: its a beautiful piece of physics and
      shows why the fourier transform comes in so handy!

### bandwidth
    - the range of frequencies in which the detector
      operates. For a detector with exponential response
      time `τ` its:
      ` ∆f = 1 / (4*τ)`

    - also bandwidth relating to the amount of time you take
      to integrate the signal ie the integration time
      ```
      ∆f = 1 / (4 * ∆t_{int})
      ```

# Lecture 08 - Detector noise

    1. _intrinsic_ (detector) noise
    2. _signal_ noise (eg. poisson noise)
    3. _external_ noise (neither source nor detector eg.
       cosmic rays)
    4. _processing_ noise (due to electronics converting
       detector signal to usable data)


### basic concepts on how a detector operates

    ![Detector Schematic]($MY_IMAGES/astro/detector.jpg)

    - Electric field is: `E = V / l`

    - Conductivity: `σ = 1 / ρ` (this is just the inverse of
      the resistivity)

    - Conductivity is an intrinsic property of a material
      (independent of size)

    - the _resistance_ of the conductor depends both on the
      resistivity of the material and the geometry of the
      conductor. `R_d = (ρ ∙ l) / (w ∙ d)` The resistance is
      - larger, the _longer_ the conductor is (intuitive)
      - and it is smaller the _wider_ the area of the
        conductor (also intuitive)

    - so the conductivity can be expressed as a ratio of the
      length of the conductor over the resistance by the
      area:
      `σ = l / (R_d ∙ w ∙ d)`

    - electric current density ... drift velocity (average
      velocity in the x direction `v_x`) ... apply ohms law
      to previous equations ... assume `q = -e` ... end up
      with:
      - `σ_n = e  ∙ n_0 μ_n`
      - where `μ_n (= - <v_x> / E_x)` is the electron
        mobility which is the drift velocity over the
        electric field. So for a given electric field, the
        higher the mobility the faster the electrons will
        move. (Also the higher the mobility, the larger the
        conductivity)

    - number of charge carriers per unit volume:

    - ....

    - finally get an equation for the resistance, which is
      the ratio between the square of the length of the
      detector, divided by photon rate, quantum efficiency
      etc...

    - then applying Ohms law you finally get an equation for
      the current
      - `I_p = V/l^2 ∙ e ∙ η  ∙ τ (μ_n + μ_p) φ `
      - ` η ` = quantum efficiency
      - thus for a constant voltage across, the current will
        be proportional to the photon rate, which explains
        why the detector is _linear_!!
        - `τ` = integration time

### Responsivity
    - This is the ratio between the electric output signal
      and the input photon power. It is a measurement of
      detector efficiency.
      - `S = I / P` (units Amps / Watt)
      - For fixed input photon power, the larger `S` is,
        the larger the electric current is.
      - so you want Responsivity to be a large number

### Photoconductive gain
    - the photon power is given by: `P = φ ∙ hυ`
    - `φ` = photon rate
    - `hυ` = energy of the photon
    - this leads to photoconductive gain:
    - `G = τ μ E_x / l  `
    - and we get the responsivity as `S = e ∙ η  ∙ G / hυ`
    - its the _probability_ that a given free carrier will
      transit the detector and reach the electrode and be
      converted into a signal

### photocurrent
    expressed as: `I = φ e `


### Detector noise
    - Sources of detector noise:
    -   G-R noise (Generation-Recombination)
    -   thermal noise
    -   flicker noise
    -   shot noise
    -   read noise

### G-R noise
    - the number of photons (`N`) incident on a detector fluctuate
      according to poisson statistics, and the fluctuation
      is given by the sqrt of the number of photons: `N^(1/2)`
    - and the charge carriers generated by photon incidence
      also fluctuates as Poisson noise
      so because of two random events with each photon
      detection, the associated noise is `(2N)^(1/2)`
    - ... noise current ...
    - ... with manipulation we can express this noise as the
      product of photoconductive gain and the mean detector
      current...
    - more manipulations and a formula:
    - `<I^2_{generation-recombination} = 4 e^2 φ η G^2 df  `
    - where `df` is the bandwidth (see above)

    - important: there is no dependence of the noise on
      frequency itself , which means its _white noise_.
      - (or G-R noise is roughly _flat_ with frequency)
      - (or equal power at all frequencies)
      - (or negligible dependence of noise on frequency)

    - important: remember its proportional to the bandwidth.
      Now the wider the bandwidth, the detector is sensitive
      to signal over a wide range of frequencies, and noise
      has a high range of frequencies. (therefore youll have
      an increased G-R noise)

    - low resistance: in some detectors recombination
      happens at low resistance (or in doped areas of the
      detector) so only generation noise is present. This is
      often called "_shot noise_" (so the factor of 2 in the
      '2N' disappears)

### Thermal noise (Johnson-Nyquist)
    - in any system with electrical Resistance
    - its there regardless if the detector is being exposed
      or not
    - basically its because the detector has a finite
      temperature and the charges have thermal motions, and
      that generates current and is detected.
    - also white noise
    - he derived an eqn, for current noise as a function of
      the temperature, the resistance, and the bandwidth.
    - note: the bandwidth for a system with an _exponential_
      response is: `df = 1 / 4 τ`
    - so the Johnson noise depends on temperature, bandwidth
      and resistance. So to minimise it you want the
      temperature to be lower (and this is why detectors
      operate at very low temperatures, CCDs -> -70C, and
      near-infra are very close to 0K)
    - just like G-R noise, the wider the bandwidth, the
      larger the noise. So in all these cases, if you can
      filter the frequency, to remove frequencies where you
      know theres no relevant signal there, its better cos
      then you remove noise that way.
    - Also the higher the resistance, you supress current,
    - thermal noise more at larger frequencies (why?)

### flicker noise (1/f noise)
    - most electronic devices show increased noise at low
      frequencies
    - not very well understood
    - see image for region of validity for different types
      of noise
      ![noise regions]($MY_IMAGES/astro/noise-regions.jpg)
    - thermal and shot noise more at larger frequencies

### noise spectra

    - Noise in an electrical circuit may have
      a _characteristic_ frequency (or range of frequencies)

    - Therefore the noise in an electrical signal will
      depend on the frequency (`f`) and bandwidth (`∆f`) of
      the upstream electronics

    - The dependence on `∆f`, which is present for Johnson,
      G-R, and 1/f noise, is due to the relation:
      - `∆f ∝ (∆t) - 1`

    - If the signal is due to a series of independent
      Poisson-distributed events, integration for a longer
      ∆t (shorter ∆f) naturally leads to reduced noise.

    - Because noise has a spectrum of frequencies, it is
      advantageous to filter out frequencies that don’t
      carry the signal.


### combining noise
    - all these types of noise are _independent_ of each
      other
    - so we can work out the total noise by _adding_ them in
      _quadrature_


### noise equivalent power (NEP)
    - this is the signal power that gives a S/N (signal to
      noise ratio) of unity in a system that has an
      electronic bandpass of 1Hz
    - gives you a measurement of how sensitive a detector is
    - the more sensitive the detector, the smaller the NEP
    - the higher the sensitivity of your system, the lower
      the NEP


### limiting cases
    - _photon flux limited_: noise is dominated by photons,
      the G-R noise is the dominant, with thermal etc
      sources being irrelevant
        - (NEP will be expressed in terms of photon flux and
          quantum efficiency. The larger the quantum
          efficiency the lower the NEP.)

    - _Johnson noise limited_ case: you are dominated by
      thermal noise. You can improve this by:
      - improving η, G or R
      - or by reducing T

# Lecture 09 - Photodiodes, NIR

3 types of dectectors (and examples of each):
    - direct photon detection
    - thermal detectors
    - coherent receivers

discussion about atmospheric windows in the NIR

materials adopted in the detectors are important - different
semiconductors have different energy band gaps (which
defines the wavelengths in which the detectors are sensitive)

how do photodiodes work?
- consist of a junction of 2 oppositely doped zones, one
  positively doped, the other negatively (p-n junction)
- its the detector of choice for the NIR region: 1 - 6 μm
- a contact potential is created in the middle of the p-n
  junction
- the contact potential depends on the _Fermi energies Ef_.
  _Note_: In an energy diagram, Ef is always between the
  valence energy and the conduction energy. ie its always
  between the band-gap.
- discussion about fermi-dirac statistics
- explanation of the fermi formula f(E): at _low_
  temperature kT, theres a probabiliy of 1 that all
  electrons are _below_ the fermi energy. (and no electrons
  have an energy above the fermi energy)
- as the temperature increases, the sharpness of the cutoff
  is blurred (ie the higher the temperature, the probability
  you have electrons above the fermi energy becomes higher
  and higher)
- one consequence: you want to keep your detector
  temperature low!
- the fermi energy is an intrinsic property of a given
  semi-conductor (material)
- the doping of a semiconductor changes the _fermi energy
  Ef_. When the two doped zones are apart, they each have
  their own separate fermi energy, but when they're brought
  into contact and the system reachers equilibrium, then
  a voltage is established (in the depletion region) that
  makes _Ef_ uniform


- a _photogenerated_ electron diffuses through one side of
  the juntion, and is then driven across the depletion
  region by the contact potential.

  - diffusion is characterised by a diffusion coefficient:
    `D = μkT/q`
  - μ = electron mobility
  - the higher the the temperature or electron mobility, the
    more efficient the diffusion process is

- the distance that the free electrons travel is given by:
  `L = (Dτ)^1/2`

- now a discussion about _thickness_: you want one side of the
  junction to be thick, so that the photon will be absorbed,
  but you dont want it too thick (ie > L) or else the photon
  will be recombined before it reaches the depletion region,
  and no signal will be detected...

- apparently all this about thickness excludes extrinsic
  absorption. An extrinsic photoconductor is one which is
  heavily doped. But its very hard to dope a conductor with
  very high density of doping amps (?) so you need a thick
  photodiode

- Extra note: A photoelectric device can be either intrinsic
  or extrinsic. An intrinsic semiconductor has its own
  charge carriers and is not an efficient semiconductor, for
  example, silicon. In intrinsic devices the only available
  electrons are in the valence band, and hence the photon
  must have enough energy to excite the electron across the
  entire bandgap. Extrinsic devices have impurities, also
  called dopants, added whose ground state energy is closer
  to the conduction band; since the electrons do not have as
  far to jump, lower energy photons (that is, longer
  wavelengths and lower frequencies) are sufficient to
  trigger the device. If a sample of silicon has some of its
  atoms replaced by phosphorus atoms (impurities), there
  will be extra electrons available for conduction. This is
  an example of an extrinsic semiconductor.


- but for intrinsic photoconductors (ie without doping), the
  bandgap tends to be higher, and thats what sets the cutoff
  wavelength to be no longer than 15μm and for most
  materials smaller than 6μm


- a photodiode is like a capacitor!

- so far we talked about a single photodiode detector. But
  we want to image large chunks of the sky, so we need an
  _array_ of detectors.

- the conceptually simpliest way is to build a large supply
  of detectors each with its own amplifier, and wire them
  together, but this is a hard technology to implement

- hybrid layer: top layer is doped to act as a photovoltaic
  detector. The bottom layer (amplifier) is an array of
  MOSFET amplifiers. Both layers are connected with an
  _indium bump_. ie the bumps are a conductor between the
  detector and the amplifier.

- indium is used because it remains soft at low
  temperatures. (the gaps between the indium bumps is filled
  with a epoxy resin which provides mechanical stability)

  - note: when you press the two layers together they may
    crack, so the manufacturing process is susceptible to
    failure. (so you have to try many times before it works,
    hence expensive!)


### lecture 10 - CCD's

    CCDs used for:
        - optical
        - very near IR
        - also x-rays

- a ccd is an array of intrinsic photoconductors and
  integrating capacitors.

- note: intrinsic = very little doping, or not doping at all

- picture elements = pixels

- readout is sequential: you have one amplifier for the all
  the pixels

- the amplifier is down in one of the corners. you have
  a serial shift register to move the charge in each pixel
  down vertically and then across horizontally. (the serial
  register doesnt have the channel stops in each column,
  otherwise it wouldnt be able to move the charge
  horizontally)

- check this: "three phase" CCD

- you can have the amplifier making 16 million measurements

- ADC (Analog Digital Converter): amplifies and transforms
  the signal electrons to _voltage_

- CCDs read this way are called line transfer CCD's

- a 2048 x 2048 pixel CCD can take 4 seconds to readout the
  whole chip

- _frame transfer_ CCD's: different to line by line readout:
  you transfer the whole image area to a storage area en
  masse (the storage area is masked off to stop light
  reaching it). While the charge is being read in the
  storage area, you can start exposing the image area
  again...

- charge transfer efficiency: some electrons arent
  transfered properly during the readout phase and get
  trapped (maybe because of impurities in the silicon). So
  faint images can have _tails_ in the vertical direction...

- modern CCD's have a transfer efficiency such that after
  2000 transfers, only 0.1% of the charge is lost

- buried channel CCD: much less charge trapping (charge
  transfered in deeper layer)

- ccd's: low sensitivity in blue wavelengths, and conversely
  longer wavelengths can go straight through the crystal. So
  hard to detect a wide range of wavelenghts

- solution: _thinned back-illuminated_ CCD's. Note: so far
  weve seen the CCD is hit from the front electrode side.
  (ie the CCD is front illuminated, but the electrode needs
  to be transparent or you'll lose photons). But now try and
  illuminate it from the back silicon side (but the back
  silicon must be thinned - something to do wtih the photon
  travel length)

- then he showed typical _response curves_ for different
  CCD's. For Back illuminated CCD's theres a huge increase
  in sensitivity for the blue part of the spectrum...

- deep depletion CCD's: two problems with back illuminated:
    - theres a tendency for sensitivity in the red not to be
      improved so much, because the photons in the red have
      a longer absorption length.
  - Also thinned CCD's are more affected by fringing
    (interference). Fringing is where light is internally
    reflected by different parts of the silicon crystal

- anyway, deep depletion ones have a thicker silicon
  crystal, so the depletion region is bigger and the red
  photons are detected easier... And you achieve quantum
  efficiencies of 80% (most modern instruments use this
  method, handy when you have galaxies at high redshfit
  whose light is shifted to red wavelengths)

### sources of noise:

  - _dark current_: an electron is excited due to thermal
    motions. most dark current created in the interface
    between Si and siO2 because the interface states have
    energies between the valence and conduction bands.
    solution: CCD's are operated at temperatures of 140k to
    reduce the dark current to 1 electron per hour.

    how to see how much dark current have we? Dont expose
    the CCD for a length of time comparable to your intended
    exposure time, and then readout to see how much dark
    current has been generated in that time (by thermal
    motions)

### linearity and saturation
    - number of electrons that can be stored per pixel is:
      `N = total charge / electron charge = CV / e` where
      C = capacitance

    - a CCD pixel of 25μm can hold 500,000 electrons. But if
      you get up to 80% of that, then the response becomes
      non-linear. And if it exceeds 80% the charge can
      spread _vertically_ into surrounding pixels (the
      channel stops halt horizontal bleeding)

    - this charge overflow is called blooming or streaking

    note: the readout pixels are larger, so less affected by
    saturation

### other radiation hitting the silicon
    - cosmic rays, x-rays and particle radiation
    - solution: more than one exposure! Because alot of this
      events are one-off

### interference fringes
    - (classic thin film interference - newtons rings)
    - strong emission lines can cause this. You have large
      number of photons with the same wavelength and this
      radiation interferes and produces interference
      patterns.

    - sky background emission can cause it

    - solution: subtract blank exposure of the sky


### ccds and mosaics
    - old photo plates allowed one to expose very large
      areas of the sky in one shot
    - and ccds are much smaller


### CCD readout noise
    - introduced by the amplifier during the readout process
    - it gives a _floor_ or minimum noise for any
      observation
    - sources of readout noise:
        - thermal noise in the amplifier
        - transfer loss fluctions: inefficiencies when some
          charge is left behind
        - reset noise: recharing the output storage
          capacitor (removed by correlated double sampling)
        - surface state noise

    - mitigate readout noise:
        - _on chip binning_ (combine charge from a number of
          pixels). The readout noise is still the same but
          much smaller compared to the binned charge. ie it
          increases the signal to noise
          - however you lose the original info from the
            separate pixels before binning - ie you lose
            resolution

        - slow readout: lots of noise is bandwidth
          dependent. If you reduce the bandwidth, you can
          reduce the noise. And how do you reduce the
          bandwidth? Increase the readout time.

### other noise sources:
    - _fixed pattern noise_: no two pixels have the exact same
    sensitivity. (because of thickness differences, area of
    electrodes, doping) Solution: _flat fielding_

    - bias noise: _bias_ its a potential introduced to the
      CCD at the bias level to avoid negative voltages being
      generated. (when you digitise the info later, you
      cannot digitise negative voltage, so all voltage must
      be positive). But there is a noise associated with the
      bias voltage, which introduces a minimum noise

    - _cross talk_: in a mosaic: if a CCD has two amplifiers,
    there can be some residutal signal left from one
    amplifier that affects the other

    - _charge persistence_: after a readout of a very bright
      source, some charges are trapped, and you get a trace
      of the former image in any new readout

    - _cosmetic defects_: dead pixels, dead columns, hot
      pixels

### how noise varies as a function of signal
    - for low signal, the (read) noise is constant (slope 0)
    - for stronger signal the shot noise and photon noise
      becomes more important (slope: log 1/2)
    - finally fixed pattern noise: slope = 1, noise
      propositional to the signal itself


### Lecture 11: Pixel Reading, Digitisation, Photomultipliers

    - two types of readout:
        - _destructive_ readout: (CCD's) integration is
          stopped so that the contents can be read
            - this method has simpler electronics
            - but some charges can be trapped
            - typical readout time: 10 micro-seconds per
              pixel (but several million pixels per
              detector)
            - often use multiple amplifiers to speed things
              up

        - _non-destructive_ readout (NIR) readout doesnt
          intefere with integration
            - eg hyprid arrays with the iridium bumps. You
              just read the voltage, you're not collecting
              the electrons (you just measure the voltage
              thats varied when a photoelectron is
              generated)
            - so you dont intefere with the exposure

### destructive: single sampling (jaw tooth plot)
    - destructive readout
    - you reset the pixel (bring it to a standard voltage)
    - you expose, as you expose you increase the voltage,
      then you perform and readout and reset again
    - at the moment of reset, a KTC offset error occurs
    - _side note_: if you are bounded by background noise,
      the readout noise is of no importance

### DESTRUCTIVE: double correlated sampling
    - perform one read at the end of an exposure, reset and
      then perform another read again
    - the charge accumulated is the difference between the
      two reads
    - this method subtracts out the KTC offset and any
      voltage drifts
    - but the readout noise is increased by a factor of
      `sqrt(2)`, because theres two reads for each single
      measurement

### NON-DESTRUCTIVE: reset-read-read
    - perform both reads after the reset (at the bottom and
      top of the jaw tooth )
    - but! you must store the info from the first read while
      you do the exposure

### NON-DESTRUCTIVE: fowler sampling
    - perform a number of reads immediately after a reset
      (bottom of the hill) and a number of reads at the end
      of the exposure
    - the signal is then the (mean value read at the end)
      minus the (mean value at the beginning of the
      exposure).
    - requires large storage space for multiple reads, and
      also longer exposure time

### NON-DESTRUCTIVE: up the ramp sampling
    - perform "m" reads as you proceed wtih the exposure
    - you can then measure a flux rate through a linear fit
      through your repeated reads (measurements)
    - read noise reduced by a factor of `1/sqrt(m)`
    - interesting though: this method helps with saturation.
      As you saturate, you can use the reads that went
      before you encountered non-linearity
    - helps with cosmic ray hits too. Use part of your reads
      that was unaffected by the ray to extrapolate the
      exposure


### Digitisation
    - the info we collect is in the form of a voltage
    - but what we need are numbers we can use for our
      analysis. The info is analogue but we need it as
      digital.
    - analog: signal varies continuously
    - digital: integer numbers
    - solution: ADC: analog to digital converter. They
      assign a number of reference voltages to a given
      number. ie you convert a voltage within a given
      interval (the plot shows a step function) into
      a number.
    - so there will be some uncertainty/noise/error because
      we're using _intervals_
    - the signal resolution is ultimately dictated by the
      number of reference voltages you adopt (the full scale
      range of your ADC)
    - check this: least signficant bit (LSB)
    - resolution: 1 volt  ∙ 1 LSB.
    - in astronomy, typical ADC is 16 bit
    - we refer to the resulting digitisation as counts, data
      numbers (DN's) or analog-to-digital numbers (ADU's)


### Gain
    - this is different from photoconductive gain discussed
      earlier

    - its the relationship between (# of electrons) and (#
      of ADU's): `# electrons  ∙ (gain constant)  = output
      signal ADU's`

    - but what astronomers call "gain" is really the
      _inverse gain_. They define gain as `e/ADU`

    - lets say the gain is `10e/ADU` then

    Pixel stores            computer stores (divide by 10)
    ------------------------------------------------------
    1000   electrons          100 ADU
    1500   electrons          150 ADU
    16,783 electrons          1,678 ADU (cos integer) <--- source of noise

    so you want to reduce your gain to a low number to
    minimise this source of noise (where the last digit is
    chopped off)

### Photomultiplier
    - now lets talk about other ranges apart from optical
      and infra red
    - Photomultipliers were actually the first electronic
      detectors to be used in Astronomy
    - they have a low quantum efficiency (compared to CCDs
      which have 0.9) but they also have low readout noise
      (there gain = 1 which is an advantage)
    - you have a tube with a window, and incoming photons
      hit a photocathode the photoelectric effect strips an
      electron from the photocathode and this travels to the
      next diode
    - then theres an _avalanche effect_ as more electrons
      are stripped from each further diode, which amplifies
      the signal
    - one disadvantage: cant be easily built into an array.
      This is the main reason it was superseded by CCD's

### image intensifiers
    - mainly superseded by CCDs but still used in the
      ultraviolet
    - an incoming photon hits a cathode, an electron is
      released and crosses a voltage and hits an anode (made
      from Phosphor)
    - Phosphor undergoes luminescence and releases energy in
      the form of radiation
    - it becomes interesting when you extend the concept to
      micro channel plates. Instead of using a Phosphor
      plate, the electron is directed through a tube with
      walls of lead oxide. This works like a diode in
      a photomultiplier. Each wall hit creates additional
      (avalanche) of electrons.
    - the advantage of micro-channels is you can pack them
      and they can be used as arrays of detectors. It makes
      them attractive because theyre very sensitive in the
      UV part of the spectrum (they beat CCDs in the UV
    - large quantum efficiencies)
    - example: GALEX

### array equation
    - very important, allows you to calculate the signal to
      noise ratio
    - remember: the S/N is the fundamental assessment of the
      quality of any observation or measurement

    `S/N = (# of photons/electrons) / sqrt(σ_*^2 + σ_b^2 + σ_d^2 + σ_r^2) `

    - `σ_*` noise from source itself (poisson)
    - `σ_b` noise from background
    - `σ_d` noise from dark current
    - `σ_r` noise from readout

    but we can assume Poisson noise for:
    - source itself
    - background
    - dark current

    `S/N = (# of photons/electrons) / sqrt(N_* + N_b + N_d + σ_r^2) `

    - note: readout noise is not Poisson

    - Then he re-writes the Array equation in terms of
      quantities you usually have access to when you're
      trying to assess the S/N (eg in terms of electrons per
      second, exposure time, # of pixels etc)

    - All observatories use this equation when they provide
      an exposure time calculator. You can use this eqn to
      see if your planned observation of a certain object at
      a certain magnitude will deliver the S/N that you
      need.

### Lecture 12: Imaging in optical/NIR, Data reduction

    - what is an imager? Its a detector along with
      preceding optics, that captures the 2D pattern of
      light in the telescope focal plane

    why?
        - huge advantage over single channel detector (whats
          single channel -> one object at a time?)
        - record morphology
        - beauty!

    Optical Imager:
        - number of _lenses_ to correct for aberrations
        - special lens to correct for differential
          atmospheric refraction:  Atmospheric Dispersion
          Corrector
        - Dewar coolant keeps low temperature to handle
          thermal noise

    - discussion about _Atmospheric Dispersion Corrector_
      because of snells law, different refraction for
      different wavelengths, you get a small rainbow in the
      focal plane

    - very important for _broadband images_ (why?)

    - Atmospheric Disperision is also important for slit or
      fibre spectroscopy. The slit or fibre has a small
      collecting area, and if not aligned correctly you'll
      exclude the red or blue part of the object and this
      will deteriorate the quality of your photmetric
      accuracty

    for _IR_ imaging:
        - requires more care because more aggressive cooling
          needed
        - note: the setup doesnt have a shutter: because
          that would radiate contaminating thermal energy!

### image formation
    - how does a given image get formed and is sampled by
      the detector

    - diagram: 1st stage: what is actually projected onto
      the focal plane: only affected by the psf of the
      telescope

    - diagram: 2nd stage: convolves telescope image with PSF
      of the detector itself (the detector has a finite
      pixel size)

    - diagram: 3rd stage: coarser representation: convolved
      image is sampled onto the detector pixels

    - small pixels: small field of view, but psf well
      sampled (oversampled)
    - large pixels: large field of view, PSF is undersampled
      (information is lost)

    - so theres a tradeoff: need the nyquist limit


# Lecture 15: Spectroscopy-II


### Three limitations for long slit spectroscopy:
    - efficiency: only one object at a time

    - theres a trade-off between resolution and wavelength
      coverage, which is set by the fact your detector has
      a _limited size_. If you increase the resolution too
      much, you stretch the spectrum too much and your
      wavelength coverage is smaller. Conversely if you want
      very wide wavelength coverage you have to do it at
      lower resolution.

    - limited spatial coverage: we can only cover a 1D
      direction down through the object. But if you wanted
      to cover a whole galaxy for example, you'd have to do
      many scans, moving the slit horizontally.

### Equation for Resolving Power: (find it!)
    - to increase the resolving power, for a fixed telescope
      size you can:

        1. increase the groove density (but theres an upper
           limit: 2000 grooves per mm)

        2. narrow the slit (reduces the amount of light
           collected, so not desirable)

        3. go to a higher order (this is the approach
           Echelle Spectrographs take)

### Echelle Spectrograph:
        - addresses the problem of resolution by going to
          a higher order

        - but two problems:
          - grating shadowing
          - order overlap

### Grating Shadowing
    - first recall the grating eqn which relates the order
      of the wavelength and the incident and outgoing angle.
    - To go to very high orders, you need a very high
      incidence angle
    - but if the angle of incidence is very high (steep),
      then each groove has a shadow area that the radiation
      can't hit (see diagram)
    - actually _2 different geometries _where grating
      shadowing is a problem
    - so shadowing causes 2 problems:

    1. light _loss_: youre not able to use the area of each
       groove

    2. extra _scattered_ light, which produces a glow of
       out-of-focus light thats added to your observation.
       It affects the quality of the spectrum and has to be
       treated not to affect your measurements

    - So the Eschelle spectrograph fixes these problems by
      placing gratings that are _blazed_ at very high
      angles. See diagram: the blaze angle is much higher
      than you seen before

### Order overlap
    - going from the grating equation, each order has
      a little bit of wavelength from the previous order

    - and you normally use an order sorter/blocker to stop
      this overlap

    - but for the Echelle Spectrograph you want to make use
      of the information in all the orders

    - how do you do that? you use a _cross disperser_. Its
      an additional dispersing element, that disperses the
      spectrum in a _perpendicular_ direction to that of the
      1st disperser. Doing that displaces the orders
      spatially from each other, so you can project them all
      onto the detector. Its an efficient use of detector
      real-estate.

    - note: its hard to observe extended objects with this
      method because you have no space. What would be your
      spatial direction in a stand-alone spectrograph is
      actually occupied by a wavelength dimension in this
      setup. So youre limited to single objects.

    - because of space limitations, Eschelle spectroscopy is
      generally limited to the brightest stars

### Multi-Object spectrographs
    - modern multi-object Spectrographs can collect spectra
      on 100 - 1000 stars in a single shot.
    - this is a massive gain in efficiency and has made
      massive spectrographic surveys possible
    - two types:
        - _multi-slit spectrograph_: based on slit masks
          placed on the focal plane of the telescope. Have
          slits etched on them based on the positions of
          objects you want to observe.
          - disadvantage: attached directly to telescope
          - disadvantage: _slit exclusion principle_: you
            cant have two slits with the same x position
            (vertical column)

        - _fibre-fed_ spectrographs: fibre directs light to
          the spectrograph located at a different location.
            - Advantage: spectrograph not attached to the
              telescope, so you can have massive
              spectrographs that are very stable, located on
              the ground. Hence theyre not subject to
              gravity vectors, flexing etc. see the
              telescope design section for more discussion
            - disadvantge: the fibres incur some light-loss
              even though they have good transmission
            - note: theres a fibre collision radius. If you
              want to observe a _dense field_, you'll have
              to do several observing runs to get all the
              objects

### integral field spectroscopy
    - different technologies to achieve integral field
    - one technology: have a bundle of fibres, that places
      a bunch of fibres very close to each other (fibre
      collision radius doesnt happen) and then take
      a spectrum of each position on the object all at the
      same time
    - this allows you to explore the spatial variations of
      an object (eg Galaxy) in a very efficient way
    - number of galaxy surveys based on this: eg CALIFA,
      SAMI, MaNGA

### spectral reduction
    - you have your spectrum, but how do you obtain the
      information you need from it?
    - well just like image reduction you first need these
      three steps because you're observing using a CCD:
        - Bias/overscan correction
        - Dark correction
        - Flat field correction (slightly different to
          imaging flat field)
    - then 4 procedures specific to spectroscopy:
        - sky subtraction
        - spectral extraction
        - wavelength callibration
        - Flux callibration

### spectral flat field
    - get lots of fringing in the red part of the spectrum
      (blue part ok)
    - you have to normalise the spectrum by fitting
      a _polynomial_
      ...
      ... missing
      ...
    - this removes the fringing and other pixel-to-pixel
      variations

### sky subtraction and spectral extraction
    - need to identify the region that contains the sky and
      also the region that contains the object itself
    - may be residual sky emission lines left after sky
      subtraciton! Hard to do sky subtraction to a very high
      accuracy

### wavelength callibration
    - you want: a map of wavelength as a function of pixel
      for all positions in your detector
    - in principle, you dont know the wavelength that
      corresponds to each of these pixels
    - so you have to _expose_ your spectrograph to
      a _source_ that provides you with information that you
      can use to convert pixel position into wavelength
    - a comparison spectrum of well-known emission lines is
      generated from a hollow cathode discharge lamp
    - and you work out the central pixel for each of these
      lines

### observantional spectrum v standard star
    - wow -> your cleaned up spectrum is compared to
      a standard star - and it looks vastly different! Why?
      Well your spectrum is affected by: atmospheric
      extinction, mirror transmission, transmission through
      all the optics in the system - all this _reshapes_ the
      spectrum completely.
    - so how do you correct all that? Well you use your
      library of standard stars and infer the ratio between
      the standard spectrum and your own observed spectrum.
      ie apply the ratios to the science object youre trying
      to observe
    - note: if you care about the actual numbers, then you
      should do a flux calibration on your field very night.
      But sometimes you only care about the shape of your
      spectrum
    - after applying the calibration you have the
      ergs/cm^2/s/Angstrom as a function of wavelength of
      the object at the top of the atmosphere before the
      light from the object ever crosses the Atmosphere.


# lecture 16 - Adaptive Optics (AO)
    - technique to correct the distortions introduced by the
      atmosphere to light coming from celestial objects
    - by doing these corrections you can improve the spatial
      resolution and the sensitivity (ie sharper images for
      the same exposure time and you can detect fainter
      objects)

    - assume an object at infinity: then the plane waves are
      parallel when it hits the top of the earths
      atmosphere. The Atmosphere causes an overall tilt
      (change of inclination) of the incoming wave as well
      as smaller phase shifts. So the incoming wave is
      complete re-shaped.

    - so AO tries to reconstruct the flat wave front that
      reached the top of the atmosphere

    - assume the Earths atmopshere is made up of bubbles of
      air - different sizes and indexes of refraction:
      - _blue_ air bubbles: phase shift is negative (high
        refractive index)
      - _red_ air bubbles: phase shift is positive (lower
        refractive index)

    - the overall degradation because of this effect is
      called the "_seeing_"

    - model: 1960s, Fried model. horizontal diffraction
      cells each cause a tilt in the plane wave. Youre left
      with isoplanatic patches where the wavefront is flat
      approx. ie the radiation is coherent inside one of the
      isoplanatic patches.
    - so each isoplanatic path transmits a good quality but
      tilted image of the source

### fried parameter (fried coherence length)
    - its the physical size of the isoplanatic areas. (ie
      the size of the "tiles")
    - denoted as `r0` but its a _diameter_, not a radius
    - the diameter of the largest telescope that could be
      diffraction limited at a given site is `r0`
    - the larger the turbulence, the worse the seeing, and
      the smaller `r0` is
    - note `r0` is very sensitive to wavelength
    - the longer the wavelength, the larger the fried
      parameter (for a given telescope size, the quality is
      always better in the IR)
    - in the optical, `r0` is typically 10-20cm

### large v small telescopes
    - small aperature telescope: relatively better image
      quality but you see image displacment (image moves
      back and forth eg binoculars)
    - large aperature telescope: more image blur (larger
      wavefront rms error)
    - remove the inclination effect by using a "tip-tilt"
      mirror (has to be done at a high frequency)

### misc
    - isoplanetic angle: angular size of the isoplanatic
      area (r0 divided by height of layer "h")
    - coherence time: timescale for the wavefront to remain
      reasonably stable (divide r0 by characteristic wind
      speed)
    - coherence frequency: is the inverse of the coherence
      time (eg coherence frequency = 40Hz ⇒ wavefront varies
      40 times per second)

### AO system constraints:
    - Fried parameter: size of the wavefront footprint (on
      the mirror) that requires correction
    - isoplanatic angle `θ_0`: defines angular distance on
      the sky where you can consider there to be little
      variation in the wavefront (if you measure the
      wavefront perturbations at a particular point, `θ_0`
      tells you within which area on the sky that
      measurement is valid)
    - coherence frequency: how often you have to perform
      that measurement to deliver a stable (corrected) PSF.
      Usually need to perform corrections at 10 times the
      coherence frequency

### AO system
    - note: _NGS_ = natural guide star (point source)
    - point your telescope at a NGS (assume point source)
    - secondary mirror will be "tip-tilt"
    - beam is reduced in size to handle easier
    - bounced off a deformable mirror
    - then optical part taken out by a beam spliter and
      analysed by a wavefront sensor (the IR part is allowed
      continue to the science instrument)
    - the sensor sends corrections to the deformable mirror
    - note: deformable mirror adopts an _inverse_ (?) shape to
      the incoming wavefront in order to straighten it

        VVVVV      VVVVVV    <----- wavefront
            VVVVVVVV

        -----      ------    <----- deformable mirror
            |------|


### off axis sources
    - remember: your NGS isnt what you want to observe!
    - most times you want to observe an object that isnt
      a point source and has a different optical path to the
      NGS!
    - so... you need to have your object of interest within
      the coherence angle (ie the isoplanatic angle) so that
      the correction you infer from the reference star
      applies to your object as well


### final topics
    - how wavefront sensor works (Shack-Hartmann)
    - laser guide star LGS: Rayleigh scattering (only
      10-20km up so doesnt sample all the atmosphere)
    - laser guide star LGS: Sodium Laser: excites all sodium
      at a layer 90km high and it emits back. Samples most
      layers in the atmosphere but harder to obtain enough
      power: depends on the amount of Na atoms available in
      the Sodium layer
    - note: the lgs laser can get disturbed on the way up,
      but you cant correct for that. The spot you form up in
      the layer

### Lecture 17: Interferometry (higher spatial resolution)
    - read chapter 2.5 kitchen textbook
    - Reminder: Rayleigh criterion: for the resolution of a mirror
      (lens):
        - `θ = 1.22 λ / d`
        - where `θ` is in radians
        - so if two sources are separated by this angular
          distance, then they can be resolved

    - now, the larger the wavelength, the larger the
      telescope must be, due to the Strehl ratio (in order
      to keep the resolution high)

### two aperature Interferometer
    - simplest possible Interferometer
    - place a mask in front of the primary mirror with
      2 small holes (separated by distance `d`)
    - now point this masked telescope at 2 stars (with
      angular separation `α`) which are close together
    - can you use this system to resolve the 2 stars?

    ...
    ...
    ...

    the whole idea here is that the info you obtain from the
    image is the contrast between fringe pattern

    note: the resolution of the combined two aperatures is
    bettern than the whole mirror!

    so how come you get a better resolution using a mask
    with 2 holes compared to using the whole mirror?!

    well remember a mirror is made up of concentric rings,
    and the widest ring has the largest resolution. So when
    you block the light from the inner rings (mask them) in
    the centre of the mirror, what you get is the highest
    possible resolution you can extract from that mirror.
    but when you use the whole mirror, youre combining rings
    of different resolution and the final resolution is not
    dictated by the outer ring, and the whole mirror has
    lower resolution than just a ring around it. (although
    if you just use an outer ring you collect less light and
    you dont want to do that)

    in real life, you often have sources of different
    magnitudes or extended sources so the fringe patterns
    dont cancel out exactly. So what you want to measure is
    the _contrast_ between the peaks of the fringe pattern.

    so define _fringe visibility_ as:
    V = Imax - Imin
        ----------
        Imax + Imin

    another important quantity: _coherence length_. You dont
    observe pure monocrhomatic radiation. The radiation has
    a finite wavelength width.

    you only want to include wavelengths that are
    _contributing_ to your interference pattern
    (constructively) and you dont want other wavelengths
    which wash out the pattern.

    so the coherence length defines the _max path
    difference_ beyond which the fringes are washed out...
    the coherence length is expressed as a ratio:
    `l = c / ∆v = λ^2/∆λ` (where ∆v is the bandwidth)

    Interferometry is much more difficult in the optical
    than in the radio!
    optical: `l = 0.8 μm`!
    radio:   `l = 30m`


    now for optical interferometers you have two telescopes
    and their seperation is much larger than the coherence
    length... so you use _delay lines_ to correct for large
    path differences.

    - VLT and Keck can operate in (optical) interferometric
      mode!

    - side note: correlation interferometer: multiply the
      signals instead of adding...
    - V = signal
    - N = noise
    - some fancy algebra, but you average in time and the VN
      (noise) terms cancel out and youre left with Product
      `P = V_1  ∙ V_2`
    - note: the product produces a larger contrast than just
      addition

### radio interferometers  - single source
    - as the source rises and sets, the fringes interfere
      alternatively constructively and destructively

### radio interferometers  - two sources
    when both objects are in the horizon, both objects will
    have the same path difference

something about aperture synthesis (adding many baselines?)
you reduce the side-lobes and the psf becomes better defined

### very long base-line Interferometry
telescopes in different countries, time the observations
with an atomic clock, bring the singals together in
a computer and do the signal multiplication digitally


### Lecture 18: Radio Astronomy (Sub-mm)
    - look at sections 8.1 - 8.4 from Rieke
    - large atmospheric window in the radio
    - submm: 0.1 to a few mm
    - radio: longer than a few mm (convention)
    - low λ: atmosphere opaque due to O and H20
    - high λ: atmosphere opaque due to ionosphere (actually
      we use that for telecommunications, we bounce stuff
      off the underside of the ionosphere)


      we pick up a lot of stuff in the radio!
      - CMB
      - Pulsars
      - AGN
      - Supernova remnants
      - Neutral hydrogen (21cm?)
      - Molecular clouds
      - Star forming regions

    main difference for radio telescopes: because λ is long,
    the waves dont see small scale irregularities/holes in the
    mirrors, so you can use wire mesh etc

    - the _detection_ of radiation is different though,
      compare dto the optical

    - _photodetectors_ are not efficient at submm and longer
    - so we have 2 different types of detectors:
      - thermal (bolometers): measure radiation _power_,
        have low resolution though
      - coherent detectors  (heterodyne receivers) measure
        field strength (phase) of incoming photons. Because
        youre measuring field strength with time, you get
        high spectral resolution


    - bolometers are more sensitive < 1mm λ (why?) some S/N
      ratio...

### bolometers
    - incoming photons converted to heat
    - the change in temp can be measured by a sensitive
      thermometer
    - really youre measuring the energy of the radiation
      more than anything
    - note: bolometers were traditionally used in IR
      astronomy but at λ < 20 μm have been superseded by
      other arrays

    - discussion about how a bolometer operates

    - the thermometer measure the _change in resitivity_
      which leads to a change in voltage of
      the absorber material (which traps the incoming
      photon)

    - theres a weak link to a heat sink which keeps the
      system at a stable temperature

    - note: the thermometer should be a material that has
      a large change in resistivity for a small change in
      temperature

    - sources of noise in a bolometer:
        - johnson (thermal) noise from random electron
          motions in the thermometer
        - phonon noise: random vibrations in a solid

    - time constant of the system: ratio of capacitance to
      conductance `τ = C / G`
    - if the time constant is long, the time variability of
      the background will dominate over other noise sources
      (ie because the sky varies a lot, the noise will be
      high)
    - if G (thermal conductance) is high, you reduce the
      time constant which is a good thing
    - but! if you increase G, your NEP goes up!

### coherent detectors
    - radio telescopes collect radation in an antenna (or
      aperture)
    - its transfomed into an electric signal by a receiver
      and recorded on computer
    - the receiver does a lot:
      - amplification
      - frequency change
      - integration
      - conversion of signal to digital form

### Reciprocity theorem
    - most properties dont change if its working as an
      emitter or as a receiver
    - this is because maxwells equations dont change with
      time reversal
    - so we'll use the emission properties of an antenna to
      make it easier (although we're interested in the
      receiving properties)

    - half wave dipole
    - larmours formula ; power emitted by an accelerated
      charge
    - got a nice diagram of how the antenna will emit
      radiation, so that actually shows you what directions
      it will absorb radiation most effectively

    - because of the Rayleigh-Jeans approximation, radio
      astronomers often speak in terms of temperature rather
      than intensity

    - _antenna temperature_: temperature of a resistor whose
      thermally generated power equals that produced by the
      antenna

### super hetrodyne receivers
    - work in the microwave region (high frequency)
    - but its difficult to amplify a high freqnency signal
    - so the sky signal is mixed with a lower frequency
      stable _local oscillator_ to produce a lower beat
      frequency
    - why? lower freq is easier to amplify
    didnt understand the second reason

    - discussion about mixing: how to mix 2 freqneuncies
      (beat freq)

    - _intermediate frequency_(IF): difference between source
      freq and oscillator freq. Then you filter other
      frequencies out and amplify the IF

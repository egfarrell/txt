
### Stellar Astrophysics

    01.    Introduction
    02. a  Stellar Structure I
    02. b  Stellar Structure II
    03.    Stellar Interiors
    04.    Stellar Models

    05. a  Stellar Atmospheres I
    05. b  Stellar Atmospheres II
    06. a  Stellar Evolution I
    06. b  Stellar Evolution II



# lecture 02

# mean molecular mass μ
    - why should a star care about this?

    - well the ideal gas equation of state, which relates
      pressure, density and temperature is: 
      - `P = ρkT / μ m_p`

    - also depends on the mean molecular mass (μ). So in
      a gas which has a given pressure and given density, if
      you change the average mass of the particles, this can
      also change the _temperature_ of the gas.

    - now we can think of `1/μ` as the number of particles
      per nucleon.
        - pure atomic hydrogen: 1 particle (the entire
          H atom) per nucleon (1 proton). Therefore `1/μ
          = 1/1 = 1`
        - pure ionised hydrogen: this time, 2 particles per
          nucleon. ie a `p` and `e` per nucleon `p`.
          Therefore `1/μ = 2/2`


# Lecture 03

# structure of star:
    - Hydrostatic equilibrium
    - mass continuity
    - energy generation
    - energy transport (radiative + convective)
    - (contain 7 unknowns, as a function of _r_, distance
      from the core)

# Dynamical time-scale
    - time it takes the sun or any star to re-establish
      equilibrium
    - How long would it take a blob of gas to fall to the
      centre of the star under gravity

    - sun - 30 mins to re-establish equilibrium if it were
      dynamically perturbed
    - supergiants - several weeks

# Gravitational time-scale
    - How long it would take star to radiate away all its
      gravitational energy?

    (gravitational energy) / (rate it radiates)

# Nuclear time-scale
    - How long for all energy in nuclear reactions to be
      radiated away?
    - Energy loss rate = L
    - Energy available = M * energy liberated by H -> He per
      unit mass (ie hydrogen fusing into helium)

    - sun estimate: 10^11 years (overestimate - sun only
      uses about 10% of its mass over its lifetime)

# Hydrostatic Equilibrium
    - dynamical timescale always very short compared to its
      age
    - therefore star can always adjust its structure to
      ensure theres a balance between gravity and gas
      pressure

      equation of Hydrostatic equilibrium
      dP(r) / dr = GM(r) ρ(r) / r^2

# Mass continuity Equation
    dM / dr = 4 π r^2 ρ(r)
    if the mass changes as a function of distance from the
    centre of the star, the density changes too

# mean molecular mass, μ
    - the average mass of particles in a gas
    - in units of proton masses
    - why does the global structure of a star depend
      on the average mass of the gas particles?
      remember the ideal gas equation of state:

      ```
      P = ρ k T / μ m_p
      ```
      so from the equation above, if you change the average
      mass of the particles in the gas, this can change the
      _temperature_. (this will become important later when
      we look at how a stars evolves and turns hydrogen into
      helium)

# particles per nucleon
      `1 / μ` as the number of particles per nucleon

      normally μ is calculated by considering the mass
      fraction by chemical composition:
        - X = Hydrogen mass fraction
        - Y = Helium mass fraction
        - Z = all other "metals"

# puzzle
    HR diagram of globular cluster, with 3 "streams" of stars
    along the main sequence.
    what produces these discrete populations of stars with
    very different chemical compositions is still completely
    unknown (good PHD project!)

# some simple estimates
    - central pressure of a star
    - central temperature of star

# energy source of a star
    - luminosity: how much matter do we have to convert into
      energy (using Einsteins e = mc^2)
    - sun: mount everest per hour!
    - some calculations... gives efficiency 10^-4

# energy generation
    - another equation of stellar structure
    - ε = energy released per unit mass (watts per kg)
    - ε = 0 everywhere in the star except for the core
      (centre) ie ε is a very strong function of
      temperature.
    - outside the core, in the stellar envelope, there are
      no nuclear reactions so ε = 0, => dL/dr = 0 => the
      luminosity is constant outside the core!

...
...   missing stuff here
...

# Gas v Radiation pressure
    - is one more important than the other in the sun?
    - we find gas pressure is 100 times radiation pressure
      in the Sun (but not true for massive stars)

# degenerate matter (electron or neutron)
    - if pressure at a given temperature is high enough,
      matter can become degenerate
    - discussion Heisenberg Uncertainty and Pauli Exclusion
    - "Fermi Momentum"

# degeneracy pressure
    - both equations for degeneracy pressure only depend on
      _density_! They dont depend on _temperature_!

# opacity κ
    - a materials resistance to radiation
    - if the internal opacity of a star is high, radiation
      cant get out and is trapped in the lower layers. This
      prevents the lower layers from cooling, and also
      prevents the upper layers from being heated. (called
      "blanketing").
    - high opacity can lead the star becoming unstable to
      convection

# Sources of Opacity
    1. electron (_Thomson_) scattering importance decreases
       when a gas cools
    2. _bound-bound_ and bound-free absorption. dominant
       source of opacity at intermediate stellar
       temperatures (10-50000K)
    3. _free-free _absorption,  depends on the chemical
       compistion of the stars (temperature drops out of the
       equations). Important for low metallicity stars
    4. _"H-" opacity_ -- huh? rare: a proton with
       2 electrons! (a free electron passing a neutral H can
       induce a dipole moment in the atom and can bind to
       the proton.)


# binding energy Q
    - total reset mass energy of the constituents of the
      nucleus _minus_ the rest mass energy of the whole
      nucleus.

...
...

# CNO cycle

# At what energies are reactions most likely to occur?
    - Gamov peak


# Lecture 04 Stellar Models


# Polytropic (Lane-Emden) models
    - ignore convection
    - ignore radiation transport
    - energy generation
    - assume a star is a self-gravitating ball of hot gas

    - despite these simplifications, the models work for
        - the Sun
            - stars with low energy generation rate
            - and a thin convective layer
        - white dwarves
            - no internal energy generation
            - stable against convection

# Polytropic (Lane-Emden) models:
    We assume the gas follows a _polytropic_ equation of
    state (new concept!)
    - ideal gas: `P ∝ ρT`

    - this equation is unsolvable. Theres no way we can work
      out temperature if we only know pressure (because
      density could be anything)

    - so we assume a polytropic equation of state:
      - `P (pressure) ∝ ρ (density) ^ {1 + 1/n}`
      - or
      - `P  = K ∙ ρ  ^ {1 + 1/n}` where K is some constant.


    - where `n` (polyropic index) is something we don't know
      and reflects our ignorance of what the temperature is
      doing.

    - So when we change the density and want to know what
      happens to the pressure, the temperatures behaviour
      will be contained in the exponent `n`. Below are three
      examples:

    - Isothermal process
        - the temperature is constant so 'n' must
          equal '∞'
          `P ∝ ρ, ⇒ n = ∞`

    - adiabatic process
        - no heat is exchanged
        `P ∝ ρ^{γ}, ⇒ n = 1 / (γ - 1)`

    - example: isobaric process
        P pressure is constant, n = -1)
        `P = CONSTANT ⇒ n = -1`

    - but we _still_ have 3 variables! We have just replaced
      `T` with `n`. But now `n` is just a constant (not
      a function) so we can tune `n` until `P` (and our
      model) is right.

    - This is the key concept! We dont know what `n` is but
      we know its just a number, not some complicated
      function. So we can just fiddle `n` around, until our
      model looks like a real star.

# Derive Lane-Emdon equation
    Now we're ready to build our stellar model:

    1. combine the equations of mass continuity and
       Hydrostatic equilibrium to eliminate `M(r)`

    2. Assume the gas is polytropic,
        - ie pressure is `P = K ρ^{1 + 1/n}`.
        - We also rewrite the density as `ρ = ρ_0 ∙ Θ^n`
          where `Θ` is some unknown function called the
          'dimensionless density'
        - so the pressure is:
          `P = K ρ_0^{1 + 1/n} Θ^{n+1}`

    3. Rewrite the pressure gradient as:
       `dP/dr = dΘ/dr ∙ dP/dΘ`
    ...
    ...
    make a substitution for r: `r = α ∙ ξ`

    - where α is some constant

    - where ξ is the dimensionless radius
    ...
    `α^2 = all the jumble of constants`
    ...

    - so the derivative: `dr = α ∙ dξ`

    - and then we tidy up everything to arrive at the
      something thats reasonbably compact. Lane-Emden
      Equation:
      `1/ξ^2 ∙ d/dξ (ξ^2 ∙ dΘ/dξ) = -Θ^n`

    - so we still have three unknowns:
        - `ξ` dimensionless radius
        - `Θ` dimensionless density
        - `n` polytropic index

    - but `n` is just a constant, and we can solve this
      equation for any value of `n`.

    - when we sovle,  we find how the dimensionless density
      `Θ` varies by dimensionless radius `ξ`:

    $MY_IMAGES/astro/lane-emden-integrations.jpg

    - tuning `n` up or down, we can make the star:
        - at low n: more compact (smaller radius)
        - at high n: more spreadout (bigger radius)
        - so what we do in practice is choose a value for
          `n` that most accurately represents the star we're
          trying to model

    - for a star like the sun, it turns out that `n = 3.1`
      is a very good approximation.

# solving the Lane-Emden equation
    - to solve this differential equation, we need to know
      the boundary conditions

# Gas v Radiation models (Eddington)
    - these models assume the pressure inside a star is
      a combination of gas pressure and radiation pressure

    - e.g we saw earlier that for the Sun:
        - `P_{gas} ≈ 100 ∙ P_{radiation}`
        - ie gas pressure completely dominates

    - but this isnt true for all stars. First lets define
      the total pressure as a combination of the gas and
      radiation pressure:
      _ `P_tot = P_g + P_r`
      _ where `P_g = β ∙ P_tot`
      _ where `P_r = (1-β) ∙ P_tot`

    - `β` tells us what fraction of pressure is due to gas
    - so `(1-β)` is what fraction is due to radiation

    - if `β` is large, then gas        pressure dominates
    - if `β` is small, then radiation  pressure dominates

    - so getting rid of `P_tot`, we can write:
        - `P_g = (β / 1 - β) ∙ P_r`

    - .... (took equations from stellar interiors section,
      then rearranging)
    - ....
    - ....

    - then using Homology arguments (see next section), we
      can rewrite:
        - `P_tot^3 / ρ^4  ∝  (M^6 ∙ R^{-12} / M^4 R^{-12})`
        - `               ∝ M^2`

    - then using previous substitution for `P_tot` we have:
        - `(1-β) / β^4 ∝ M^2 ∙ μ^4`

    - so this equation tells us that the ratio of gas to
      radiation pressure depends on
      - the mass `M`
      - and the chemical composition `μ`

    - so increasing `M` decreases `β` ⇒ radiation pressure
      becomes more important in massive stars

    - so increasing `μ` decreases `β` ⇒ radiation pressure
      becomes more important as the star evolves (as it
      converts Hydrogen into Helium)

# Eddington Limit
    - (radiation pressure overpowers gravitational)
    - if we increase a stars mass, we must increase its
      gravity
    - but as we increase a stars mass, we also increase its
      luminosity and this increses more _rapidly_ as does
      the gravity. ie it increases with a higher power of
      'M' (???)
    - so at some point, radiation pressure must start to
      overcome gravity if we make the star massive enough
    - and the Eddington limit tells us what this limit is

    Derivation:
        - start with the equation of radiation transport
        - rewrite `dT/dr` in terms of `P`
        - ....
        - equate with the radiative transport equation,
          rearrange for `L` and most things cancel giving:
        - `L_Edd = (4π ∙ G ∙ M) / κ`
        - So `L_Edd` is the theoretical upper limit to
          a stars luminosity

    - so if you increase Luminosity anymore, radiation
      pressure will blow the star apart

    - Now massive stars can get close to their Eddington
      limit which can make them very _unstable_ and can have
      a major impact on their evolution (see later)


# Homologous Models 1
    - we just take equations, get rid of all the constants
    - and re-write things in proportionality arguments

    - Prologue: different stars may have very different
      internal structures
        - compare a _3M☉_ main sequence dwarf:
            - convective core with radiative envelope.
        - with a _1M☉_ post main sequence star (red giant):
            - very compact, very hot core, radiative
            - envelope very expanded and mainly convective

    - that means if we were to model both of these stars
      we'd have to construct _two different_ models to
      describe each of them separately

    - but some groups of stars are similar enough that we
      can reliably assume they have the same:
            - density profile
            - opacity (cos similar temperature structures
              and compositions)
            - energy generation mechanism

    - so for example: a _3M☉_ main sequence star is
      fundamentally very similar to a _4M☉_ main sequence
      star
        - the 4M☉ will be slightly hotter in the core, so
          its luminosity will be slightly higher, its radius
          larger, but the ingredients of the structure
          equations will be very similar

    - this means we can take a model for the 3M☉ star and
      simply scale it up to make fairly accurate models of
      the 4 solar mass star

    - such groups of stars are said to be homologous

    - when making homologous models, ignore all constants
      and just use proportionality:
        - mass continuity: `ρ ~ M/R^3`

# Homologous Models 2
    - To construct a Homologous model, first we take the
      equations of stellar structure:
        1. hydrostatic equilibrium (`dP/dr = ...`)
        2. mass continuity (`dM/dr = ...`)
        3. energy generation (`dL/dr = ...`)
        4. energy transport  (`dT/dr = ...`)
        5. convective criterion (`d ln T / d ln P > ...`)

    - and we add the ingredients of stellar interiors:

        1. the _opacity κ_ and its relationship to
           temperature and density:
            - hot:  `k ~ constant`
            - cool: `k ~ ρ T^{-3.5}`

        2. _energy generation ε_ and its relationship to
           temperature and density:
           - `ε  ~ ρ T^n`
           - low mass stars:  `n = 4`  (p-p chain)
           - high mass stars: `n = 16` (CNO chain) (responds
             more dramatically to temperature)
           - `ε = 0` outside the core

        3. And the final ingredient is the equation of state
            - whether thats gas pressure, radiation
              pressure, or some combination of the two
            - `P = ρKT/( μ m_H ) [+1/3 αT^4]`

# Homologous Models 3

    - Now the trick is simply to ignore all the constants
      and use the proportionality. So for example, the mass
      continuity equation can simply be written as:
        - `ρ ~ M/R^3` 
        - "the density _scales_ as mass divided by the
          radius^3"

        - we can do the same with the hydrostatic
          equilibrium equation: `P ~ M^2 / R^4`
          (we got rid of density)

        - from the ideal gas equation we see pressure scales
          as density times Temperature: (`P ~ ρT`). 
          - We can get rid of pressure and density, using
            the relations above, to find that the (core)
            temperature of a star is proportional to its
            mass/radius:
            - `T ~ M / R`

        - "Mass luminosity relation": from the radiative
          transport equation, we can eliminate density and
          temperature and find that Luminosity scales as
          (mass^3) / (opacity): 
          - `L ~ M^3 / κ`

# Homologous Models 4 [M-L relation]

    - this derives the _mass-luminosity relation_!

    - from the previous section we saw that `L` scales as
      `M^3/κ`. But remember if the star interior is very hot
      and the material is completely _ionised_ we can say
      the opacity `κ` is roughly constant. 
        - (cos when everything is ionised, the only source
          of opacity is _electron scattering_, and this
          doesnt depend on temperature or density)

    - therefore we expect: `L ~ M^3` and we can test this
      prediction by observations of nearby main sequence
      stars. When we do that, we find empirically that:
      `L ~ M^{3.5}`

    - so from very basic assumptions we got very close to
      the correct answer!

# Homologous Models 5 [M-R relation]

    - this derives the _mass-radius relation_!

    - from energy generation equation (`dL/dr`), if we just
      get rid of all the constants and write it purely in
      the form of proportionalities:
      - `L/R ~ R^3 ∙ ρ ∙ ε`
      - and getting rid of `ε` (which scales as `ρT^n`) we
        find: `L/R ~ R^2 ρ^2 T^n`

    - now substitute:
        - `ρ ~ M/R^3`
        - `T ~ M/R`
        - to find: `L ~ M^{2+n} / R^{3+n}`

    - and eliminating `L` using the M-L relation: (note:
      this 'n' is different to the polytopic 'n'!)
        - `R ~ M^{ (n-1) / (n+3) }`

    - lets look at the 2 different regimes of nuclear
      burning:
      - low mass stars: n=4 (p-p), `R ~ M^{3/7}`
      - high mass stars: n=16 (CNO), `R ~ M^{15/19}`
        (remember in the CNO cycle, the energy generation is
        more sensitive to the temperature)

# Homologous Models 6
    - now apply all this to the H-R diagram
    - ...
    - ...
    - compare with observations
    - the kink we see around Spectral Class "A" is the
      switch of the dominant nuclear buring route from the
      P-P chain to the CNO chain.

    $MY_IMAGES/astro/homologous-hr-diagram.jpg

# Summary 3 types of models:
        1. _Polytropic_ models 
            - (good for sun, white dwarves)

        2. _Eddington_ models 
            - (good when radiation pressure exceeds gas
              pressure)

        3. _Homologous_ models 
            - (good for comparing properties of stars with
              similar internal structures)




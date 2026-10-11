ah around 2013, the terrible Mphil

### zero age composition
	- described by just two parameters X and Z
	- Y is then 1 - X - Z
	- X varies little from star to star (0.7 to 0.75)
	- Z ranges
		- from 0.0001 in old stars (pop II, globular clusters)
		- to 0.02 in stars like the sun (pop I, found in thin galatic disk)
		- within Z, balance of heavy metals to light metals (or O2 to C)
		- to vary with age, but Eggleton ignores for now

### X corelates to Z (probably)
    - ie older stars have more hydrogen and less metals
    - earliest formed stars hypothesised to have zero metals
      (pop III)

### partial differential equations
    - model physical processes within stars when settled to
      _equilibrium_
    - equations not definitive though
    - when heat content of the material is changing
      _simultaneously_ with composition
    - different formulations are used
    - unclear parts of equations
        - treatment of convection
        - treatment of mass loss by stellar wind
        - turbulent compressible convection
            - semiconvection
            - convective overshooting

### mixing length theory
	- Bohm-vitense 1958
    - simple treatment of convection

### simplistic diffusion
    - eggleton 1972, 1983b
    - treatment of semi-convection

### main contributions to pressure
    - radiation pressure
    - perfect gas law
    - degenerate electron pressure (ignore on most of main
      sequence)

### eggleton 1971 code
	- implicit adaptive distribution of mesh points
	- gives numerical stability
	- only need 200 meshpoints between centre and photosphere

### important composition variables
    - hydrogen,
    - helium,
    - carbon,
    - oxygen,
    - neon
    - these mainly determine the structure

### eggleton code
    - can evolve star from ZAMS to carbon buring in _1000
      timesteps_

### what affects model
	- convective heat transport
	- convective/semi convective mixing
	- mass loss
	- doesnt affect: discretisation

### eggleton code advantage
    - with mesh, its easy to include stellar wind mass loss
      (single stars)
    - and mass transfer in a close binary

### what determines radius and luminosity
	- mass of star
	- also age and initial composition

### TMS
	- terminal main sequence

### when does main sequence end
    - when fuel runs out and evolution becomes rapid
    - but for 1-2 solar mass stars, evolution slows again
      before accelerating, so TMS is hard to define

### Approximate formula for MS stars
	- Tout: mad formulas for L, R and T
	- remember: for main sequence!
	- and assumes Z same as sun

### Luminosity
    - dictated mainly by opacity of outer layers
    - and itself dictates comsumption rate of nuclear fuel

### nuclear fuel proportional to mass
    - hence star lifetime roughly proportional to M/L

### visual band luminosity
    - depends mainly on surface temperature `T`
    - also weak dependece on gravity and composition
    - cos stellar surfaces _not_ perfect black bodies

### how to define TMS?
    - presence or absence of central convection
    - fraction of stars mass that is convectige when
      H exhausted

### polytropes
    - gas spheres where pressure is proportional to power of
      density
    - combine with hydrostatic equilibrium and self-gravity
      gives
    - lane-emden equation
    - polytropes: chandrasekhar!

### kramers opacity law
    - approximate absorption of photons by bound-free
      electronic
    - transistions in highly ionised gas

### fully convective stars
    - also approximated by polytropes
    - with n = 3/2
    - comes from gas thermodynamics, rather than radiative
      heat transport
    - because convective stellar interiors tend to be
      completely adiabatic
    - p prop. T^5/2, density prop. T^3/2

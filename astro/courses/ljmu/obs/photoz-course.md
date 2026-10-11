### How is spectro-z computed?
Not that easy!

    1. Emission line redshift. Step1: Finds peaks in the
       continuum- subtracted spectrum. Step2: Tries to
       assign a line to the largest peak (i.e. Hα). Then it
       sees if the rest of the peaks fall where they should
       fall. Step3: Iterates through all the table lines
       until the best match is found. How is spectro-z
       computed?

    2. Cross-correlation redshift. Tries to cross-correlate
       spectra of various astronomical objects with the
       measured, continuum-subtracted spectrum. The
       templates include: stellar spectra of all spectral
       types, white dwarf spectrum, emission line galaxy
       spectrum and stacked LRG and quasar spectra. The best
       match will decide the type and redshift of the
       object. 

### What is a photo-z? 

We are trying to estimate the redshift of galaxy from
photometric data alone! (e.g. colors)

There are 2 main classes of methods for doing that:
- Empirical methods. 
- Template fitting methods. 

each with their advantages and disadvantages. 

Why would I ever want to use a photo-z?? Photo-z’s are less
accurate than real (spectroscopic) redshifts, but
spectroscopy is very time consuming. In a given amount of
time we can get approximate photo-z’s for many galaxies, or
an accurate spectroscopic redshift for 1 galaxy! The SDSS
database contains ~50 000 LRGs with spectra and about ~900
000 LRGs with photometry only, even though 80% of SDSS time
goes to spectroscopy.

Many current & future surveys (such as PanSTARRS, DES, LSST)
will only deliver photometric data. 

### Empirical methods.
- Empirical methods use a training set with known
  spectroscopic redshifts, to calibrate a relation that
  relates the photometric data (magnitudes or colors) and
  the redshift of an object. 

- Then the calibrated relation is applied on objects with no
  spectroscopic data. 

- There are various implementations of this method ranging
  from very simple (such as optimizing a relation of the
  form z = κ +αu+βg+γr+δi+εz), to more complex such as
  neural networks (ANNz) or kd-trees. 

Empirical methods. 

### Advantages:
    Systematic errors in photometry are “calibrated out”.
    Can give very good results if the training set is large
    and representative of our target objects.

### Disadvantages: 
    Empirical methods are specific to one data set. The
    training set must cover the color, redshift and type
    range of our target objects. Very hard to achieve in
    practice. ANNz performance on 10 000 galaxies from SDSS
    Early Data Release. 

### Template fitting methods. 
    Template fitting methods use spectral templates of
    various types of galaxies (E, Sbc, Irr) and redshift
    them until they match the observed colors.

    Templates can come from data (typical elliptical galaxy
    spectrum, etc.) or from population synthesis models
    (Bruzual-Charlot, etc.).

    There are variations on this theme, such as including
    prior knowledge of the redshift distribution of
    galaxies, and hybrid schemes (initial classification by
    a model, and refinement of the model through real data).
    Template fitting methods. 

    - Advantages: We can generate a model for any galaxy at
      any redshift. We can convolve our model with any
      filter set. We can have a better understanding and
      physical intuition for our results. σz ~ 

    - Disadvantages: 0.051 Depends on the accuracy of the
      model and the accuracy of the photometry. Results can
      be biased and often more noisy compared to empirical
      methods. σz ~ 

### Photo-z in science

- Photo-z’s have an intrinsic scatter on the order of σz
  = 0.03 -0.07 (as compared to ~0.0001) of spectro-z’s, and
  can sometimes be biased. 

- Photo-z’s can have “catastrophic failures”, when a wrong
  template is matched.

- A given experiment may need completely different methods
  for its analysis, depending on whether the data is
  spectroscopic or photometric (i.e. the power spectrum of
  LRGs in SDSS, Hütsi 2005 vs. 2006 Padmanabhan et al. 2006)

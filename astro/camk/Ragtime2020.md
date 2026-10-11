### Links
    - Ragtime 22 online           https://indico.slu.cz/event/4/
    -                             http://proceedings.physics.cz/index.php
    -                             https://indico.slu.cz/event/4/registrations/2/?token=fccba806-d5f2-4ab3-a40d-315ec35752fd
    - blog fastai metallicities   https://jwuphysics.github.io/blog/galaxies/astrophysics/deep%20learning/computer%20vision/2020/05/21/exploring-galaxies-with-deep-learning.html
    - blog fastai metallicities 2 https://jwuphysics.github.io/blog/galaxies/astrophysics/deep%20learning/computer%20vision/fastai/2020/05/26/training-a-deep-cnn.html
    - Bag of tricks paper         https://arxiv.org/abs/1812.01187
    - SDSS Cas jobs               http://skyservice.pha.jhu.edu/casjobs/
    - SDSS Cas jobs               https://apps.sciserver.org/dashboard/
    - $HOME/repos/ragtime2020/photoz-article/photoz-talk.pdf
    - Ragtime YOUTUBE video talks https://www.youtube.com/playlist?list=PL4sr0rhJDOHQdsO0pqz-_VLtxg0w5RdLS
    - Ragtime YOUTUBE My talk: shocking to see the stress https://www.youtube.com/watch?v=Le-gKPSEano&list=PL4sr0rhJDOHQdsO0pqz-_VLtxg0w5RdLS&index=14


### Training a Machine Learning Classifier to Predict Quasar Photo-metric Redshifts
- Author: Enda Farrell
- Nicolaus Copernicus Astronomical Center (CAMK)

- In the era of massive all-sky surveys, calculating
  spectroscopic redshifts (Spec-Z) is time-consumingand costly.
  Instead, broadband photometry may be used as a proxy for
  spectrographic measurements.We train an off-the-shelf
  classifier to estimate photometric redshifts (Photo-Z) from
  SDSS Quasarimaging data. We outline the technique of
  cross-validation to reduce bias and variance in the modeland
  improve calibration. Reasons for so-called catastrophic
  prediction failures are discussed andpopular packages such
  asscikit-learnandAstroMLexamined. The modern Deep Learning
  package‘fastai’ is introduced along with a survey of Neural Net
  (NN) approaches. Despite Machine Learningbeing something of
  a dark art, surprisingly useful results may be extracted using
  modern softwarepackages.




TODO:
    - more on neural nets
    - different types of supervised learning 
    Wlodek
        - flux are shifted 
        - 12: increase type 
        - 22 photo-Z 
        - 21 and 25 


ragtime2020
    - $MY_VIDEOS/Astro/photoz/lsst-photometry.mp4
        - need to understand that mapping fro color  to redshift
        - spectra often have strong features in them 
        - if you see a jump in the spectrum, hint you might be
          looking at 4000A (in the rest frame) 
        - hydrogen at lower red-shifts is efficient at absorbing
          lyman alpha
          - I found a lyman break, but it was a balmer break in
            the lower red...
          - multiple solutions can explain the same visible
            properties 
    - why 4000ang break: caused by the blanket absorption of high energy radiation from metals in stellar atmospheres 

    - $MY_VIDEOS/Astro/photoz/astroinformatics-photoz-weather.mp4
        - we want to reconstructino the SED of a hidden model degeneracy 

    - $MY_VIDEOS/Astro/photoz/Italian-lady-agn-photoz.mp4
        - cosmos - Cosmic Evolution Survey 
        - cosmos field, deep data in very band 
        - not trying to do physics, just get as close as possible
          to correct redshift
        - variability of photometry is an issue 



- show rms error on plots
- alphago http://deeplearningskysthelimit.blogspot.com/2016/04/part-2-alphago-under-magnifying-glass.html
- SDSS photoz http://www.sdss3.org/dr10/algorithms/photo-z.php

### James Long
    - strong features in the spectrum, easy to estimate
    - spectra very expensive to collect
    - photometry is spectra observed at a small set of
      wavelengths
    - A Framework for Statistical Inference in Astrophysics https://www.annualreviews.org/doi/abs/10.1146/annurev-statistics-022513-115538
    - Problems: ignoring uncertainty in the photometry
    - spectra training sets are often nearby objects.
        - but the unknown unlabelled data is from far away objects
        - for distant spectra, needs more instrument time
          (integration time)
        - difficult to compute uncertainty in esetimate (output
          posterior pdf)
    - Eazy redshift software from Yale

### agn Italian lady talk
    - photometry zero point offset (if photometry not homogeneous)
    - question: do we know the change in the UV "slope" as
      a function of accretion rate and BH mass
    - u band very important for agn work
    - but intermediate and narrow band photometry more
      important!?
    - Spherex photometry https://www.jpl.nasa.gov/missions/spherex/
    - J-PAS http://j-pas.org/
    - need the agn to be the brightest thing in the pixel
    - variability a problem, unless the LSST (why?) single pass
    - cadence between different bands 
    - ML photoz strongly depends on the training samples, and
      completeness of the photometry 
    - ML: add extra features like variability, strucutre to
      function
    - can include magnitude as a feature 
    - feature split: extended and point like sources 
    - better results: remove photometric errors > 0.3 etc 
    - pdz from sed fitting is over-confident! 
    - BAL quasars can mimic quasars at very diffrent redshifts 
    - outliers: dust obscured galaxies and dust obscured AGN 

### LSST photometry
    - $MY_VIDEOS/Astro/photoz/lsst-photometry.mp4
	- $MY_IMAGES/astro/photoz/lsst-photoz-talk-outline.jpg
    - for much of galaxy and agn science we want to measure some
      observable as a function of REDSHIFT 
    - no constraints unless we have redshifts 
	- $MY_IMAGES/astro/photoz/what-the-lsst-measures.jpg
    - redshift: by what factor the universe has expanded since light left the object
    - 1 / 1 + z. today `1/1+0 = 1`  Big bang: `z = ∞`
    - compare observed wavelengths to lab wavelengths 
    - at i = 25.3, takes 100 hours telescope time to measure
      a redshift 75% of the time (for a weak lensing sample)
    - new telescope, with 5000 fibres at a time, but still
      thousands of telescope years to get redshifts for 4 billion
      galaxies
    - instead: use the broad features in a spectrum to determine
      a redshift
    - template: what redshift gives the best fit for these colors
      for a template spectrum
    - photoz: lower precision: can shift features a lot in the
      color bins . individual obj: 5% uncertainty is ok. If exceed 0.2% then errors 

    - if you see a jump in the spectrum, it's a hint you might be
      looking at 4000 Ang
        - if the flux is much higher in the redder band than the
          bluer band, that might be where the 4000Ang rest-frame
          is occuring 
        - and relate that to the observed frame 
        - Lyman break: Hydrogen at low redshifts is efficient at
          absorbing photons below lyman alpha, so we have anothe
          rbreak in the spectrum


    - you might confuse one break for another break: you might
      think you've got a lyman break, and you've got a 4000 ang
      break 
    - if higher in the bluer than redder band, this might be
      a 4000A break
    - z=7 similar redshift 7 galaxy with a lyman break, z=2
      galaxy that has a lot of dust, balmer break in the lower
      red
        - you might think you have a high lyman break, and it's
          a low z balmer break
        - you have multiple solutions that can explain visible
          properties 
    - outlier fraction should < 10%. Must understand the
      outliers. 
    - if you've a bimodal pdf, then expectation value is in the
      middle, which is actually unphysical, zero probability! 
    - he likes hierarchical methods 
    - ML, extrapoate poorly, if trianing set not good 
    - template methods no some physical knowledge... but ML
      methods wouldn't place anything at high redshift if not in
      the training set
    - Random forest: 
        - you have trees that are trained differently
        - bootstrapped training data: smaple with replacement 
        - each tree only uses a subset of features (not using all
          the data) 
    - zero point: reference point of flux 
    - for astronomers: color is the difference between magnitudes
      in 2 filters. Bluest specified first.
        - eg g - r = -2.5 log_10 (g flux / r flux)
        - color is larger for redder objects 
        - some photoz codes work in flux (better for handling
          uncertainties, which are closer to Gaussian in flux) 

    - use k-fold validation 
    - better to look at flux data, instead of magntiudes. Because
      you lose spectral info with magntiudes
    - add magntiude as a feature,  
    - Neural Nets: very non-linear, extrapolates poorly, if you
      have redshift peaks, that get magnified
    - add size information: weak infomrmation, the size of
      objects doesnt change much with higher redshifts 
    - deep redshifts, you fail to get spectroscopic redshifts 25%
      of the time
    - secure redshifts = "multiple spectroscopic features " 
    - what happens if you have different training and test sets. 
    - those spectra that dont have strong emission lines are
      harder to get... and that corresponds strongly to color 


### Astroinformatics conference 
    - Kai Polsterer 
    - how features are shifted with respect to its rest frame
    - $MY_IMAGES/astro/photoz/Estimate-redshift.jpg
    - $MY_VIDEOS/Astro/photoz/astroinformatics-photoz-weather.mp4
    - photoz: its a regression model. 
    - $MY_IMAGES/astro/photoz/regression-problem.jpg
    - ideal solution is middle line: 
    - $MY_IMAGES/astro/photoz/early-sdss-photoz-effort.jpg
    - we did point estimates 
    - but lots of uncertainties 
        - input uncertainty: measurement error 
        - a measurement is always a value and its error (or even
          better a liklihood function)
        - model uncertainty 
            - are we capturing all the degeracies 
            - or lacking data 
        - really we're predicting a probability density function 
    - $MY_IMAGES/astro/photoz/photoz-pdf.jpg
    - and plotting the true redshift, against different
      photometric predictions, we see bimodal predictions 
    - $MY_IMAGES/astro/photoz/bimodal-predictions.jpg
    - interesting RMSE doesnt capture the shape of the PDF, just
      use the mean
    - $MY_IMAGES/astro/photoz/dont-use-rmse.jpg
    - stacking pdfs not great either 
    - $MY_IMAGES/astro/photoz/stacking-pdfs.jpg
    - copy the weathermen: use CRPS: Continuous rank probablity
      score
    - $MY_IMAGES/astro/photoz/continuous-rank-probability-score.jpg
    - another evaluation tool: 
    - Proper Evaluation Tools / PIT 
        - probability integral transform 
    - $MY_IMAGES/astro/photoz/probability-integral-transform.jpg
    - important important important!!! 
        - why the wings: you have a degenerated problem 
    - use the weatherman predictions but single gaussian 
    - $MY_IMAGES/astro/photoz/weather-techniques-single-gaussian.jpg
        - convert each point estimate to a single gaussian with
          sigma 0.01
        - also try: calculate the mean over the nearest neighbour 
        - but even this isn't perfect. Why: because it's a single
          gaussian. But multi-modalities is the problem
        - $MY_IMAGES/astro/photoz/bimodal-predictions.jpg
            - .PDFof a quasar at z=1.959 calculated with
              a referenceset of 30,000 high redshift quasars
              taken fromSDSS(DR7). Based on the 64 nearest
              neighbours only, a histogram of the redshift
              dis-tribution is generated (background). 
            - The individual redshifts ofthe neighbours are
              marked at the upper edge. The fitted
              Gaussianmixture model and its components are
              plotted in the foreground. Note the obvious
              multimodal distribution of the neighbours that
              reproduces the true redshift (marked in red) quite
              well.

    - By fitting a Gaussian mixture model (GMM) we can transfer the individual
      redshift values of the neighbours into a Gaussian representation.
      Therefore we can use the nearestneighbours to produce aPDFinstead of a
      point estimate.See Figure5for an example of fitting aGMM to the nearest
      neighbours redshift distribution in order to generate a PDF



    - So if you use nearest neighbours and random forests etc
    - you get symmetry, because of the degeneracy
	- $MY_IMAGES/astro/photoz/symmetry-pattern-degeneracy.jpg
    - his solution???
	- $MY_IMAGES/astro/photoz/dcn-meets-mdn.jpg


### Thoughts
    - A key problem in astronomy is the measurement of distance
    - Why are photo-z useful, for cosmology
    - possibility of using photometric redshifts to determine the
      galaxy luminosity function.
    - photo z stats aspects https://www.youtube.com/watch?v=SXPdI_P0_cQ
    - General background to photo-z surveys
      http://rongmonbordoloi.com/photoz.html
    - DES, EUCLID, LSST, PanSTarrs
    - boris leistedt https://speakerdeck.com/ixkael/accurate-interpretable-photometric-redshifts-encoding-physics-in-machine-learning?slide=21
    - Astrobites:
        - Photometric Redshifts and the Galaxy Luminosity Function https://astrobites.org/2011/06/01/photometric-redshifts-and-the-galaxy-luminosity-function/
        -  Good diagrame for template fitting

    - Astrobites
        - measure obscured agn
        - https://astrobites.org/2018/07/09/clearing-up-the-redshifts-of-obscured-agns/

        - Teaching Stellar Classification to Computers
        - https://astrobites.org/2017/03/02/teaching-stellar-classification-to-computers/

        - Smarter Computers Do More Work, Only Much Slower
        - https://astrobites.org/2016/07/15/smarter-computers-do-more-work-only-much-slower/
        - The author then used a complex DNN to predict
          a redshift using the raw galaxy images alone. The
          features are thus the individual pixel values, rather
          than pre-processed quantities like “size” and “color”.

    - A Comparison of Photometric Redshift Techniques for Large Radio Surveys https://arxiv.org/abs/1902.05188
        - Future radio surveys will generate catalogues of tens
          of millions of radio sources, for which redshift
          estimates will be essential to achieve many of the
          science goals. However, spectroscopic data will be
          available for only a small fraction of these sources,
    -  REVIEW: many flavours photometric redshifts

    - ML: Show Annie Jump and her time classifying
    - more galaxies where we have imaging observations rather
      than spectroscopic ones
    - decision trees are quite intuitive, bit like how humans
      approach it

    - Decision Tree algorithm uses training set to build a model to map these features to the correction classification

    - feature extraction approach versus deep learning, where you
      use all the pixels



### Wed Oct 21, 15:55
https://indico.slu.cz/event/4/contributions/16/
    - "Training a Machine Learning Classifier to Predict Quasar Photometric Redshifts"

    - In the era of massive all-sky surveys, calculating
      spectroscopic redshifts (Spec-Z) is time-consuming and
      costly. Instead, broadband photometry may be used as
      a proxy for spectrographic measurements. We train an
      off-the-shelf classifier to estimate photometric redshifts
      (Photo-Z) from SDSS Quasar imaging data. We outline the
      technique of cross-validation to reduce bias and variance
      in the model and improve calibration. Reasons for so-called
      catastrophic prediction failures are discussed and popular
      packages such as _scikit-learn_ and _AstroML_ examined. The
      modern Deep Learning package 'fastai' is introduced along
      with a survey of Neural Net (NN) approaches. Despite
      Machine Learning being something of a dark art,
      surprisingly useful results may be extracted using modern
      software packages.


### scikit learn
        - scikit photoz regression    http://ogrisel.github.io/scikit-learn.org/sklearn-tutorial/tutorial/astronomy/regression.html
        - scikit astro data           https://ogrisel.github.io/scikit-learn.org/sklearn-tutorial/tutorial/astronomy/index.html
        - scikit astro bias           https://ogrisel.github.io/scikit-learn.org/sklearn-tutorial/tutorial/astronomy/practical.html#bias-variance-over-fitting-and-under-fitting
        - scikit decision trees       https://scikit-learn.org/stable/modules/tree.html
        - scikit metrics              https://scikit-learn.org/stable/modules/model_evaluation.html

        - The confusion_matrix function evaluates classification
          accuracy by computing the confusion matrix with each
          row corresponding to the true class (Wikipedia and
          other references may use different convention for
          axes).

        - By definition, entry in a confusion matrix is the
          number of observations actually in group , but
          predicted to be in group

        >>> from sklearn.metrics import confusion_matrix
        >>> y_true = [2, 0, 2, 2, 0, 1]
        >>> y_pred = [0, 0, 2, 2, 0, 2]
        >>> confusion_matrix(y_true, y_pred)
        - array([[2, 0, 0],
        -        [0, 0, 1],
        -        [1, 0, 2]])
        TODO: plot_confusion_matrix



### Courses
    - $MY_NOTES/cs/ML/fastai-course.txt
    - ibm machine learning with Python (trees) https://www.coursera.org/learn/machine-learning-with-python/home/week/3
    - advanced ML specialisation               https://www.coursera.org/specializations/aml
    - edx ml - week 6 trees                    https://courses.edx.org/courses/course-v1:ColumbiaX+CSMM.102x+3T2020/course/#block-v1:ColumbiaX+CSMM.102x+3T2020+type@chapter+block@6dc84c97c30c4a63afa097901b94b732

    - $MY_BOOKS/Astro/jake_astro_stats_2.pdf
    - jake old photometric
      https://github.com/astroML/sklearn_tutorial/blob/master/examples/plot_sdss_photoz.py
    - Main astroml
      https://www.astroml.org/
    - astroml book figures
      https://www.astroml.org/book_figures/chapter8/index.html
    - astroml ed2 photometric redshifts by decision trees
      https://www.astroml.org/book_figures/chapter9/fig_photoz_tree.html#book-fig-chapter9-fig-photoz-tree

    - Jakes scikit-learn tutorial: In practice, the solutions to
      the photometric redshift problem can benefit from
      approaches that use physical intuition as well as machine
      learning tools. For example, some solutions involve the use
      of libraries of synthetic galaxy spectra which are known to
      be representative of the true galaxy distribution. This
      extra information can be used either directly, in
      a physically motivated analysis, or can be used to generate
      a larger suite of artificial training instances for a pure
      machine learning approach.

### Data driven astronomy
    - $MY_NOTES/astro/courses/data-driven-astronomy.txt
    - Week 5 Decision Trees
      https://groklearning.com/learn/data-driven-astro/module-9/17/
    - Week 6 Forests
      https://groklearning.com/learn/data-driven-astro/module-11/1/
    - We learnt that there are several ways to assess the
      accuracy of the model and in our validations we used the
      median of the residuals.
    - Measurement Bias! Good... QSO's versus Galaxies
    - A note on decision tree regression
        - In decision tree regression, the possible outputs are
          a finite set of values that correspond to the number of
          leaves/end points in the tree. Ideally we want as many
          points as possible to give a good approximation of the
          'continuous' parameter space, whilst avoiding
          overfitting.
    - While approaches exist that determine their own feature
      representation and use the raw pixel values as inputs, e.g.
      neural networks and deep learning, the majority of existing
      machine learning in astronomy requires an expert to design
      the feature set.

    Grok: Random Forests Classification
        - So far we have used a single decision tree model. However,
          we can improve the accuracy of our classification by using
          a collection (or ensemble) of trees as known as a random
          forest.
        - A random forest is a collection of decision trees that have
          each been independently trained using different subsets of
          the training data and/or different combinations of features
          in those subsets.
        - When making a prediction, every tree in the forest gives
          its own prediction and the most common classification is
          taken as the overall forest prediction (in regression the
          mean prediction is used).
        - Random forests help to mitigate overfitting in decision trees.
        - Training data is spread across decision trees. The subsets are created by taking random samples with replacement. This means that a given data point can be used in several subsets. (This is different from the subsets used in cross validation where each data point belongs to one subset).
        - Individual trees are trained with different subsets of features. So in our current problem, one tree might be trained using eccentricity and another using concentration and the 4th adaptive moment. By using different combinations of input features you create expert trees that are can better identify classes by a given feature.
        - The sklearn random forest only uses the first form of sampling.


### Misc
    - find out: astro "colours"
    - find these: "future large-scale photometric surveys."
        - DESI spectrographic survey        https://www.desi.lbl.gov/
        - 4MOST 2020  spectrographic survey https://www.4most.eu/cms/
    - how are quasars indentified in SDSS
        - Boss target selection             https://www.sdss.org/dr16/algorithms/boss_quasar_ts/
        - sdss legacy qso detection         https://www.sdss.org/dr16/algorithms/legacy_target_selection/#qso
        - SDSS DR16 QSO Catalog             https://www.sdss.org/dr16/algorithms/qso_catalog/
        - SDSS QSO Data model DR16          https://data.sdss.org/datamodel/files/BOSS_QSO/DR16Q/DR16Q_v4.html
        - $MY_ZOTERO/2010/schneider_et_al_2010_the_sloan_digital_sky_survey_quasar_catalog.pdf 
    - Asimov Quasars, Pulsars, and Black Holes                  1988



### Jake
    - Clustering and Density Estimation                   https://www.youtube.com/watch?v=62zY8mA-UVQ&feature=emb_logo
    - Opening Up Astronomy with Python and AstroML (2013) https://www.youtube.com/watch?v=cmLHx6zuJJU&feature=emb_logo
    - $HOME/repos/sklearn_tutorial/README.rst
    - $HOME/repos/sklearn_tutorial2/README.md
    - If our estimator is underperforming, how should we move forward?
        - Use simpler or more complicated model?
        - Add more features to each observed data point?
        - Add more training samples?

    - https://github.com/jakevdp/sklearn_tutorial/blob/master/notebooks/03.2-Regression-Forests.ipynb
        - Overfitting: That is, they are flexible enough that
          they can learn the structure of the noise in the data
          rather than the signal!

    - https://github.com/jakevdp/sklearn_tutorial/blob/master/notebooks/05-Validation.ipynb
    - The Training Score shows how well a model fits the data it was trained on. This is not a good indication of model effectiveness
    - The Validation Score shows how well a model fits hold-out data. The most effective method is some form of cross-validation, where multiple hold-out sets are used.
    - Validation Curves are a plot of validation score and training score as a function of model complexity:
        - when the two curves are close, it indicates underfitting
        - when the two curves are separated, it indicates overfitting
        - the "sweet spot" is in the middle
    - Learning Curves are a plot of the validation score and training score as a function of Number of training samples
        - when the curves are close, it indicates underfitting, and adding more data will not generally improve the estimator.
        - when the curves are far apart, it indicates overfitting, and adding more data may increase the effectiveness of the model



### QuasarNet
    - The problem of detecting quasars with a broad absorption
      line (BAL) feature (Weymann et al. 1981) is slightly more
      challenging than that of detecting emission lines.
    - Quasars with a BAL feature exhibit a characteristic
      absorption trough blue-wards of the emission lines required
      to be suf- ficiently detached from the center of the line
      (at least 3000 km/s) and sufficiently wide (at least 2000
      km/s) (Weymann et al. 1991). The balnicity-index (BI)
      measures the strength of the BAL feature as the equivalent
      width of the absorption trough, in excess of the minimum
      requirement of 2000 km/s. The main difficulty in
      determining whether a spectrum has a BAL feature, both
      visually and automatically, resides in the determination of
      the level of the unabsorbed continuum. For

### Hogg 2018
    - $MY_ZOTERO/2017/leistedt_hogg_2017_data-driven,_interpretable_photometric_redshifts.pdf 
      interpretable\ photometric\ redshifts\ t.pdf
    - Specifically in the photo-z case, this translates into
      a spectroscopic sample which fails to cover the entire
      domain occupied by the photometric sample in
      colour-magnitude parameter space.
    - Random forests depict ensembles of individual
      classification or regression trees, which are fit given the
      available train- ing data. Each tree is built from top to
      bottom, where the root corresponds to all considered
      training instances and the leaves to subsets of instances.
      The internal nodes of each tree are usually split
      recursively (into two) based on certain split- ting
      criteria. The overall recursive process stops as soon as
      some stopping criterion is fulfilled per leaf node. In case
      of fully grown trees, each leaf corresponds to single
      pattern or to a group of “pure” patterns (i.e., a group of
      patterns having all the same label). The original way of
      constructing random forests is to consider, for each
      individual tree, a subset of the train- ing patterns,
      called bootstrap sample (Breiman 2001). These bootstrap
      samples are drawn uniformly at random (with re- placement)
      to generate slightly different training sets and, hence,
      slightly different individual trees. Another way is to
      consider slightly different splits at each internal node
      by, e.g., considering different feature dimensions or
      random splitting thresholds. The overall performance of
      such a forest of trees is usually much better than the one
      of the individual trees (due to the variance reduction that
      stems from combining the predictions made by the trees).
      The splitting processes taking place at the internal nodes
      is based on measuring the gain in “purity”, which can be,
      in turn, measured via different scores. Typical ones, mea-
      suring how impure a set of patterns associated with a node
      is, are the mean squared error (MSE) for regression prob-
      MNRAS 000, 000–000 (0000)Realistic validation of
      photometric redshifts lems or the Gini index for
      classification problems. We refer to Breiman (2001) for
      a detailed description.
    - Inaccurate photometric redshift estimation is the dominant
      source of statistical and systematic errors in modern
      photometric galaxy survey analyses. This is partly because
      current photo-z algorithms are unable to model the
      flux–redshift relation in a flexible, data-driven fashion
      (e.g., via machine learning) while simultaneously
      exploiting some of our knowledge about the underlying
      physics (as in template fitting methods). On the first
      hand, machine learning methods must be trained on
      homogeneous, representative data set with the same
      band-passes, noise and redshift distributions as the target
      survey of interest. Thus, they cannot fully take advantage
      of the wealth of diverse, deep spectroscopic or many-band
      photometric surveys in existence. In addition, they do not
      constrain the flux–redshift relation to correspond to SEDs
      being redshifted and projected into photometric
      band-passes. On the other hand, libraries of SED
      templates—which strictly satisfy this constraint—are
      usually small and constructed from low-redshift data.
      Furthermore, they require significant fine-tuning (of,
      e.g., priors and mapping onto fluxes) to yield robust
      results for modern data sets


### Teddy Happy 2017
    - $MY_ZOTERO/2017/beck_et_al_2017_on_the_realistic_validation_of_photometric.pdf 
    - Photometric redshift (photo-z ) estimation has become
      a widespread and vital tool in the astronomical field.
      Although compared to their higher resolution counterpart,
      the spectro- scopic technique (spec-z ), photo-z
      measurements are subject to higher uncertainty, they are
      also more efficient, cheaper, and able to probe more
      distant objects (e.g. Hildebrandt, H. et al. 2008). These
      characteristics make them more suitable for some
      astrophysical problems.
    - For instance, for the Euclid 1 mission of the Euro- pean
      Space Agency (ESA), the initial requirements on the bias
      and the scatter in each redshift bin were 0.002 and 0.05
      for a total number of 2 billion galaxies, respectively
      (Laureijs et al. 2011). Spectroscopic follow-up for such
      a large number of objects is infeasible and such stringent
      requirements on redshift measurements are extremely
      challenging for current photo-z methods.
    - Main classes for photo-z
        - Template fitting
        - Empirical
        - Hybrid (Hogg)
    - In template fitting techniques, a set of synthetic spec-
      tra is determined from synthesised stellar population
      models for a given set of metallicities, star formation
      histories and initial mass functions, among other
      properties. The photo-z is calculated by determining the
      synthetic photometry (and thus spectral template and
      redshift) which best fits the pho- tometric observations.
      Empirical techniques, on the other hand, usually require
      a data set with spectroscopically mea- sured redshifts in
      order to train an algorithm which will subsequently be
      applied to a pure photometric sample. Hy- brid methods
      represent a combination of the previous ones, using an
      empirical step to first determine the photometric redshift
      and a template fitting step where physical informa- tion
      provided by the templates can be used to evaluate the
      accuracy of the photo-z determination
    - _KEY_: This approach neglects to take into account the fact
      that the distribution of galaxies in the space of
      observables (i.e photometric mag- nitudes/colours) is
      generally very different for the spectro- scopic and the
      photometric samples, and even their range in the
      magnitude/colour space can differ. Moreover, given the
      quality requirements demanded for spectroscopic observa-
      tion, the photometric sample encloses a larger photometric
      uncertainty which may break the direct relation between
      magnitude/colours and redshift, even when this relation is
      clearly defined in the spectroscopic sample.

### Pasquet 209
    - $MY_ZOTERO/2019/pasquet_et_al_2019_photometric_redshifts_from_sdss_images_using_a.pdf 
    - cnn code https://github.com/jpasquet/photoz
    - query fits images by celestial coords
      https://github.com/ebertin/selfserver
    - Template fitting: However, they are often computationally
      intensive due to the brute-force approach to explore the
      pregenerated grid of model photometry. Moreover poorly
      known parameters, such as dust attenuation, can lead to
      degeneracies in color − redshift space.
    - On the other hand, the machine learning methods, such as
      artificial neural network (Collister & Lahav 2004),
      k−nearest neighbors (KNN Csabai et al. 2007) or random
      forest techniques (Carliles et al. 2010) were shown to have
      similar or better performances when a large spectroscopic
      training set is available.
    - However, they are only reliable within the limits of the
      training set and the current lack of spectroscopic cover-
      age in some color space regions and at high redshift
      remains a major issue for this approach.
    - For these reasons, template-fitting methods are still
      considered and new approaches have emerged which combine
      several techniques to maximize the photometric redshift PDF
      estimations
    - A limiting factor of all methods is the input information.
      The accuracy of the output photometric red- shifts is
      limited by that of the photometric measurements (Hilde-
      brandt et al. 2012). Magnitudes or colors are affected by
      the choice of aperture size, Point Spread Function (PSF)
      variations, overlapping sources, and even modeled
      magnitudes (accounting for PSF and galaxy luminosity
      profiles) capture only a fraction of the information
      present in the images.
    - 6.1. Galactic reddening As illustrated in Fig. 1, the SDSS
      spans a large range in Galac- tic extinction. The effect of
      E(B − V) on the observed colors of a galaxy can mimic that
      of a redshift increase. The impact of including the
      reddening information into the training, or not, is
      illustrated on Fig. 11 (left panel). Without this
      information pro- vided to the classifier, a strong
      reddening-dependent bias is ob- served (orange line).
      A weaker trend is observed for B16, who use SDSS
      de-reddened magnitudes. The small size of the sam- ple at
      high galactic extinction most likely prevents the CNN from
      properly accounting for this degeneracy, hence our choice
      to in- clude the reddening information into our model,
      which success- fully removes the trend (red line).
    - _DATA_ The SDSS is a multi-band imaging and spectroscopic
      redshift survey using a dedicated 2.5-meter telescope at
      Apache Point Observatory in New Mexico. It provides deep
      photometry (r < 22.5) in ugriz passbands. Our input data
      are selected from the data release 12 (DR12, Alam et al.
      2015) by using the SDSS CasJob website (the MySQL query is
      given in Appendix A). From the SDSS database, we retrieved
      516,525 sources classified as galaxy, with dereddened
      petrosian magnitudes r ≤ 17.8 and spectroscopic redshifts
      z ≤ 0.4. For all we queried the equa- torial coordinates
      (RA, Dec), dereddened Petrosian magnitudes, ellipticities
      (b/a), galactic extinction (Schlegel et al. 1998), PSF
      Full-Widths-at-Half-Maximum (FWHMs) and sky background
      values in all bands. The spatial distribution of the final
      sample and its redshift distribution are shown in Figure 1.
    - The color code indicates the mean galactic reddening excess
      in each cell, which increases sharply in the vicinity of
      the galactic plane.
    - We also retrieved the photometric redshifts of Beck et al.
      (2016, hereafter B16), which are the only such redshifts
      avail-


### My old thesis
    - true spectroscopic redshifts and also to official SDSS
      results (Richards et al., 2009a). Finally we compare our
      Machine Learning classifier against an official test of
      Photo-Z classifiers: PHAT – Photo-z Accuracy Testing
      (Hildebrandt et al., 2010). Results achieved are in broad
      agreement with official SDSS results and opens the way
      towards further development of the algorithms used in this
      project.
    - The final section on data manipulation illustrates the
      power of the online SQL database holding SDSS data. Once
      a Quasar Catalogue has been downloaded it is possible to
      use SDSS CasJobs to retrieve spectroscopic data associated
      with each quasar. The Casjobs website is located at
      http://skyservice.pha.jhu.edu/casjobs/ and a user must
      first register with the website before accessing data.
      I ran the following job which returned 105,783 URL's each
      pointing to a file contain a quasar spectrum. SELECT
      schneider.SPECOID,
      dbo.fGetUrlFitsSpectrum(schneider.SPECOID) INTO
      mydb.AllSchneiderFITSurls FROM MyDB.SchneiderSPECOID
      schneider WHERE schneider.SPECOID is not null

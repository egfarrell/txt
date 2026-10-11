
### Matt Darnley
    - Hi Matt, in an earlier post you mentioned that we
      could try plotting two spectra in SPLAT
      simultaneously. I've been doing my analysis on the
      basis of separate red and blue spectra and getting
      some useable results but thought I should give this
      a go to see if helps. However, I can't seem to analyse
      both halves of the same spectrum at the same time.
      I've got two spectra in the same plot by opening them
      both up and selecting both in the check boxes. But the
      wavelength and flux readings don't give any data for
      one half; and the line fitting tool won't work because
      it only fits to half of the data. It's as if SPLAT can
      only 'see' one half of the spectrum even though
      they're plotted together. Is there a special tool to
      get this to work? I've played around with the options
      in SPLAT but couldn't find anything.

    - Answer: SPLAT can display two (multiple) spectra at
      once, but can only analyse _one_ at a time

# Setup Starlink Environment
    Put in ~/.bashrc
        alias run_splat="/home/ef/repos/splat-vo/bin/splat/splat"
        export STARLINK_DIR=~/repos/star-hawaiki
        source $STARLINK_DIR/etc/profile

### install problem: "libexpat"
    An older version of libexpat is required. 
    - For the 64-bit release, download this file. http://starlink.eao.hawaii.edu/extras/libexpat-64.so.0
    - For the 32-bit release, download this file. http://starlink.eao.hawaii.edu/extras/libexpat-32.so.0

    In both cases, rename the downloaded file to:
    - libexpat.so.0 
    - and place it in the "$STARLINK_DIR/lib" directory. 

### Show Gaia documentation
    showme sun214

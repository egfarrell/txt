# astropy tips.txt


# Create astropy env
    conda create -n astro
    conda install astropy
    conda install pytest-astropy
    conda install Scipy Matplotlib h5py Pandas Scikit-image asdf
    import astropy
    astropy.test()

# wheres pyfits?
    import astropy.io.fits as pyfits

# config file settings
    ~/.astropy/config
    also link to ~/.config/astropy

# convert units (.to())
    >>> x = 1.0 * u.parsec
    >>> x.to(u.km)
    <Quantity 30856775814671.9... km>

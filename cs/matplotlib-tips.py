# Marker types at the end of this file..!
# ---------------------------------------

# handy
    - Mpl Colors: $MY_IMAGES/cs/python/mpl-colors.jpg

    # overall figure title (not at axis level)
        fig.suptitle(f'Spectrograms. {file_id} (Label= {str(y)})')

    # handy: adjust loads of keyword arg properties
        kwargs = dict(fontsize=20, ha='center', va='center', alpha=0.5)
        pl.text(3500, 0.02, 'u', color='b', **kwargs)
        pl.text(4600, 0.02, 'g', color='g', **kwargs)
        pl.text(6100, 0.02, 'r', color='r', **kwargs)

    # figure size
        figsize=(width, height)


    # turn off all (subplot) axes
    for ax in fig.axes:
        ax.axis("off")

    # mpl slider... for long x-axis
        -# later: ah mpl viewer has inbuilt zoom/slider 
        $MY_CODE/python/misc/plots/mpl-slider.py

    # before a plt.show() xticks own't have actual text values
    # so do this to force an xticks trigger/paint/activation 
    fig.canvas.draw()

    # how to properly define an "ax" object!
    fig = plt.figure(figsize=(16, 10))
    ax = fig.add_subplot(1, 1, 1)

    # rotation
    ax.set_xticklabels(ax.xaxis.get_majorticklabels(), rotation=45)
    plt.xticks(rotation=80)
    plt.xticks(fontweight='bold', fontsize=10, color='darkgrey')
    plt.yticks(fontweight='bold', fontsize=12, color='darkgrey')


    # labels
    custom_labels = ['one', 'two', 'three', 'four']
    ax.set_xticklabels (custom_labels)

    # legend
    legend_labels = ['Confirmed', 'True Error', 'Total Errors']
    ax.legend(labels=legend_labels, fontsize='large')

        # need to get existing legend first with seaborn
        h, l = ax.get_legend_handles_labels()
        new_labels = legend_labels = ['Long Course', 'Short Course']
        ax.legend(h, new_labels, title="Type")


    # nice horizontal barchart!
    $MY_CODE/python/misc/plots/plot-horizontal-barchart.py

    # Customise title
    ax.set_title(title, fontdict={'fontsize': 24}, loc='right', pad=20)


# Nice Function to create multi-plot summary
	# $MY_IMAGES/cs/data-multiplot-summary.jpg
    def quick_viz(data):
        fig, axes = plt.subplots(nrows=3, ncols=2, figsize=(15, 15), dpi=80)
        for i, key in enumerate(data.columns):
            t_data = data[key]
            ax = t_data.plot(
                ax    = axes[i // 2, i % 2],
                title = f"{key.capitalize()}",
                rot   = 25,
            )
        fig.subplots_adjust(hspace=0.8)
        plt.tight_layout()

    plot_cols = ["bx_gse", "bx_gsm", "bt", "density", "speed", "temperature"]
    quick_viz(df[plot_cols].iloc[:1000])




# Control all fontsizes!
    import matplotlib.pyplot as plt

    SMALL_SIZE  = 8
    MEDIUM_SIZE = 10
    BIGGER_SIZE = 12

    plt.rc('font',   size=SMALL_SIZE)        # Controls default text sizes
    plt.rc('axes',   titlesize=SMALL_SIZE)   # Axes title
    plt.rc('axes',   labelsize=MEDIUM_SIZE)  # x and y labels
    plt.rc('xtick',  labelsize=SMALL_SIZE)   # 'x' tick labels
    plt.rc('ytick',  labelsize=SMALL_SIZE)   # 'y' tick labels
    plt.rc('legend', fontsize=SMALL_SIZE)    # Legend fontsize
    plt.rc('figure', titlesize=BIGGER_SIZE)  # Figure title



# Seaborn scatterplot with trend
    # but watch: the "lmplot" creates a grid, hard to get your hands on an
    # individual axis
    g    = sns.lmplot(x="distance", y="Att Exc Auth", hue="Academy", data=learners)
    axes = g.axes.flatten()
    ax   = axes[0]


# label plt.plot points (DCG, PIS Survey)
    # zip joins x and y coordinates in pairs
    for x,y in zip(question_df["Academy"], question_df["agree_percent2"]):

        label = "{:.0%}".format(y/100)

        plt.annotate(label, # this is the text
                    (x,y), # this is the point to label
                    textcoords="offset points", # how to position the text
                    xytext=(0, 12), # distance from text to points (x,y)
                    ha='center', # horizontal alignment can be left, right or center
                    size=16,
                    weight='bold'
                    ) 



# Jake tip: rasterized=True (reduce size)
    - Matplotlib tip: if your saved figure files are too large, pass
    - `rasterized=True` to the plot element thats causing the issue: that
    - element will be saved as a more compact raster (i.e. pixel) representation:

# handy stuff (misc) from RSI Discovery
    plt.xlabel('Period', fontsize=16, labelpad=20))
    plt.ylabel('Turnover', fontsize=18, labelpad=20))
    ax.text(0.2, 0.9, 'Ref: ' + vatref9, fontsize=25, transform=ax.transAxes)
    ax.legend().set_visible(False)
    ax.tick_params(labelleft=False)


    # the "transform=ax.transAxes" bit is important
    ax.text(0.2, 0.9, 'Ref: ' + vatref9, fontsize=25, transform=ax.transAxes)

    ax.annotate('Period 523', xy=(1, 1), xytext=(0.1, 0.2),
                arrowprops=dict(facecolor='red', shrink=0.1),
                textcoords='axes fraction',
                color='red'
                )


    ax.xaxis.label.set_visible(False)

# Jake: advantages of *jet* colormap:
    - approximates physical spectrum
    - lower errors in reading values from keys
    - conveys more colour steps
    - semantic meaning

# seaborn "swarmplot"
    - does *NOT* scale well to large data
    - its like stripplot, but the points dont overlap
    - This plot is often called a “beeswarm” too.

# datacamp tips
    plt.xticks([1000, 10000, 100000], ['1k', '10k', '100k'])
    # nice: increase the size of the scatter plot points
        # s = size
        # c = color
        plt.scatter(gdp_cap, life_exp, s = np_pop, c= colors, alpha = 0.8)

    bin_edges = [10,20,30,40]
    plt.hist(data, bins=bin_edges)

    # plot *ALL* the data
    sns.swarmplot

    plt.margins(0.02) # keep data off plot edges


# plt cleanup existing plot
    plt.show()
    plt.clf()

# resize x y ticks
    ax.tick_params(axis='y', which='both', labelsize=8)

# categorical barchart example
    # 01: SEABORN
        ax = sns.barplot(x=expenses_grouped.index, y="value",  data=expenses_grouped);
        ax = sns.barplot(x='description', y="value",  data=expenses_grouped);

    # 02: PANDAS
        expenses_grouped = expenses.groupby(by=['description']).sum()
        expenses_grouped.plot.barh()

# test datasets - offline access
    # if cache=True, assume data is in "~/seaborn-data"
    crashes = sns.load_dataset("car_crashes", cache=True)

# install seaborn from github
    git clone https://github.com/mwaskom/seaborn.git
    cd seaborn/
    pip.exe install .

# jake: activate seaborn
    # is this still used?
    import seaborn(); seaborn.set()

# seaborn GREYSCALE plot
    # default color map for seaborn is *greyscale*
    # because its hard to choose a good default
    # color that will suit everything

# seaborn BOXPLOT outliers not displaying
    # Figured it out.
    # seaborn.set executes:
        mpl.rc("lines", markeredgewidth=0, solid_capstyle="round")

    # just need to specify:
        matplotlib.rc("lines", markeredgewidth=0.5)

    # if you're creating a plot with markers
    # that have no facecolor

# import seaborn!!
  # My actual script was called 'seaborn.py' which
  # clashed when I imported the seaborn module!

matplotlib tips

# format y axis 
    from matplotlib.ticker import FuncFormatter

    def millions(x, pos):
        # The two args are the value and tick position
        # Show numbers as "£ 300,000 M" etc
        return '£ {:,.0f} M'.format(x * 1e-6)

    ax.get_yaxis().set_major_formatter(FuncFormatter(millions))

# format integers with commans on y axis
    ax.get_yaxis().get_major_formatter().set_scientific(False)
    ax.get_yaxis().set_major_formatter(
        matplotlib.ticker.FuncFormatter(lambda x, p: format(int(x), ',')))

# format percent on y axis
    ax.yaxis.set_major_formatter(ticker.FuncFormatter(lambda y, _: '{:.0%}'.format(y/100)))


# same y axis on both (left and right) sides
    ax.tick_params(labeltop=False, labelright=True)
    # another tick params trick:
    ax.tick_params(axis='both', which='major', labelsize=8)

# y-axis spacing
    import matplotlib.ticker as ticker
    spacing = 10
    ax.yaxis.set_major_locator(ticker.MultipleLocator(spacing))

# place legend in top right corner of FIGURE
# as opposed to axis. (Handy when on ipad
# and using plt.savefig)
    plt.legend(bbox_to_anchor=(1, 1),
               bbox_transform=plt.gcf().transFigure)

    # or use 'fig' instead?
    fig.legend(labels=legend_labels, fontsize='medium', loc='lower center')

# save JPG/JPEG plots when in Agg/inline mode
    # key point: if jpg not supported, must have PIL installed
    conda install pillow
    ...
    matplotlib.use('Agg')
    plt.savefig(os.path.join(my_folder, 'myplot.jpg'), format='jpg')


# matplotlib style sheets
    plt.style.use('ggplot')

# which backend?
    from matplotlib import pyplot
    print matplotlib.pyplot.get_backend()

# change legend title size
    legend.get_title().set_fontsize('x-large')

# latex plot labels
    period_label=r'$\log_{10} Period [days]$'

# y axis log ticks
    # couldnt get it to work!
    ax.yaxis.set_major_locator(plt.LogLocator(base=10.0, subs=[2,3,4,5,6,7]))
    ax.yaxis.set_major_formatter(ScalarFormatter())

# nxutils pnpoly substitute
    contains_point(point, transform=None, radius=0.0)
    - Returns True if the path contains the given point.
    - If transform is not None, the path will be transformed
      before performing the test.
    - radius allows the path to be made slightly larger or
      smaller.

# scale y axis
    ax.set_yscale("log")
    ax.set_yscale("log", nonposy='clip') # if histogram
    ax.set_yscale("linear")

# cumulative distro - less memory
    data = ......
    values, base = np.histogram(data, bins=100)
    cumulative = np.cumsum(values)
    plt.plot(base[:-1], cumulative, c='blue')

# cumulative distro - more memory
    data = ......
    sorted_data = np.sort(data)
    # Or data.sort(), if data can be modified
    # From 0 to the number of data points-1
    plt.step(sorted_data, np.arange(sorted_data.size))
    # From the number of data points-1 to 0 (survival function)
    plt.step(sorted_data[::-1], np.arange(sorted_data.size))

# defaults
    # set dynamically
        import matplotlib as mpl
        mpl.rcParams['figure.figsize'] = [10, 8]
        mpl.rcParams['savefig.format'] = 'jpg'
    # show config file location
        print mpl.matplotlib_fname()
    # local
        ~/.config/matplotlib/matplotlibrc
    # but with anaconda:
        .../anaconda/lib/python2.7/site-packages/matplotlib/mpl-data/matplotlibrc

# 2D matplotlib histogram!!!
    # note "bins=" is a list
    # and the LogNorm for counting
        fig, ax = plt.subplots()
        # H = ax.hist2d(x, y, bins=100)
        H = ax.hist2d(x, y, bins=[100,100], norm=LogNorm() )
        fig.colorbar(H[3], ax=ax)
        plt.show()

# set axis to log scale
    ax.set_yscale('log')

    # histogram log y axis
    ax.hist(x, bins=binsize, log=True, .......)

# line plot with no markers
    ax.plot(x_means, y_means, color='red', lw=1, alpha=0.5, label='mean')

# move the x-axis label
    plt.xlabel("...", labelpad=20)

# create a random list of colors
    squares = [some list...]
    colors = cm.rainbow(np.linspace(0, 1, len(squares)))


# scatter plot intensity
    # look at the very low alpha
    plt.scatter(data.year, data.score, lw=0, alpha=.08, color='k')

# 'fill_between' and labels
    # theres a bug and fill_between labels dont show up
    # you have to work around
    p2 = Rectangle((0, 0), 1, 1, fc="red")
    legend([p2],  ['my red fill color'])

# turn a PDF into a PMF
   # - If the values are continuous you'll need to bin them
   #   somehow which is what np.histogram does.
   # - As I said, I think that your problem lies with your
   #   interpretation of the bins.
   # - They do not need to sum up to one, they need to
   #   INTEGRATE TO ONE. !!

# write text on a plot
  ax.annotate

# NUMPY histogram2d -
    # are y and x axis inverted??
    # notice origin='lower'
    H, xedges, yedges = np.histogram2d(y,x,bins=(ybins,xbins))
    Z = H

    # Plot the temperature data
    cax = (axTemperature.imshow(H,
                                extent=[xmin,xmax,ymin,ymax],
                                interpolation='nearest',
                                origin='lower',
                                aspect=aspectratio))

# interactive mode ?
    isinteractive() returns the interactive setting True|False
    ion()           turns interactive mode on
    ioff()          turns interactive mode off
    draw()          forces a figure redraw

# error bars
    plt.bar(pos, h, yerr=err, color=sns.husl_palette(6, s=.75), ecolor="#333333")
    ax.errorbar(x,y)

# rectangle
    from matplotlib.patches import Rectangle
    someX, someY = 2, 3
    ax.add_patch(Rectangle((someX - .5, someY - .5), 1, 1, facecolor="grey"))

# scatter matrix?
    from pandas.tools.plotting import scatter_matrix
    _ = scatter_matrix(auto[['mpg', 'cylinders', 'displacement']], figsize=(14, 10))

# histogram RELATIVE FREQUENCY (weights!)
    ax.hist(x, weights=np.zeros_like(x) + 1. / x.size, bins=binsize, ....)

# format dates on x-axis
    fig.autofmt_xdate()

# histogram bin edges
    # get bin edges back from hist function
    see Perez 'matplotlib_beyond_basics'

# zorder
    zorder = 10
    # make things print on top of other things

# color heatmap
    # Data descriptor to make a proper array.
    dt = [('station', (str, 4)), ('lat', np.float64), ('lon', np.float64), ('elev', np.float64) ]

    # Now, we load the data using this dtype we've
    # constructed, and view it as a recarray for convenient
    # named-field access:
    tab = np.loadtxt('data/stations.txt', dt)

    # Make the size of the circles proportional to the
    # elevation
    sizes = 40*(tab['elev'] + 1)
    s = ax.scatter(tab['lon'], tab['lat'], s=sizes, c=tab['elev'])

    # The colorbar must be associated with
    # the return value of scatter()
    f1.colorbar(s)

# floating window keys
    g grid on/off
    l x-axis log
    k y-axis log

# figure object
    f.axes

# properties
    line, = plot(....)
    line.set(....)
    setp(line, 'linestyle')
    line.set_data(x, y) -- change data

# when using floating windows in notebook
    rerender entire figure canvas
    draw() - no window management
    show() - window management

# ipython notebook display figure
    make figure 2 current
        figure(2)
    now display current figure
        display(gcf())

# histogram bars
    histtype*: [ 'bar' | 'barstacked' | 'step' | 'stepfilled' ]

      - 'bar' is a traditional bar-type histogram

      - 'barstacked' is a bar-type histogram where multiple
        data are stacked on top of each other.

      - 'step' generates a lineplot that is by default
        unfilled

      - 'stepfilled' generates a lineplot that this by
        default filled.

# variable point marker size
    markersize or ms: float
    so it appears PLT.PLOT DOES NOT ALLOW
    the markersize to be an array.

    # You could USE PLT.SCATTER however:
    ax1.scatter(data[0], data[1], marker='o', c='b', s=data[2], label='the data')
    # (data[2] holds relative sizes)
    # (s=size?)

# Problem: no minor axis
    # Unfortunately, 'ax.grid' is a bit confusing. (This is
    # a design bug / common gotcha.) It turns the minor grid
    # on, but the minor ticks are still turned off.

    ax.minorticks_on()
    ax.grid(True, which='both')
    ax.grid(True, which='major', axis='x')

    # other grid commands
    ax.grid(True, which='major', axis='x')
    ax.yaxis.grid() # vertical lines only
    ax.xaxis.grid() # horizontal lines only


# is figure 0 still in memory?
    plt.fignum_exists(0)

# set axis limits/max/min/scale/range
    ax.set_ylim([0, 1000])
    ax.set_xlim([0, 1000])
    # or dont specify a max value
    ax.set_ylim(0, None)

# nice colorscheme?
    cmap = plt.get_cmap('Spectral'))

# close a figure (release memory resources)
    plt.close(fig)


# close mpl window
    ctrl+w

# density plot
    pylab imshow


# Create subplots (grid of plots)
fig, axes = plt.subplots(nrows=grid_rows,
                        ncols=grid_cols,
                        sharex=True,
                        sharey=share_yaxis,
                        figsize=(12, 15))


# rearrange subplots
    fig1.tight_layout()
    plt.tight_layout(pad=0.4, w_pad=0.5, h_pad=1.0)
    # and fix up histograms:
        plt.axis('tight')

# move subplots
    subplots_adjust(left=None, bottom=None, right=None, top=None, wspace=None, hspace=None)
    # left   = 0.125
    # right  = 0.9
    # bottom = 0.1
    # top    = 0.9
    # wspace = 0.2   # amount of width reserved for blank space
    # hspace = 0.5   # amount of height reserved for white space

# alternative to matplotlib subplots
    import seaborn, investigate facetGrids, profit :)

# set figure size
    fig = plt.figure(figsize=(8,4), dpi=100)
    fig, axes = plt.subplots(figsize=(12,3))

# subplot
    fig.add_subplot(row, col, which_one)
    fig.add_subplot(1, 2, 1)

# wakari lecture
    plt.subplot2grid((2,3), (0,0))

# general "invalid DISPLAY variable"
    make sure you have
    "matplotlib.use('Agg')" etc
    BEFORE you import plyab or plplot

# scatterplot all black
    set lw=0 (for line width)


# save images as pdfs using PIL

    from PIL import Image

    # Create list of image objects
    image_list = []
    for plot_name in plot_names:
        print ('Appending image: ' + plot_name)
        image_list.append(Image.open(plot_name))

    # Convert image objects to PDF
    pdf_name = 'output/' + teacher_name + '.pdf'
    image_list[0].save(pdf_name, "PDF", resolution=100.0, save_all=True, append_images=image_list[1:])
    print ('Saved pdf: ', teacher_name + '.pdf')


Matplotlib ax.plot
    - character 	description
    - ---------------------------
    - '-' 	        solid line style
    - '--' 	        dashed line style
    - '-.' 	        dash-dot line style
    - ':' 	        dotted line style
    - '.' 	        point marker
    - ',' 	        pixel marker
    - 'o' 	        circle marker
    - 'v' 	        triangle_down marker
    - '^' 	        triangle_up marker
    - '<' 	        triangle_left marker
    - '>' 	        triangle_right marker
    - '1' 	        tri_down marker
    - '2' 	        tri_up marker
    - '3' 	        tri_left marker
    - '4' 	        tri_right marker
    - 's' 	        square marker
    - 'p' 	        pentagon marker
    - '*' 	        star marker
    - 'h' 	        hexagon1 marker
    - 'H' 	        hexagon2 marker
    - '+' 	        plus marker
    - 'x' 	        x marker
    - 'D' 	        diamond marker
    - 'd' 	        thin_diamond marker
    - '|' 	        vline marker
    - '_' 	        hline marker


- Color abbreviations:
    - character 	color
    - -----------------------
    - ‘b’ 	        blue
    - ‘g’ 	        green
    - ‘r’ 	        red
    - ‘c’ 	        cyan
    - ‘m’ 	        magenta
    - ‘y’ 	        yellow
    - ‘k’ 	        black
    - ‘w’ 	        white

# Links
- https://matplotlib.org/3.1.1/api/markers_api.html
- Some good plotting tips https://news.ycombinator.com/item?id=41572437

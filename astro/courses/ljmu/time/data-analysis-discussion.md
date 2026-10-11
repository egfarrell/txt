David Hardwick
Data Calibration
Collapse

Hi,

Finally managed to get round to starting the data exercise
now the lectures are just about over.

But I seem to have fallen at the first hurdle - calibration!

I have calculated S/N as the ratio of the mean count and
error in count for varying SM axes. However, when I plot
this, I just get a declining slope with respect to diameter.
The indications were given that I would see some sort of
indication (peak?) for optimal setting.  I have also tried
using sky value and sum in aperture in the calculation but
get the same result.

Any pointers?
Dave

Matt Darnley Tutor Manager
RE: Data Calibration

Hi David,

Two things to try...

1) Make your aperture smaller!

2) If that doesn't work, then have a look at the sky
annulus, as the aperture gets smaller you may/will start to
contain flux of the star within the background annulus ...
if so, make this bigger!


David Hardwick
RE: Data Calibration

Hi Matt,

My aperture range falls within the star image and moves well
outside. I make sure the annulus is outside the star image
and contains no other bright source.  I calculate the s/n as
mean count / error in count. However, I still see no
evidence of a maxima only a declining line?

Dave


Matt Darnley Tutor Manager
RE: Data Calibration

How small is your smallest aperture?

David Hardwick
RE: Data Calibration

Smallest semi-major axis value is 3.0

Matt Darnley Tutor Manager
RE: Data Calibration

Everything sounds ok - can you let me know which observation
and which object (pixel coordinates)?

David Hardwick
RE: Data Calibration

file: c_q_20110603_69_1_1_1.fits
x: 468.1
y: 563.7
auto cut: 99%
color map: default
color scale: linear
photons per data unit (gain): 2.2
exposure time: 10
saturation value: 65000

Surely the s/n vs aperture effect we are looking for would
be independent on the selected object?

Note I have been adjusting the annulus in between readings
so it stays roughly the same size/location and away from the
central image.


Matt Darnley Tutor Manager
RE: Data Calibration Attachment

Hi David,

Just looked at those data (using the parameters you've
stated) and produce the following plot (blue is signal
/ noise ; orange is signal )

The only thing I can think of is the annulus... how large is it?

File  SNR.pdf (13.15 KB)

David Hardwick
RE: Data Calibration

Hi Matt,

I get similar signals as you. But my s/n is of a different
order. For example semimajor axis 7 gives a mean count
(signal) of approx 45.0. The associated error in count is
approx 0.06 thus my s/n = 45.0/0.06=750 where as you get
about 250! So I guess its the way I am calculating the s/n
that's wrong.

Dave


David Hardwick
RE: Data Calibration

Okay,

Finally found what the issue was. My Gaia -> Parameters ->
Measurement errors use was set to gaussian sky and not
photon statistics. Why this was I do not know. Thanks for
all your help Matt.

Dave

John Bienias
RE: Data Calibration
Collapse

Hello Matt,

I am a little confused by the S/N calculations. I guessed
that the background noise is the Sky Count, which gives
a much lower S/N ratio. Have I misunderstood the meaning of
this? Is the sky count related to error in the count?
John

Matt Darnley Tutor Manager
RE: Data Calibration

Yes... in that it goes into the error which is - in it's
most basic form: S N R equals fraction numerator
s t a r over denominator square root of s t a r plus
b a c k g r o u n d end root end fraction

But in terms of the GAIA output... S N R equals fraction
numerator m e a n space c o u n t s over denominator
e r r o r space i n space c o u n t end fraction

Gordon Dennis
RE: Data Calibration

Hi Dave

I used an aperture of 4 - which is where the SNR appeared to
be best and (somewhat to my amazement, given the sweat it's
caused) I do get a plot with two distinct peaks, the first
much lower than the second.

Best regards
Gordon

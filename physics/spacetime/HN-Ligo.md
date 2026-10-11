https://news.ycombinator.com/item?id=13145216

LIGO black hole echoes hint at general-relativity
breakdown (nature.com)

commenter:
    > The echoes could be a statistical fluke, and if random
    > noise is behind the patterns, says Afshordi, then the
    > chance of seeing such echoes is about 1 in 270, or 2.9
    > sigma. To be sure that they are not noise, such echoes will
    > have to be spotted in future black-hole mergers. “The good
    > thing is that new LIGO data with improved sensitivity will
    > be coming in, so we should be able to confirm this or rule
    > it out within the next two years.”

    - Can I take a moment to commend the level-headed non-hype of
      this paragraph? It gives the impression that their first
      priority is finding the "truth" (I know, I know; I'm using
      it as a shorthand), not whatever they want to be confirmed.
      Gives the research much more credibility.

    - I mean, I know it's Nature so we should expect it, but it's
      still nice to see.


commenter:
    - It's actually a bit hyped for particle physics. It ignores
      the fact that you're very likely to see a lot of
      "significant" effects in physics because there are tens of
      thousands of data analyses performed every year, so we're
      bound to find some chance occurrences at this significance
      level. See the diphoton excess a few years ago.

    - This is why the particle physics community has a very
      strict unofficial standard of 5 sigma for significance.
      People don't generally publish "serious" papers at 3 sigma.


commenter:
    - I assume one reason for that high standard is that particle
      physics experiments are repeatable and can be observed with
      very high precision.

    - None of that is true of LIGO observations of black hole
      collisions.


commenter:
    - We've only observed a small handful of black hole
      collisions though so seeing something at 2.9 sigma would be
      somewhat more surprising, right? Definitely not rising to
      the level of a discovery yet of course.


commenter:
    - Only a small handful of observations (only one, last
      I heard, but I may be out of date), but lots and lots of
      analyses. And for every scientist that has their own model
      and does their own data processing, there's a chance that
      the model lines up with some arbitrary noise in the data.


commenter:
    - You're right, of course - while not a particle physicist,
      I know about the sigma standards, and mistakenly assumed
      others would see the "2.9 sigma" and immediately knew what
      that implied.



commenter:
This is super exciting stuff! We know that the two most
accurate models of the physical world, Quantum Mechanics and
General Relativity, contradict each other so at least one,
and probably both, are approximations to the real laws that
govern our universe. Since the QM and GR disagree about what
happens for small massive objects, and in particular black
hole event horizons, this is a place to look for divergence
to existing theories. If these echos holds up under repeated
measurements, it could be one of the most consequential
measurements of this century. This is another example of how
taking measurements to verify a theory you think you know
can lead you in completely unexpected directions.

Though, for now, the LIGO team is apparently saying that
these results could be the result of noise which would occur
1 out of 270 times. That's not strong enough evidence (in my
mind) to overcome the overwhelmingly likely prior that
General Relativity is correct. In time, we'll see.

Also, the article mentions that LIGO has witnessed 3 black
hole mergers. Last I heard LIGO had only witnessed 2.


commenter:
> Also, the article mentions that LIGO has witnessed 3 black
> hole mergers. Last I heard LIGO had only witnessed 2.

Two have been published as bona fide BH mergers. The third
is a signal in the LIGO data that doesn't formally meet the
statistical significance criteria, and so is classified as
a "GW candidate" rather than a detection. Unfortunately
I don't have a reference for it, but this was discussed
during a seminar I attended last month, given by Pedro
Marronetti (NSF Program Director for LIGO, I believe).



commenter:
    - While writing the original comment, I quickly browsed the
      LIGO publications list[0], but nothing jumped out at me as
      being about the candidate, specifically. The papers with
      "candidate" in the titles are pre-upgrade, so I don't think
      they include the candidate that was referenced in the
      seminar I attended.

    - [0] https://www.lsc-group.phys.uwm.edu/ppcomm/Papers.html

    - EDIT: Found something. The third candidate event
      (LVT151012) is mentioned in this paper, 2nd paragraph of
      the introduction and discussed in more detail in Section C,
      beginning on page 11: https://arxiv.org/abs/1606.04856
      ("Binary Black Hole Mergers in the first Advanced LIGO
      Observing Run", LIGO+VIRGO).


commenter:
For reference, at least in particle physics the standard for
a discovery is usually taken to be five-sigma, a 1 out of
1.7 million error probability, plus an independent
verification to eliminate systematic errors that would not
show up in the statistics.


commenter:
This isn't particle physics. Particle physics has the luxury
and burden of dealing with trillions of experimental trials,
not a measly 2.


commenter:
From someone who hasn't worked with statistics in awhile,
isn't sigma partly dependent on the number of independent
events? If so, and LIGO detects occur infrequently, how long
are we talking about, even assuming the data supports?


commenter:
The article said two years.


commenter:
Yup. This is where, after almost a century, the Quantum
Mechanics Rubber finally meets the General Relativity Road.

May the best theory win!


commenter:
Theory is the operative word here both theories could be,
and likely are to some degree, false. It's a common human
bias to being to believe one's theories as fact.


commenter:
First a bit of background on QM vs GR, then I'll return to
your point about horizons.

It's not that they disagree, it's just that when you do
perturbative quantization of General Relativity you find out
you can't use the renormalization (by power-set counting)
that is done on other perturbatively quantized field
theories. This is only a problem in strong gravity -- where
in this context, "strong" means more than one loop of
gravitons on a Feynman diagram. With multi-loop Feynman
diagrams involving other massless propagators we can use
a number of techniques to reduce the integrals; these
techniques do not work with (massless) gravitons.

One could describe this form of renormalization as
a enabling a reduction of infinite modes by making a finite
set of measurements at high energy to fix a parameter; this
works well for light, for example. Einstein gravity, on the
other hand, is perturbatively non-renormalizable, at least
using the same techniques, because you need to make an ever
increasing set of these types of parameter-fixing
measurements at higher energies, and ultimately in strong
gravity (as defined above) you need an infinite number of
them.

Since there is an overwhelming amount of evidence for
Einstein gravity everywhere we have been able to look so
far, this poses a problem: how do you quantize gravity in
a way that makes useful predictions about systems in strong
gravity? There are lots of research programmes looking at
this problem.

(The opposite side of the coin is that programmes to
geometrize the fields of the Standard Model exist, but they
run into difficulty too. Taken together, this is the
underlying situation supporting the claim that QM and GR
disagree about QM scale physics where local curvature
distorts lengths and times at the scale of SM scatterings.)

Outside of strong gravity, however, perturbatively quantized
gravity on the one hand, and semiclassical gravity on the
other, are perfectly fine effective field theories
(effective field theories in the Kenneth G Wilson sense;
General Relativity as an effective field theory in this
sense I'll call "the EFT" below).

One of the features of black holes generically is that
strong curvature is found only very near the (unremovable by
change of coordinates in General Relativity, gravitational)
singularity. The event horizon or horizons, depending on
metric the black hole sources, are found further from the
singularity as the black hole's mass increases. Around an
arbitrarily high mass black hole, one will find the horizon
is in a region of arbitrarily flat spacetime. If the compact
massive objects we observe to date are astrophysical black
holes, they do not have strong gravity at the horizon.

This is one of the critical parts of the AMPS firewalls
"paradox", wherein one of the set of properties of a black
hole which cannot all be true is the no-drama conjecture: an
infaller at a sufficiently massive black hole will
experience no tidal stresses.

Afshordi, one of the authors of the paper that's the topic
of the article has been doing productive phenomenology in
his various collaborations, and his argument that there are
classes of quantum gravity theory that can be excluded if
the observations do not disappear under analysis (e.g.,
they're not systematic errors, and aren't "lucky" low-sigma
correlations).

It's more than a bit provocative to suggest that the
observations suggest that the EFT fails outside the horizon
(one of the possibilities that has been discussed by
Polchinski and others in the wake of AMPS (he's the "P")),
which is fine, since the point will stand or fall on the
basis of evidence rather than the consequences for various
QG research programmes. :-)

For now it's pretty safe to work on the assumption that the
EFT is fine at least everywhere outside the event horizon
and the extremely hot dense early universe, and that a UV
completion to GR will be completely compatible with the EFT
outside strong gravity and inside a region at least a little
bigger than the observable universe.

Finally, all this means that although I won't exactly
endorse your wording in your third last sentence, I do
certainly agree with the sentiment.


commenter:
I honestly can't tell whether that's the output of a Markov
chain trained on arXiv. I need to read more until I can tell
the difference again.


commenter:
If a Markov chain could generate something that long and
coherent, it would be a much greater find than a simple
explanation of gravity in General Relativity.


commenter:
Any reading suggestions for someone who wants to understand
this and has a very strong math background but no physics
background beyond basic second-year QM?


commenter:
It's hard to gauge (pardon the pun) where to start you based
on that.

I'll guess that you're keen on understanding the General
Relativity part in detail.

Carroll and ‘t Hooft have kindly put up lecture notes that
might be a good starting place. Stefan Waner has made
available good lecture notes on differential geometry in the
GR context.

https://arxiv.org/abs/gr-qc/9712019 [Carroll]
http://www.staff.science.uu.nl/~hooft101/lectures/genrel_201...
['t Hooft] http://www.zweigmedia.com/diff_geom/tc.html
[Waner]

If you can wrap your head around those you could proceed to
any of the standard grad texts on GR (MTW, Wald, Weinberg
mainly). Weinberg is popular with people who like concise
maths.

If it's all too novel, then Hartle, Schutz and Carroll all
have excellent introductory texts aimed at grad students.

Once you understand how General Relativity works as
a general background to any field theory -- classical or
quantum -- then you'd be ready for semiclassical gravity or
various quantizations of GR.

An alternative approach might be to aim you instead towards
QFTs via group theory, Lie groups, Yang-Mills theory,
renormalization, renormalization group flow, and so forth.

Eventually you hit on gauge/group correspondence arguments
in general, which will equip you to understand the
attractions of AdS/CFT in moving the tedious calculations
from one setting to another setting in which they're a lot
less tedious, and hopefully not fall too hard for the idea
that AdS/CFT automatically helps us with gravity and matter
theories in our universe.

There is certainly ample scope for talented mathematicians
to test the correspondence argument (and especially whether
AdS/CFT specifically or gauge/gravity generally really is
a duality) rigourously.

I think that'd cover all the ideas touched on in comment you
replied to.

PS: Sorry I meant to list off some QFT resources for you but
I have run out of time today. :(


commenter:
>"Quantum Mechanics and General Relativity, contradict each
>other so at least one, and probably both, are
>approximations to the real laws that govern our universe.
>[...] overwhelmingly likely prior that General Relativity
>is correct"

If you think both QM and GR are likely incorrect, then why
do you use "a overwhelmingly likely prior" that GR is
correct?


commenter:
I think they mean an overwhelmingly strong prior that GR is
correct in this particular instance.


commenter:
Neither is "incorrect"; the Standard Model and General
Relativity are two of our best physical theories in that
they both accord entirely with observational and
experimental evidence to date.

Either or both may be incomplete, however. Correctness and
completeness of any theory in mathematical physics are
esentially orthogonal. You can have a complete theory that
is just wrong, for example.

As I wrote a bit earlier in this thread, the most
straightforward approach to quantizing General Relativity
fails in strong gravity. Additionally, the classical field
theory that is General Relativity is defined on a smooth
manifold and yet so far we have been unable to escape the
conclusion that some systems of mass-energy inevitably
produce a non-smooth discontinuity. A completion of
classical General Relativity requires the smoothing of these
regions. Sharpening this, the problem with GR is the
prediction of a gravitational singularity; if singularities
are physical at all (even if they are in a region of
spacetime that is inaccessible outside event horizons), then
General Relativity is incomplete in its own terms.

The Standard Model as a paradigm of quantum field theory, on
the other hand, is defined against a flat spacetime and thus
relies on the result from General Relativity that the flat
spacetime metric is induced on the tangent space of every
point in a smooth spacetime. So if GR is incomplete, so is
the Standard Model, in its own terms. (This is not just an
academic point; any theory of gravity that does not
reproduce the Poincaré invariance of flat spacetime in the
energy scales of the Standard Model has a terrible
correctness problem.) Additionally, the Standard Model is
not especially well-defined at GUT energy scales.
Additionally, the Standard Model does not describe the whole
of the non-gravitational content of the universe; for
example, it is silent on dark matter.

The Standard Model is highly correct, however, in the limits
where it is effectively complete. It's a pity it has so many
free parameters that have to be determined by experiment.

Likewise, General Relativity is both highly correct in the
limits of present observability, and it is complete in its
own terms if one admits the possibility that gravitational
singularities only arise in our idealized models and that,
for example, there are no exactly Schwarzschild black holes
anywhere in the past, present or future of our universe.
(One have to show that, and also that there are no other
physically realizable systems of matter that can generate
non-smoothness in our spacetime. That's not an easy ask.
Although General Relativity has only one of the free
paramaters complained about in the previous paragraph, it
doesn't offer much guidance about how to show that you can't
actually generate a low-Q Kerr-Newman metric in reality, and
worse, some of that guidance must come from the high-energy
behaviour of matter fields -- we can only be as complete as
the Standard Model right now.)


commenter:
Sorry, good catch! I really mean to say a prior that we
wouldn't find a falsification of GR in this particular
arena.


commenter:
Thanks, makes much more sense.


commenter:
No aspersions here. I'm keeping the faith, but can anyone
recall what these allude to?

1) Utah has solved the energy crisis on a table top with
commenter:
2) That bump in the collider data is looking pretty odd

3) Remind your child to chelate if the autism acts up

4) Wow those neutrinos are moving so fast

5) Bigotry can stop if we'd go door to door and talk about
commenter:
6) Arsenic can kill but it enables growth for at least one
commenter:
7) This theory will be perfect if we get rid of Λ

In all fairness, this topic is a little different because we
know for sure something big has to happen eventually to
reconcile QM/Gravity.


commenter:
I've had this idea in my mind how Black Holes could be
connected to universe generation. It came about when
I learned that the known universe would be a black hole if
its mass was concentrated in the center, i.e. its size is
about the same as the event horizon for such a mass.

Thinking backwards, obviously the universe at some point
would have been described as a black hole by GR. Then of
course spacetime expansion comes into play, that somehow
makes it into not-a-black hole.

So here is the idea: What if a Big Bang is exactly what
happens when matter falls into itself until the original
spacetime continuum breaks? I.e. the energy of the original
structure forms and gets linked into a new spacetime
continuum - part of it as dark energy that expands the new
spacetime, part of it as normal energy and matter.

Is there anything we know makes my idea impossible? If it
were true, would there be a chance that we could combine our
empirical knowledge of the Big Bang with this new empirical
knowledge of gravitational waves to come up with a testable
unified theory (i.e. Quantum Gravity)?


commenter:
Personally, I would not be surprised if we discover that our
understanding of general relativity is wrong for extreme
values (i.e. very high mass densities). The whole problem of
dark energy and dark matter -which has failed to show up in
any conceivable form so far- also gives reason to doubt the
validity of our current theory of gravitation.

I think we're in a similar situation like at the end of the
19th century, were many physicists thought that everything
that could be discovered already was, apart from some "edge
phenomena" that would need to be resolved somehow using the
current theories. In the end, these edge cases turned out to
be the first hints of some completely new theories that
dramatically improved our understanding of nature. I think
that gravity and quantum mechanics are due for a similar
change, and in the coming decades we might just get the data
that we need to make this change happpen.

I also have difficulties "buying" the current theory of
black hole physics, especially the concepts of an event
horizon and the infinite mass density, as well as the
problems which arise from them (e.g. black hole energy
evaporation through virtual particle generation at the
horizon). And as previous theories of gravitation have
broken down at points of extreme value (high energy, high
speed), I think black holes are a hot candidate for breaking
general relativity.


commenter:
There's plenty of hot dark matter coursing right through you
right now !

Fermi -> Wang Ganchang -> Harrison, Kruse & McGuire took
a while. I wouldn't expect a quick detection of something
with the properties of a WIMP, as I would expect any such
particle to be even harder to detect than a neutrino,
especially if it doesn't feel the weak nuclear force.

I don't know why you think that dark energy has failed to
show up in any conceivable form -- how do you explain the
cosmological redshift without it? Dark energy in its
simplest form is just the cosmological constant, and can be
an inertial effect.

In any case, even if the concordance cosmology is simply
wrong, that does not mean that GR is incorrect as much as we
are wrong about the mechanisms that generate the metric
(Afshordi, one of the authors of the paper at the top, has
proposed non-universal coupling to the single metric of GR),
or alternatively we are wrong about the way we choose and
stitch together metrics (i.e., we're misusing GR in a way
that introduces serious errors at long length scales).

Do you really think there are working scientists who think
that there's nothing more to discover? Conversely, are there
many who deny that the huge preponderance of evidence we
have so far favours the Standard Model and General
Relativity? Even if we "demote" SM and GR to effective field
theories, the effective limit of each is very nearly
everywhere readily accessible, isn't it?

Buying the BH singularity would be, I think, a pretty
extreme position. Every viable post-GR effort I know about
is to some extent focused on abolishing singularities
somehow. (You could alternatively keep them always hidden
and resolve things like BH thermodynamics; if you always
keep information locked up in another region of spacetime --
behind a horizon -- there's no information loss problem to
consider, and you can "cut" singularities out of the
manifold recovering everywhere-smoothness. But black holes
might evaporate completely in the far de Sitter like
future.)

Not buying an event horizon in a system of local physics
with a maximum propagation of local state from one point to
another seems even more extreme. The existence of a maximum
local speed -- whatever it is, it could be much faster than
light -- sets the slope of a nonempty open convex cone of
tangent vectors (a causal cone at each point for the
field-values at that point) which in turn lets us fix
a first order quasilinear system of PDEs admitting
a hyperbolization, and in that you can always find an
observer that sees an event horizon.

The formation of the BH creates a dynamical spacetime with
an acceleration between observers before and after the
collapse, and that alone is sufficient to produce an event
horizon.

Abolishing 'c' (as a general free parameter defined at every
point; the definition can even vary by location in
spacetime) seems a lot harder to swallow than abolishing
event horizons. If you accept 'c', then while Schwarzschild
event horizons is pretty easy (nonzero J or not-always-zero
Q at all physical compact dense objects, for example),
abolishing all event horizons requires a lot of contortions
to avoid immediate conflict with local experiment, much less
astrophysical observation.


commenter:
Dark matter hasn’t been proven to exist. Here is another
hypothesis[1].

[1]
https://www.quantamagazine.org/20161129-verlinde-gravity-dar...


commenter:
>"if random noise is behind the patterns, says Afshordi,
>then the chance of seeing such echoes is about 1 in 270, or
>2.9 sigma. To be sure that they are not noise, such echoes
>will have to be spotted in future black-hole mergers."

We are getting closer and closer... So finally we see
a correct interpretation of a p-value in the media, but the
connection to the following sentence is not clear so I am
not sure the meaning was really understood.

How does spotting more such echos allow us to "be sure they
are not noise", and how does this relate to that 1/270
number?

If the probability of such an observation was 1/1.7 million
assuming a random noise model (rather than 1/270), would
that mean we could "be sure it was not noise"? Shouldn't
that depend on how well the observations could be fit by
alternative models?


commenter:
General relativity makes certain predictions, we now
measured a deviation from those predictions assuming
a specific model of the source of the observation. So more
measurements will help to build up confidence that the
deviations are not just measurement errors.

After that you have to explain those deviations and the two
most obvious options are that either the model of the event
or the theory itself is wrong or at least not accurate
enough to describe the observations. Then you can look for
changes to the model, varying masses or the number of
objects involved, or maybe even look at entirely different
possible source of gravitational waves to explain the
observations.

But if you return with empty hands you will have to take the
option serious that a modification of the theory is
required. For example if you theory only allows a quantity
to decrease monotonically over time but your observations
show oscillations, then you have pretty strong evidence that
your theory requires modifications.


commenter:
Sure, but if every other explanation is even less likely,
random noise is still the best guess.


commenter:
You throw a dice 3 times. It always show 6. How do you know
the dice is loaded, and that it wasn't a fluke? Repeat the
experiment, and see if it starts looking random (pattern
disappears) or if the pattern is strengthened (always saying
6).


commenter:
Also, I couldn't get the original documents at the time, but
you reminded me of this:

>'The simplest assumption about dice as random-number
>generators is that each face is equally likely, and
>therefore the event “five or six” will occur with
>probability 1/3 and the number of successes out of 12 will
>be distributed according to the binomial distribution. When
>the data are compared to this “fair binomial” hypothesis
>using Pearson’s 2 test without any binning, Pearson found
>a p-value of 0.000016, or “the odds are 62,499 to 1 against
>such a system of deviations on a random selection.”'
>https://galton.uchicago.edu/about/docs/2009/2009_dice_zac_la...

The point is you will always find deviations (with extremely
low p-values) if you look hard enough. It is about
collecting data as carefully as possible, and determining
which model fits best, not which fits perfectly.


commenter:
For a rational person, it depends who gave you the dice. It
sounds like you just put a low prior on dice being loaded
since you are so used to getting well made dice from neutral
parties...


commenter:
You can factor in the expected false positive base rate and
the confidence to figure out by how much you should boost
your prior expectation of the theory being correct. "Being
sure" is shorthand for "having a prior very close to 1 or
0".


commenter:
Minor comment from another physicist here, not in this field
but from what my friends from this field say, most people
expected hints of quantum gravity to come specifically from
black holes, so if there is anything new to be learned about
GR's limits, looking at black holes is the right place to
look.


commenter:
Going quickly through the awesomely titled paper [1], they
fit a template to the data and obtain something like 2.9
sigma for their best value, without a obvious way how they
deal with the look elsewhere effect. On the other hand, this
is probably the window on nature that is worst understood,
we understand gravity at solar system field strength and
distances very well, we have great data from particle
physics, but until last year our only evidence for the high
field regime of gravity came from pointing telescopes toward
astronomical objects - and note that telescopes work with
the electro-magnetically, they are using the wrong force.

I think this is exciting, but only the first step. With
this, one can deal with the look elsewhere effect by
pointing to this paper and using their analysis, but
I wouldn't think of this by itself as a hint towards
deviations from general relativity.

[1] Abedi &al. "Echoes from the Abyss: Evidence for
Planck-scale structure at black hole horizons"
https://arxiv.org/abs/1612.00266


commenter:
"The most exciting phrase to hear in science, the one that
heralds new discoveries, is not 'Eureka!' but 'That's
funny...' " -- Isaac Asimov


guard-of-terra

It's weird that they had the idea of firewall just in 2012.
I had this exact idea maybe ten years prior while being
a school student. A fairly obvious one if you think of that
- some photons will orbit the black hole.


commenter:
It's potentially more complicated than that.

Someone on Reddit asked a brilliant question a while back
- what happens to quantum fields at the event horizon?

In QFT, fields are everywhere. But to support a field, you
need a mechanism that allows causal propagation - which is
exactly what isn't allowed across an event horizon.

So at the very least you have a discontinuity where three
and possibly all four fundamental forces stop working, and
which is separate to any hypothetical relativistic
singularity.

Whatever is left is going to be some kind of unimaginably
weird sub-quantum soup.

I don't know if that's the same firewall that was invented
in 2012. But the takeaway is that relativity isn't complete
enough to model black holes. You absolutely need to include
quantum effects - and when you do, things get very strange
indeed.


commenter:
That's a neat way of putting it (at least broadly) in the
first four pargaraphs. Thanks.

I'd add that the event horizon is the boundary below which
the propagators of causality can only move further below the
horizon itself.

The "unimaginably weird sub-quantum" part doesn't follow
from those paragraphs, though, in the region outside the
event horizon, or even a little ways inside. It is however
a fair way of describing the problem of the singularity; the
goal of nearly all quantum gravity research programmes is
keeping the singularity from ever existing, and "weird
microscopic behaviour" is a reasonable way of describing
what that may entail.

I made some comments relevant to your last paragraph
elsewhere in this discussion.


commenter:
In QFT, fields are everywhere.

The fields in quantum field theory are mathematical tools,
they are not physical entities.

But to support a field, you need a mechanism that allows
causal propagation - which is exactly what isn't allowed
across an event horizon.

But that is only a one-way thing - the future light cones of
events inside the event horizon are contained inside the
event horizon but the future light cones of events outside
the event horizon certainly overlap the inside of the black
hole.


commenter:
Can you explain what you mean by

> The fields in quantum field theory are mathematical tools,
> they are not physical entities.

If you mean that the world itself is not the mathematics
then I can accept it (although I might resist, the
philosophical rejection of things like Tegmark's
Mathematical Universe Hypothesis), but if you mean that what
we actually have is a bunch of particles doing one thing or
another, I must object, because it is extremely difficult to
explain nonperturbative phenomena like instantons or
sphaelerons if you have that attitude.


commenter:
Quantum fields have gauge symmetry so they do not have any
definite values, you can assume them to have more or less
any value as long as you are consistent. My views on this
topic are heavily influenced by Nima Arkani-Hamed and here
[1] are 30 seconds from a lecture where he is very explicit
about this. But I am aware that this is not really a topic
with universal agreement, at least this is what it looks to
a non-physicist like me. And looking at your user profile
I am pretty sure you are going to tell me that I am asking
for to much realism.

[1] https://www.youtube.com/watch?v=tnA7bh7dTqY&t=1669


commenter:
> The fields in quantum field theory are mathematical tools,
> they are not physical entities.

Still, they only maintain physical relevance as long as they
are continuous, no? Otherwise you literally have a break in
reality.


commenter:
> a break in reality.

Such as a singularity (e.g. gravitational)? I think in
Physics (just as when analysing functions), the interesting
things happen when you approach such limits.


commenter:
Do you mean that they can not have holes?


commenter:
> A fairly obvious one if you think of that - some photons
> will orbit the black hole.

That some photons would orbit black holes is fairly
well-known. There's an "innermost stable circular orbit"[0]
("photon sphere" for rotating black holes [1]), inside which
stable (circular) orbits do not exist. These are at larger
radii than the event horizon and so would be unrelated to
the firewall proposal.

[0]
https://en.wikipedia.org/wiki/Innermost_stable_circular_orbi...

[1] https://en.wikipedia.org/wiki/Photon_sphere


commenter:
Photons orbit the black hole in the photon sphere which is
located outside of the event horizon, at 1.5 times the
Schwarzschild radius in case of a Schwarzschild black hole.
As far as I know such orbits are also usually not stable.
For a photon to orbit the black hole in the photon sphere it
has to move tangentially, to reach the photon sphere the
photon needs to move with at least some radial component and
a photon can of course not just fire its rockets when
reaching the photon sphere to enter the orbit. The idea of
the firewall is very different from the idea of photons
orbiting a black hole which was studied a long time ago.


david-given

Wouldn't you get orbiting photons simply by having them
emitted from falling bodies, i.e. hot gas?

Any photons emitted in the right direction by incoming
material in the right place would enter an orbit; and given
that hot material emits photons in all directions
continuously, and there's a steady supply of infalling
material, there's going to be a continuous source of
orbiting photons.


commenter:
IANAP so don't take my word for it, but I would assume the
photons would have to be emitted EXACTLY tangentially at
EXACTLY the photon sphere. Just a tiny bit earlier or later
or with a tiny bit of radial momentum and the photon would
eventually escape or fall into the black hole. And a real
black hole is not a perfect Schwarzschild black hole, it
will almost certainly have at least some charge or angular
momentum, surrounding matter will change the metric
somewhat. But I can not tell whether that makes it more or
less likely for a photon to stay in orbit but I tend towards
less likely because this seems to add more possibilities to
randomly push the photon out of its orbit one way or
another.


commenter:
All orbits should 'eventually' decay as more matter comes in
and perturbs the orbit. Stability is a matter of how quickly
it decays, not if it decays.


commenter:
Where photons orbit a black hole is called a Photon Sphere.

https://en.m.wikipedia.org/wiki/Photon_sphere

It's at 1.5 times the radius of the event horizon for
a non-charged, non-rotating black hole. But it's more of
a theoretical than practical construct. You wouldn't expect
to actually find any photons there because the orbit is
unstable and any deviance from a perfect orbit would
accumulate exponentially.


commenter:
Perhaps, then, you should consider that you're
misunderstanding the situation? A firewall is not "orbiting
photons". See
https://en.wikipedia.org/wiki/Firewall_(physics).

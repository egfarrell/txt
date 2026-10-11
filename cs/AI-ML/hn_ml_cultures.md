The Three Cultures of Machine Learning (jhu.edu)

- The Geneticists                 : Use evolutionary principles to have a model organize itself
- The Bayesians                   : Pick good priors and use Bayesian statistics
- The Symbolists                  : Use top-down approaches to modeling cognition, using symbols and hand crafted features
- The Conspirators                : Hinton, Lecun, Bengio et al. End-to-end deep learning without manual feature engineering
- The Swiss School                : Schmidhuber et al. LSTM's as a path to general AI.
- The Russians                    : Use Support Vector Machines and its strong theoretical foundation
- The Competitors                 : Only care about performance and generalization robustness. Not shy to build extremely slow and complex models.
- The Speed Freaks                : Care about fast convergence, simplicity, online learning, ease of use, scalability.
- The Tree Huggers                : Use mostly tree-based models, like Random Forests and Gradient Boosted Decision Trees
- The Compressors                 : View cognition as compression. Compressed sensing, approximate matrix factorization
- The Kitchen- sinkers            : View learning as brute-force computation. Throw lots of feature transforms and random models and kernels at a problem
- The Reinforcement learners      : Look for feedback loops to add to the problem definition. The environment of the model is important.
- The Complexities                : Use methods and approaches from physics, dynamical systems and complexity/information theory.
- The Theorists                   : Will not use a method, if there is no clear theory to explain it
- The Pragmatists                 : Will use an effective method, to show that there needs to be a theory to explain it
- The Cognitive Scientists        : Build machine learning models to better understand (human) cognition
- The Doom-sayers                 : ML Practitioners who worry about the singularity and care about beating human performance
- The Socialists                  : View machine learning as a possible danger to society. Study algorithmic bias.
- The Engineers                   : Worry about implementation, pipe-line jungles, drift, data quality.
- The Combiners                   : Try to use the strengths of different approaches, while eliminating their weaknesses.
- The Pac Learners                : Search for the best hypothesis that is both accurate and computationally tractable.

See also ML models http://www.kdnuggets.com/2015/03/all-machine-learning-models

- It's common for people to learn about ML within one framework
  which becomes there "home framework" through which they attempt
  to filter all machine learning.

- (Have you met people who can only think in terms of kernels?
  Only via Bayes Law? Only via PAC Learning?)

- Explicitly understanding the existence of other frameworks can
  help resolve the confusion.



YeGoblynQueenne 31 minutes ago
    Nice list, has everything and the kitchen sink(ers). Two
    comments:

    a) Inductive Logic Programming (and generally relational
    learning) is ideal for feature discovery and firmly in the
    symbolic camp, so the reliance of the Symbolists on
    hand-crafted features is not an absolute.

    b) PAC learning should go under symbolic techniques, no? In
    fact, so should decision tree learning.

    Also, I think it's obvious you can always unify and divide
    classifications like the above to come up with as many or as
    few "tribes" as you like. The real question is: are there
    really that many people who are wedded to their favourite
    technique, so much so that they won't ever try anything
    different?



YeGoblynQueenne 21 minutes ago

* Estimators for [Baeysian and Deep learning] approaches
    usually have to solve intractable optimization problems.
    Thus, they fall back on approximations and get stuck in
    local maxima, and you don't really know what you're
    getting.
*

    So, with deep nets, how big a problem is getting stuck in
    local optima?

    I mean, my intuition is that it's not magic, you're
    optimising a system of functions so you'd get stuck in local
    optima in the same way you get stuck with a single function.
    Is that generally the case?


argonaut 49 minutes ago
    I don't know why people are criticizing this. I did research
    in ML and while this is obviously reductionist, it does
    accurately reflect one way you might divide AI/ML research
    into 3 broad categories.






asymptotic 1 hour ago

For the deep learning vertex the OP states:

"At the right vertex, we have Breiman's know-nothing
approach—high-capacity models like neural nets, decision
forests, and nonparametrics that will fit anything given
enough data. This is engineering with less science (see
these remarks). Deep learning people cluster here."

The phrase "will fit anything given enough data" is
misleading and not correct about cutting-edge machine
learning methods. "Fit" is a useless term, and you will
instead find people talking about "bias" and "variance".

For any supervised method (you know the intended outputs)
you apply to predict data, there are three sources of error:
bias, variance, and random. Random error is some irreducible
unpredictability that cannot be modeled. Bias occurs from
bad assumptions made by the model itself (e.g. maybe the
model is too simple). Variance is sensitivity to small
changes in the data the algorithm is trained on.

High bias means the model is too simple to capture all the
variations in the data set. High variance means the model is
too overfit on the data at hand and it is not successfully
generalizing to unseen data. In real-world problems there is
a direct tradeoff between bias and variance. Nevertheless
the goal of any supervised learning model is to have both
low bias and low variance.

By splitting off a big (~10-20%) chunk of all data available
into a "test" set, training the model on the remaining
"train" set, then evaluating it on the "test" set, it's
possible to estimate the generalizability of the model on
future "unseen" data by whatever metric you want. By
additionally plotting learning curves one can crudely
estimate whether we have high bias or high variance.

Hence the insinuation that machine learning blindly "fits"
data as much as possible is false. Sophisticated (yet not
difficult) methods both minimize and estimate the
generalizability of the model to future unseen data
(minimizing variance), inevitably at the cost of some notion
of accuracy (increasing bias).

I think the OP's objection is that such ML methods "know
nothing". This is a trivial statement to make. Rather,
I would turn the objection on its head and ask "If our
methods achieve acceptable estimated generalizability on
unseen data, do we need to know anything?". This reminds me
of Alan Turing's arguments about machines passing the Turing
Test vs. "are they really human?".


argonaut 45 minutes ago

While everything you've said is technically true, straight
out of the textbook, I don't really see how it contradicts
what he says.

These high-capacity models (neural nets, decision trees,
boosting) do overfit like crazy and tend to be used as black
boxes without any domain knowledge. The key in his statement
is when he says "given enough data," because having tons of
data is one of the best ways to combat overfitting (given
enough data, variance is negligible). And the fact that we
can measure how much they overfit and take steps to
regularize doesn't change the fact that, for example, deep
learning is really way more of an engineering discipline
than a mathematical or statistical discipline. And these are
not criticisms of those areas at all: those are exciting
areas of research precisely because there are so many
unsolved problems and areas where we are working without
a solid understanding!

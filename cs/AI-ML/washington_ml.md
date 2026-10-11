
uses graphlab

# Real-World Case Studies:
    1. _regression_: predict house prices 
        * Models: Linear regression, Regularisation: Ridge
          (L2), Lasso (L1) 
        * Optimisation Algorithms: Gradient descent,
          Coordinate descent.

    2. _classification_: Sentiment Analysis. eg. Learn
       a decision boundary based on the balance of usage of
       the words 'awful' and 'awesome'
        * Models: Linear Classifiers -  Logistic regression,
          SVMs, perceptron. Non-linear - Kernels, Decision
          Trees.
        * optimisation methods: Stochastic Gradient descent,
          boosting

    3. _clustering_ + Retrieval: label groups of documents 
        * _models_: nearest neighbours, mixtures of
          Gaussians, Latent Dirichlet allocation (LDA)
        * _algorithms_: KD-trees, locality-sensitive hashing
          (LSH), K-means, expectation-maximization (EM)
        * _concepts_: distance metrics, approximation
          algorithms, hashing, sampling algorithms, scaling
          up with _map-reduce_.

    4. _matrix factorisation_ + Dimensionality Reduction:
       recommendation: examine past purchases. Have a square
       matrix with customer versus products.
        * models: collaborative filtering, matrix
          factorisation, PCA
        * algorithms: Coordinate descent, Eigen
          decomposition, SVD

    5. _Deep Learning_ (neural networks): Visual product
       recommendation. Go from an image to a related set of
       images.

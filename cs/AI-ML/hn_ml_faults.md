https://news.ycombinator.com/item?id=12279494
http://www.johnwittenauer.net/machine-learning-exercises-in-python-part-1/

- Often this sort of material seems to be a collection of methods
  and understanding them - which is obviously important to being
  able to use them. 

- However, I feel like the example problems are usually much
  cleaner and simpler than those I've encountered in business. 

- I feel like there's this _missing link_ between learning the
  methods and doing something that actually adds significant
  value for a business using machine learning. Perhaps it's just
  me or my field though.

- I found that usually lots of work involved just transforming or
  examining data in relatively simple ways or using human expert
  decisions as to important threshholds for outliers.

- For example I could run an outlier algorithm on data and either
  the returned outliers were very obvious and could have been
  found using a manual query by knowing the business context, or
  it returned alot of false positive outliers that were useless
  for the business. 

- Other times, we'd have a predictive model that was good for 95%
  of cases but would make our company look ridiculous on
  predictions for the other 5%, so couldn't use it in production
    - and the nature of the data was such that we couldn't use
      the model for only certain value ranges.

- Perhaps it's just the nature of our business (telecoms), and
  these approaches are more useful for others (advertising, stock
  trading, etc). Any experience with business fields where this
  stuff made a sizable impact for something they productionized
  in business they can share?

	
shamino 4 hours ago [-]

    - Chiming in to say that I have the same exact experience :)

    - I work in security, and we use these methods to detect
      anomalies or classify malicious content or URLs. 

    - A silly false positive is embarrassing, even if it happens
      once.

    - Humans always augment our methods, or we have to set
      expectations to the customer that we are trading off
      accuracy for speed. Fast customer support usually helps
      against false positives too.


	
	
tixocloud 19 hours ago [-]

    - I've had similar experience in insurance. Our predictive
      algorithms have been used sparingly and guides our strategy
      but we don't fully trust the actual data. That's how we
      leverage our analysis.

    - For us, small increments does give us sizeable impact. And
      we don't aim for predicting 100% of the cases either. We
      take what we get and see how we can use it.

    - In business, we don't care about accuracy. We care about
      improvement.


	
wodenokoto 21 hours ago [-]

    - While I agree that data munging is very important and very
      difficult, I disagree that it should be part of every
      course teaching any kind of data manipulation.

    - I took a course called data mining at university and it
      largely consisted of munging data.

    - Biased by that one course, I would expect anything called
      "data mining" to contain a lot of practice and theory about
      cleaning data and a machine learning course to focus on
      what to do with the cleaned data.

	
	
leereeves 22 hours ago [-]

    - These are just introductory courses, teaching the theory.

    - Teaching best practices for applying these methods to
      particular fields is probably beyond the expertise of any
      one person. Perhaps there's an opportunity for professors
      or practitioners of each field here?

	
denfromufa 16 hours ago [-]

    - I would argue that if you know the physics behind the
      problem, then even semi-empirical models easily beat
      machine learning. I have seen this consistently on my
      data-sets.

# Intuition behind decision trees

    - Let's imagine playing a game of Twenty Questions. Your
      opponent has secretly chosen a subject, and you must find
      it. At each turn, you ask a _yes-no question_, and your
      opponent must answer truthfully.  How do you find the
      secret in the fewest number of questions?

    - Obviously some questions are better than others. E.g.
      asking "Is it a basketball" as your first question isn't
      fruitful, whereas asking "Is it alive" is more useful.
      Intuitively, we want each question to significantly narrow
      down the space of possible secrets, eventually leading to
      our answer.

    - That is the basic idea behind decision trees.  At each
      point, we consider a set of questions that can _partition_
      our data set.  

    - We choose the question that provides the best split (often
      called maximizing information gain), and again find the
      best questions for the partitions.  We stop once all the
      points we are considering are of the same class (in the
      naive case).  

    - Then classifying is easy. Simply grab a point, and chuck
      him down the tree.  The questions will guide him to his
      appropriate class. 

    - I would say, that at least from a business decision point
      of view, a decision tree is the minimum number of yes/no
      questions that one has to ask, to assess the probability of
      making a correct decision, most of the time

### Example

    - A classic example is diagnosing a heart attack.  The only
      certain way is to admit the patient to hospital for
      testing. But this is time consuming and expensive.

    - Interestingly, cardiologist Lee Goldman (who worked on
      a sub) spend years developing a decision tree to do this
      efficiently. It helped staff determine whether the sub
      needed to resurface to help a chest pain sufferer!

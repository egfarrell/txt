 "how can you afford not to take advantage of an open source
 education?"

- there is a time cost to learning. For example, a Masters degree
  takes two years - is there an estimate of how long it'd take to
  complete this list?

- And since the list is a little old (in terms of the rate at which
  this field is progressing), I would add Apache Spark to the list.

- I watched a video recently about how Scala took over the big data
  world (probably not true) [1], but the presenter made an interesting
  point about how Spark subsumes a lot of different things (streaming,
  machine learning, built in support for SQL) and it is good enough at
  those things even if not the best tool.

- Not surprisingly, that actually makes it a good candidate for
  adoption in the enterprise.

- And then add the recent availability of things like the Databricks
  Community Edition (and similar offerings from competitors), and
  I could also make the case that you can start from a completely
  different entry point - learn Spark first, and then go deeper based
  on what you are interested in.

- But most of all, using a platform like Databricks takes away a major
  pain point - the often painful process of setting things up to start
  your work. [2]

- My last point is not aimed at this particular resource, but just
  a general feeling when I see lists which incur significant time
  costs for the readers.

- I would like to see in these lists a brief statement about some
  popular things which were still omitted and why

- simply because that gives some added confidence about the effort
  that went into the curation process.

[^1] https://www.youtube.com/watch?v=AHB6aJyhDSQ&t=10m30s

[^2] I am not associated in any way with Databricks. Also, obviously
Databricks is a commercial entity, so in some sense you are not just
within the "all free and open" domain.



nl 1 hour ago [-]

> I watched a video recently about how Scala took over the big data
> world

I think you mean Spark? I use Spark heavily at work and know
little Scala (although I do have an engineering team who do
work in it sometimes).

> I would add Apache Spark to the list. I watched a video recently
> about how Scala took over the big data world (probably not true)
> [1], but the presenter made an interesting point about how Spark
> subsumes a lot of different things (streaming, machine learning,
> built in support for SQL) and it is good enough at those things even
> if not the best tool. Not surprisingly, that actually makes it
> a good candidate for adoption in the enterprise.

- So Spark is great, but it isn't the only thing. For example, it does
  let people use Python and R on the same platform pretty easily, and
  with the potential for good performance.

- However, you really need to know what you are doing to get the best
  of it (what a surprise, hey!). For example, Databricks likes to show
  how Dataframes/Datasets give huge performance advantages over the
  _old RDD programming model_.

This is true, but you need to understand why to make sure
you see the same benefits. Basically, there are numerous
primitive functions than have been implemented as native
operations of the Dataframe classes, and if you use them
they perform well. If however you want to use Python UDFs,
then you won't.

reply


Eridrus 1 hour ago [-]

I use Spark at work, it's really good when you need to do
some large scale analysis with your own custom code.
Everything else it does is just ok. It certainly doesn't
subsume ML tools.

reply


thr0waway1239 1 hour ago [-]

- Great to hear from someone who uses Spark at work. I see what you
  mean - subsumed is a bad word choice and I should not have tried to
  paraphrase. What do you feel about the phrase that the presenter
  uses - "One tool that fits everything"? (I am new to data science)

reply


Eridrus 1 hour ago [-]

- I think it's marketing nonsense. Databricks in particular has good
  "proximity to data" IMO, in that once you've figured out how to use
  it with your data sources, you can just fire up a web browser and
  connect to them, and connecting those data sources to your code is
  easy.

- The problem with seeing Spark as your one tool for everything is
  that's only true if it's trivial to integrate your code with Spark.
  Viz tools like Plotly/Bokeh don't integrate well with Databricks'
  notebook, Deep Learning tools are not really supported yet unless
  you're running your own clusters and running special libraries to
  wire thing together.

- I think Spark is a good workhorse for big data; it can do repetitive
  things well at large scale, it's less good when you want to use more
  niche tools since most of the Data Science community is not focussed
  on Spark.

- PySpark exists and will probably be good enough, but only if your
  data fits into memory in a single machine anyway.

- And if you're not dealing with big data, Spark is overkill. It's
  usually simpler to just get a box with more RAM.

reply

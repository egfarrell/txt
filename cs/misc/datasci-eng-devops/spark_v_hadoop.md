Listen in on any conversation about big data, and you'll
hear mention of Hadoop or Apache Spark. Here's a brief look
at how they compare.

1. Firstly they do different things. Hadoop and Apache Spark
   are both big-data frameworks, but they don't really serve
   the same purposes. 

   Hadoop is essentially a _distributed data_
   infrastructure: It distributes massive data collections
   across multiple nodes within a cluster of commodity
   servers, which means you don't need to buy and maintain
   expensive custom hardware. It also indexes and keeps
   track of that data, enabling big-data processing and
   analytics far more effectively than was possible
   previously. 

   Spark, on the other hand, is a _data-processing tool_
   that operates on those distributed data collections; it
   doesn't do distributed storage. 

2. You can use one without the other. Hadoop includes not
   just a storage component, known as the Hadoop Distributed
   File System (HDFS), but also a processing component
   called MapReduce, so you don't need Spark to get your
   processing done. 

   Conversely, you can also use Spark without Hadoop. Spark
   does not come with its own file management system,
   though, so it needs to be integrated with one -- if not
   HDFS, then another cloud-based data platform. Spark was
   designed for Hadoop, however, so many agree they're
   better together.

3. Spark is speedier. Spark is generally a lot faster than
   MapReduce because of the way it processes data. While
   MapReduce operates in steps, Spark operates on the whole
   data set in one fell swoop. "The MapReduce workflow looks
   like this: read data from the cluster, perform an
   operation, write results to the cluster, read updated
   data from the cluster, perform next operation, write next
   results to the cluster, etc.," explained Kirk Borne,
   data scientist at Booz Allen Hamilton. 

   Spark, on the other hand, completes the full data
   analytics operations in-memory and in near real-time:
   "Read data from the cluster, perform all of the requisite
   analytic operations, write results to the cluster, done,"
   Borne said. Spark can be as much as 10 times faster than
   MapReduce for batch processing and up to 100 times faster
   for in-memory analytics, he said.

4. You may not need Spark's speed. MapReduce's processing
   style can be just fine if your data operations and
   reporting requirements are mostly static and you can wait
   for batch-mode processing. 

   But if you need to do analytics on streaming data, like
   from sensors on a factory floor, or have applications
   that require multiple operations, you probably want to go
   with Spark. Most machine-learning algorithms, for
   example, require multiple operations. 

   Common applications for Spark include real-time marketing
   campaigns, online product recommendations, cybersecurity
   analytics and machine log monitoring.

5. Failure recovery: different, but still good. Hadoop is
   naturally resilient to system faults or failures since
   data are written to disk after every operation. 

   Spark has similar built-in resiliency by virtue of the
   fact that its data objects are stored in something called
   resilient distributed datasets distributed across the
   data cluster. "These data objects can be stored in memory
   or on disks, and RDD provides full recovery from faults
   or failures," Borne pointed out.


# Another View

When I was getting started with using Apache Spark, I had
the same question. From everything I heard, it seemed as if
Spark does the same things as Mapreduce but better and
faster. But, as it turns out that’s not the case. A few
resources (linked below) have helped me with that question.

Here are some key differences:

1. _Spark is Faster_: One of the key differences between
   Spark & MR is how they process data. Spark does
   everything in-memory while MR persists the data on the
   disk after every map or reduce jobs. So, by any standard
   Spark can outperform MR quite easily. Spark can be as
   much as 10 times faster than MapReduce for batch
   processing and even upto 100 times faster for in-memory
   analytics.

   But, this speed comes at a cost. Spark needs a lot of
   memory. It keeps the data in memory to cache it and so
   if we have to run Spark alongside some other resource
   heavy application, we could see a significant drop in
   performance. Mapreduce does much better in these
   situations as it removes data immediately when its not
   required.

   So, essentially we can say that Spark is faster than MR
   when it comes to processing the same amount of data
   multiple times rather than unloading and loading new
   data.


2. _Ease Of Use_: Spark is generally agreed to be much
   easier than Mapreduce. It has API’s in Java, Python,
   Scala, and R. So, people can pick a language they are
   familiar with. It also has an interactive REPL where you
   can get instant feedback for the commands.

   MapReduce programs on the hand has to be written in Java
   and it is usually difficult to program. Even simple
   programs like Word Count need a huge program when you
   can do the same in Spark in just a couple of lines. But,
   fortunately we have tools like Hive, Pig trying to make
   MR jobs much easier to write.

   So, Spark is easier to work with than MR in general, but
   you have several tools available for Mapreduce to make
   it easier.

3. _Graph Processing_: Most of the graph processing
   algorithms perform multiple iterations on the data. And,
   since Mapreduce has to read the date from the disk and
   write it back every time, it increases the latency a lot
   and thus significantly slower.

   Spark, on the other hand, comes with a Graph computation
   library GraphX which is really fast. And, here is
   a performance comparison for graph computations for
   Pagerank algorithm.


So, In summary we can conclude that Spark is faster than
Mapreduce in most of the cases except when the memory size
is significantly smaller than the size of the data. 

So, Its possible Spark will replace Mapreduce in the future
and the momentum for this has already started. But rest
assured it is not going to be any time soon.

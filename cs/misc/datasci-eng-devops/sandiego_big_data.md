course 1: big-data-introduction


# distributed file systems (DFS)
    Data sets, or parts of a data set, can be _replicated_
    across the _nodes_ of a distributed file system.

    Since data is already on these nodes, when analysis is
    needed in a _data parallel_ fashion, computation can be
    moved to these nodes.

    Additionally, distributed file systems _replicate_ the
    data between the racks, and also between computers
    distributed across geographical regions.

    Data replication makes the system more _fault tolerant_.

    That means, if some nodes or a rack goes down the same
    data can be found and analyzed. Data replication also
    helps with scaling the access to this data by many
    users.

    Often, if the data is popular, many reader processes
    will want access to it.

    In a highly parallelized replication, each reader can
    get their own node to access and analyze data.

    This increases overall system performance.

    Note that a _problem_ with having such a distributive
    replication is it's hard to _make changes_ to data over
    time.

    However, in most big data systems, the data is written
    once and the updates to data is maintained as additional
    data sets over time.

    In summary, a file system is responsible for the
    organization of long term information storage in
    a computer. When many storage computers are connected
    through the network, we call it a distributed file
    system.

    Distributed file systems provide:

    - data scalability,
    - fault tolerance,
    - high concurrency

    through partitioning and replication of data on many
    nodes.

# commodity clusters
    The Gordon Supercomputer at The San Diego Supercomputer
    Center, has 1,024 compute nodes with 16 cores each
    equalling 16,384 compute cores in total.

    This type of specialized computer is pretty costly
    compared to its most recent cousin, the commodity
    cluster.

    Commodity clusters are _affordable parallel computers_
    with an average number of computing nodes.

    They are not as powerful as traditional parallel
    computers and are often built out of less specialized
    nodes.

    In commodity clusters, the computing nodes are clustered
    in racks connected to each other via a fast network.
    There might be many of such racks in extensible amounts.

    Computing in one or more of these clusters across
    a local area network or the internet is called
    distributed computing. Such architectures enable what we
    call data-parallelism. In data-parallelism many jobs
    that share nothing can work on different data sets or
    parts of a data set.

    This type of parallelism sometimes gets called as job
    level parallelism. But in this specialization, we will
    refer to it as data-parallelism in the context of
    Big-data computing. Large volumes and varieties of big
    data can be analyzed using this mode of parallelism,
    achieving scalability, performance and cost reduction.
    As you can imagine, there are many points of failure
    inside systems.

    A node, or an entire rack can fail at any given time.
    The connectivity of a rack to the network can stop or
    the connections between individual nodes can break.

    It is not practical to restart everything every time, if
    failure happens.

    The ability to recover from such failures is called
    Fault-tolerance. For Fault-tolerance of such systems,
    two neat solutions emerged. Namely, Redundant data
    storage and restart of failed individual parallel jobs.

    We will explain these two solutions next.

    As a summary the commodity clusters are a cost effective
    way of achieving data parallel scalability for big data
    applications. These type of systems have a higher
    potential for partial failures. It is this type of
    distributed computing that pushed for a change towards
    cost effective reliable and Fault-tolerant systems for
    management and analysis of big data.

# programming Models for big data
    We need programming techniques that work on top of
    distributed file systems.

    _MapReduce_ is a big data programming model that
    supports all the requirements of big data modeling. It
    can:

    * model processing _large data_,
    * split complications into different _parallel_ tasks
    * make efficient use of large _commodity clusters_
    * make efficient use of large distributed file systems.
    * It abstracts out the details of
      - parallelzation,
      - fault tolerance,
      - data distribution,
      - monitoring and load balancing.

Hadoop Ecosystem

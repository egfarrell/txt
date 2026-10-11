
https://36chambers.wordpress.com/2017/01/09/lets-build-a-portable-hadoop-cluster-part-1/

### amazon emr:
    use "hadoop" user!
    > ssh -i mypem.pem hadoop@[public ip]

### two main concepts: A "cluster" is:

        1. _HDFS_ - distributed file system 
            - software layer on top of native filesystem
              like ext4 or xfs
            - posix compliant: owner/group for every file.
              Read/write permissions
            - relative paths: assume stars from `/user`
              folder?
            - WORM store (not random reads/writes)
            - files split into "blocks"
            - 1-to-1 connection between block data <-> task

        2. _YARN_ - resource manager

    - HDFS and YARN have many different `daemons` running...
    - Eash `daemon` has its own JVM and is independent of
      other processes

    "node": an individual machine
        - master nodes - global management processes
        - worker nodes - run local data and application processes

### cli session
    <!-- show running jvm processes -->
    jps 

    <!-- first time -->
    <!-- Warning! Deletes any existing data! -->
    hdfs namenode -format

    hdfs dfs -mkdir  /user/hadoop
    hdfs dfs -ls     /user/hadoop

    <!-- "load" into HDFS -->
    hdfs dfs -put    salaries.csv                /user/hadoop

    <!-- "download" out of HDFS -->
    hdfs dfs -get    /user/hadoop/salaries.csv   ~/downloaded.csv

    hdfs dfs -mv    /user/hadoop/current.csv     /user/hadoop/new.csv
    hdfs dfs -du -h  /user/hadoop
    hdfs dfs -cat    /user/hive/warehouse/salaries/salaries.csv | head -10 

### udacity course
    https://discussions.udacity.com/c/standalone-courses/deploying-a-hadoop-cluster

### udacity course
    1. manually: install hadoop on ec2
    2. automatically: Ambari
    3. on demand: Amazon EMR. note: Store data in _S3_
       bucket cos free to transfer to different ec2
       instances

### Pseudo-Distributed Operation
    Hadoop can also be run on a _single-node_ in
    a pseudo-distributed mode where each Hadoop daemon runs
    in a separate Java process.

### hadoop configuration options
    * adjust block size
    * the number of mappers/reducers
    * compress mapper output

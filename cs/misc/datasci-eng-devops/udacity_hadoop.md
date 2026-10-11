
# name-nodes
    - store meta-data (ie. where all the individual blocks of
    data are held on various nodes)

# HDFS
    * hadoop replicates each block of data (64MB) _three_ times!
    * if one block disappears, the name-node re-creates it

# shell commands
    `hadoop fs -ls `
    `hadoop fs -put purchases.txt `
    `hadoop fs -mv purchases.txt  newname.txt`

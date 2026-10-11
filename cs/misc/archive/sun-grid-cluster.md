


# For tutorials on the Sun Grid cluster see:

    http://www.uibk.ac.at/zid/systeme/hpc-systeme/common/tutorials/sge-howto.html
    http://web.njit.edu/topics/HPC/basement/sge/SGE.html
    http://www.cbi.utsa.edu/faq/sge/tutorial


# Example from a script:

The code sample below launches 'sim_eclipses.sh' as
a cluster job.

Explanations:

'qsub' 
    - this program actually SUBMITS a job to the cluster
      QUEUE

'-terse' 
    - Return the job id's that 'qsub' creates.
    - These job id's are sometimes handy to have later in
      a script.

'-hold_jid' 
    - wait and do not run this job 
    - until any jobs with a name matching 'sim$BATCH_NUM' 
    - are finished first

'-v' 
    - Pass a VARIABLE to the script

'-N' 
    - Pass the NAME of the job to the script

'-t' 
    - Tell the script how many cluster TASKS to create (i.e.
      how many sub-jobs to spawn) 

    - e.g. -t 10:15:1
        - will create 5 sub-jobs with task id's of: 
        10, 11, 12, 13, 14, 15

    - e.g. -t 10:16:2
        - will create 4 sub-jobs with task id's of: 
        10, 12, 14, 16

    - e.g. -t {start}:{end}:{step}
        general format to use

'-o' 
    - Tell cluster where to direct OUTPUT messages


# Code Sample:

    # How many cluster jobs should we run?
    JOB_ARRAY="1-$NUM_SIMULATIONS:1"


    # create a name for the cluster job
    BATCH_NAME="sim$BATCH_NUM-sq$GRID_SQUARE"


    job_ids=$(qsub -terse  -hold_jid "sim$BATCH_NUM*"       \
                -v CODE_DIR="$CODE_DIR"                     \
                -v RUN_OUTPUT="$RUN_OUTPUT"                 \
                -v OUTPUT_SQUARE_DIR="$OUTPUT_SQUARE_DIR"   \
                -v EXTRACT_FILE="$EXTRACT_FILE"             \
                -v MAG_FILE="$MAG_FILE"                     \
                -v DATABASE="$DATABASE"                     \
                -v BINARY_TYPE="$BINARY_TYPE"               \
                -N ${BATCH_NAME}                            \
                -t ${JOB_ARRAY}                             \
                -o "$CLUSTER_MSGS"                          \
                sim_eclipses.sh)

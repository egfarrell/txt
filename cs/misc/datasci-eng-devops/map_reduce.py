# mapreduce pseudo code
# inefficient method

def map(doc_id, doc_contents):
    # doc_id:       input key
    # doc_contents: input value (big string!)
    for w in doc_contents:
        emit_intermediate(w, 1)
        # e.g. ("history", 1)
        #      ("otherword", 1)

        # performance tip: every occurrence of "history"
        # emits a *separate* record but you could pre-count
        # all occurrences of "history" in this document and
        # emit a combined version instead: 
        # e.g. ("history", # 4) 

        # later lecture: actually pre-counting all duplicate
        # occurances before sending over to the reducer is
        # called 'combining'. Its a very common occurance.
        # The combiner has the same type signature as
        # a reducer


# magic shuffle phase!: 
# --------------------- 
# The shuffle groups all the words together, and attach
# a list with the number of individual counts 

        # e.g. "history"   ( 1,1,1,1,1,1,1 )
        #      "otherword" ( 1,1,1,1 )


def reduce(word, intermediate_values_iterator):
    # word: intermediate key
    # total: result of mapreduce operation
    total = 0
    for count in intermediate_values_iterator:
        total += count
    emit_final(word, total)

        # e.g. ("history", 7)
        #      ("otherword", 4)


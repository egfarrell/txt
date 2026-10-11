
UCSan Diego Bioinformatics
(note: old long courses at the bottom)

### Links
    - Online Course:                       https://www.coursera.org/specializations/bioinformatics
    - Book:                                https://www.bioinformaticsalgorithms.org/read-the-book
    - Youtube lectures                     https://www.youtube.com/c/bioinfalgorithms/playlists
    - General algorithms & data structures https://www.edx.org/micromasters/ucsandiegox-algorithms-and-data-structures
    - Course solutions                     https://github.com/fuzzthink/seq-genomics
    - pdf vol 1                            $MY_BOOKS/Bio/Bioinformatics/San-Diego-Bio-Algorithms-Vol-1-ed2.pdf
    - pdf vol 2                            $MY_BOOKS/Bio/Bioinformatics/San-Diego-Bio-Algorithms-Vol-2-ed2.pdf

### Contents
    - I   Finding Hidden Messages in DNA           
    - II  Genome Sequencing                        
    - III Comparing Genes, Proteins, and Genomes   
    - IV  Deciphering Molecular Evolution          
    - V   Clustering Biological Data               
    - VI  Finding Mutations in DNA and Proteins    


### I: Finding Hidden Messages in DNA 
    - This course begins by illustrating the power of computing
      in modern biology. Please join us on the frontier to look
      for hidden DNA messages without ever putting on a lab coat.
      After warming up our algorithmic muscles, we will learn how
      randomized algorithms can be used to solve problems in
      bioinformatics.

### II: Genome Sequencing
    - Biologists still cannot read the nucleotides of an entire
      genome or the amino acids of an antibiotic as you would
      read a book from beginning to end. However, they can read
      short pieces of DNA and weigh small antibiotic fragments.
      In this course, we will see how graph theory and brute
      force algorithms can be used to reconstruct genomes and
      antibiotics.

### III: Comparing Genes, Proteins, and Genomes  
    - After sequencing genomes, we would like to compare them. We
      will see that dynamic programming is a powerful algorithmic
      tool when we compare two genes or two proteins. When we
      "zoom out" to compare entire genomes, we will employ
      combinatorial algorithms.

### IV: Deciphering Molecular Evolution 
    - We will see how evolutionary trees resolve quandaries from
      finding the origins of deadly viruses to locating the
      birthplace of modern humans. We will also use methods from
      computational proteomics to test whether we can reconstruct
      Tyrannosaurus rex proteins and prove that birds have
      evolved from dinosaurs.

### V: Clustering Biological Data 
    - How do we infer which genes orchestrate various processes
      in the cell? How did humans migrate out of Africa and
      spread around the world? In this class, we will see that
      these two seemingly different questions can be addressed
      using similar algorithmic and machine learning techniques
      arising from the general problem of dividing data points
      into distinct clusters.

### VI: Finding Mutations in DNA and Proteins 
    - We will compare DNA from an individual against a reference
      human genome to find potentially disease-causing mutations.
      We will also learn how to identify the function of
      a protein even if it has been affected by so many mutations
      compared to similar proteins with known functions that it
      has become barely recognizable. 



# Old Course: Bioinformatics Algorithms (Part 1) 
------------------------------------------------ 
https://class.coursera.org/bioinformatics-001    

### Week 1: Where Does DNA Replication Begin? 
    > (Algorithmic Warmup)
    1. Detailed Topics:
        - Introduction to DNA Replication
        - Hidden Messages in the Replication Origin
        - Some Hidden Messages are More Surprising than Others
        - An Explosion of Hidden Messages
        - The Simplest Way to Replicate DNA
        - Asymmetry of Replication
        - Peculiar Statistics of the Forward and Reverse Half-Strands
        - Some Hidden Messages Are More Elusive than Others
        - A Final Attempt at Finding DnaA Boxes in E.Coli
        - Epilogue: Complications in _oriC_ Predictions
        - Final Challenge: Find DnaA boxes in _Salmonella enterica_

    2. Open Problems
        - Multiple Replication Origins in a Bacterial Genome
        - Finding Replication Origins in Draft Bacterial Genomes
        - Finding Replication Origins in Archaea
        - Finding Replication Origins in Yeast
        - Computing Exact Probabilities of Patterns in a String and the Overlapping Words Paradox

    3. Detours
        - Big-O Notation
        - Probabilities of Patterns in a String
        - The Most Beautiful Experiment in Biology
        - Chemical Basis for Directionality of DNA Strands
        - The Overlapping Words Paradox


### Week 2: How Do We Sequence Antibiotics? 
    > (Brute Force Algorithms)
    1. Detailed Topics:
        - How Do Bacteria Make Antibiotics?
        - The Discovery of Antibiotics
        - Dodging the Central Dogma
        - Sequencing Antibiotics by Shattering Them Into Pieces
        - A Brute Force Algorithm for Cyclopeptide Sequencing
        - A Faster Algorithm for Cyclopeptide Sequencing
        - How Fast Is This Algorithm?
        - Adapting Cyclopeptide Sequencing for Spectra with Errors
        - From 20 to More than 100 Amino Acids
        - The Spectral Convolution Saves the Day
        - Epilogue: From Simulated to Real Spectra
        - Final Challenge: Sequence a Peptide from a Real Spectrum

    2. Open Problems
        - Beltway and Turnpike Problems
        - Sequencing Standard Subpeptides
        - Sequencing Cyclic Peptides in Primates
        - Detours
        - Gause and Lysenkoism
        - Discovery of Codons
        - Quorum Sensing
        - Molecular Mass
        - Selenocysteine and Pyrrolysine
        - A Pseudo-polynomial Algorithm for the Turnpike Problem


### Week 3: Which DNA Patterns Act As Cellular Clocks? 
    > (Greedy and Randomized Algorithms)
    1. Detailed Topics:
        *  Do We Have a "Clock Gene"?
        *  Motif Finding Is More Difficult Than You Think
        *  Implanted Motif Problem
        *  Scoring Motifs
        *  From the Motif Finding Problem to the Median String Problem
        *  Greedy Motif Search
        *  Motif Finding Meets Oliver Cromwell
        *  Randomized Motif Search
        *  How Can a Randomized Algorithm Perform So Well?
        *  Gibbs Sampling
        *  Gibbs Sampler in Action
        *  Complications in Motif Finding
        *  Epilogue: How Does Tuberculosis Hibernate to Hide from Antibiotics?
        *  Challenge Problem: Identify the DosR Motif

    2. Detours
        * Gene Expression
        * DNA Arrays
        * Buffon's Needle (The First Randomized Algorithm)


### Week 4-5: How Do We Assemble Genomes? 
    > (Graph Algorithms)
    1. Detailed Topics:
        - Exploding Newspapers
        - Genome Assembly Is More Difficult Than You Think
        - The String Reconstruction Problem
        - String Reconstruction As a Walk Through the Overlap Graph
        - Another Graph...
        - ...Another Walk
        - Seven Bridges of Konigsberg
        - Eulerian Cycles and Balanced Graphs
        - Euler's Theorem
        - Universal String Problem
        - From Euler's Algorithm to an Algorithm for Finding Eulerian Cycles
        - Assembling Read-Pairs
        - Epilogue: De Bruijn Graphs Face the Harsh Realities of Assembly
        - Challenge Problem: Assembling a Real Genome

    2. Detours
        - A Short History of Read Generation Technologies
        - Repeats in the Human Genome
        - Graphs
        - Icosian Game
        - Tractable versus Intractable Problems
        - Leonhard Euler
        - Seven Bridges of Kaliningrad
        - Inferring Multiplicities of Edges in de Bruijn Graphs


### Weeks 6-7: How Do We Compare Biological Sequences? 
    > (Dynamic Programming Algorithms)
    1. Detailed Topics:
        - Cracking the Non-Ribosomal Code
        - What is Sequence Alignment?
        - The Manhattan Tourist Problem
        - Sequence Alignment is the Manhattan Tourist Problem in Disguise
        - The Change Problem
        - The Manhattan Tourist Problem Revisited
        - From Manhattan to an Arbitrary DAG
        - Backtracking in the Alignment Graph
        - Scoring Alignments
        - Local Versus Global Sequence Alignment
        - The Myriad Faces of Sequence Alignment
        - Penalizing Insertions and Deletions in Sequence Alignment
        - Space-Efficient Sequence Alignment
        - Epilogue: Multiple Sequence Alignment
        - Challenge Problem: Reconstructing the Non-Ribosomal Code

    2. Detours
        - Non-Ribosomal Code
        - Topological Orderings in Graphs
        - PAM Scoring Matrices
        - Divide-and-Conquer Algorithms
        - Multiple Scoring Alignment


### Week 8: Optional 
    - Holiday Break 


### Week 9: Are There Fragile Regions in the Human Genome? 
    > (Combinatorial Algorithms)
    1. Detailed Topics:
        - Of Mice and Men
        - The Random Breakage Model of Chromosome Evolution
        - Modeling Chromosomes by Signed Permutations
        - Reversal Distance
        - Sorting by Reversals: Greed is Good But Not Great
        - Breakpoints
        - Rearrangements in Tumor Genomes
        - From Unichromosomal to Multichromsomal Genomes
        - Two-Breaks
        - Breakpoint Graphs
        - Rearrangement Hotspots in the Human Genome
        - Epilogue: Constructing Synteny Blocks
        - Challenge Problem: Compute the 2-Break Distance Between the Human and Mouse X Chromosomes


### Weeks 10-11: How Do We Locate Disease-Causing Mutations? 
    > (Combinatorial Pattern Matching)
    1. Detailed Topics:
        - Multiple Pattern Matching
        - Preprocessing Patterns into a Trie
        - Preprocessing the Genome Instead
        - Suffix Trees
        - Suffix Arrays
        - The Burrows-Wheeler Transform
        - Inverting Burrows-Wheeler
        - The First-Last Property of Burrows-Wheeler
        - Pattern Matching with the Burrows-Wheeler Transform
        - Speeding up Burrows-Wheeler Pattern Matching
        - Where are the Matched Patterns?
        - Burrows and Wheeler Set Up Checkpoints
        - Epilogue: Mismatch-Tolerant Read Mapping
        - Final Challenge: Read mapping in Mycoplasma pneumoniae

    2. Detours
        - The Reference Human Genome
        - Rearrangements, Insertions, and Deletions in Human Genomes
        - Aho-Corasick Algorithm
        - Linear-Time Construction of a Suffix Tree
        - Linear-Time Algorithm for Constructing Suffix Arrays
        - Preorder Traversals



# Old Course: Bioinformatics Algorithms (Part 2) 
------------------------------------------------ 
https://class.coursera.org/bioinformatics2-001


### Weeks 1-3: How Do We Locate Disease-Causing Mutations? 
    > (Combinatorial Pattern Matching)
    - What causes Ohdo syndrome?
    - Multiple pattern matching
    - Preprocessing patterns into a trie
    - Preprocessing the genome instead
    - Suffix trees
    - Suffix arrays
    - The Burrows-Wheeler transform
    - Inverting Burrows-Wheeler
    - Pattern matching with the Burrows-Wheeler transform
    - Speeding up Burrows-Wheeler pattern matching
    - Where are the matched patterns?
    - Burrows and Wheeler set up checkpoints
    - Epilogue: mismatch-tolerant read mapping


### Weeks 4-6: Which Animal Gave Us SARS? 
    > (Evolutionary Tree Reconstruction)
    - The Fastest Outbreak
    - Transforming Distance Matrices into Evolutionary Trees
    - Toward An Algorithm for Distance-Based Phylogeny Construction
    - Additive Phylogeny
    - Using Least Squares to Construct Approximate Distance-Based Phylogenies
    - Ultrametric Evolutionary Trees
    - The Neighbor-Joining Algorithm
    - Character-Based Tree Reconstruction
    - The Small Parsimony Problem
    - The Large Parsimony Problem
    - Epilogue: Evolutionary Trees Fight Crime


### Weeks 7-8: Why Is Yeast Such a Good Wine Brewer?  
    > (Clustering Algorithms)

### Weeks 9-10:  Why Do We Still Not Have an HIV Vaccine? 
    > (Hidden Markov Models)

### Weeks 11-12: Was T. rex Just a Big Chicken?  
    > (Computational Proteomics)

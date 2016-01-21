#!/bin/bash

NT_BLAST_DB=/media/THING1/local/genomeIndexes/blast_nt/nt

while read line
do
    echo $line
    OUTPUT_FILE=blasted_$(basename $line)
    OUTPUT_FILE=${OUTPUT_FILE%.*}.out
    blastn -query $line -evalue 1e-5 -outfmt 7 -db $NT_BLAST_DB -out $OUTPUT_FILE -num_threads 8 -max_target_seqs 100
done < sequences.inp

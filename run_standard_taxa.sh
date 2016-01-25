#!/bin/bash

while read line
do
    OUTPUT_FILE=std_taxa_$(basename $line)
    OUTPUT_FILE=${OUTPUT_FILE%.*}.txt
    echo $OUTPUT_FILE
    Rscript split_standard_taxa.R ${line}/Standard_Taxonomy.txt $OUTPUT_FILE
done < $1

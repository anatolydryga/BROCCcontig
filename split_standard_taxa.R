library(qiimer)
library(dplyr)
source('utils.R')

# Standard_Taxonomy.txt should be used
input_file <- commandArgs(trailingOnly=TRUE)[1]
output_file <- commandArgs(trailingOnly=TRUE)[2]

input_taxa <- read.delim(input_file, header=FALSE, stringsAsFactors = FALSE)
standard_taxa <- split_assignments(input_taxa$V2, split=";")
seq_taxa <- data.frame(seqName=input_taxa$V1, standard_taxa)
write.table(seq_taxa, file=output_file, quote=FALSE, sep='\t', col.names = NA)


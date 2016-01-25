no_hits <- c( "No hits found in database", 
    "All BLAST hits were filtered for low quality.", 
    "Abundance of low coverage hits: possible chimera"
)

keep_assingments_only <- function(seq_taxa) {
    filter(input_taxa, ! V2 %in% no_hits)
}
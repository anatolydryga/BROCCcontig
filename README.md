# BROCC for contigs
use of BROCC for long PacBio contigs for taxonomy annotation.

# BLAST hits

To generate blast output run:
```
./run_blast.sh sequence_files.txt > blast_files.txt
```
That script reads `sequence_files.txt` with list of fasta files to blast,
run blast and saves names of created files in `blast_files.txt`.

# Taxonomy annotation with BROCC

Once blast hits are generated we can run BROCC with:
```
./run_brocc.py sequence_blast.txt > brocc_files.txt 
```
Note that we need to specify `--min_species_id`
and `--min_genus_id`, at present they are arbitrary set to
60 and 40 % respectively(that might need optimization).

`sequence_blast.txt` has 2 columns: sequence file name and blast file name,
we can create this file with:
```
paste sequence_files.txt blast_files.txt > sequence_blast_files.txt
```

# Standard Taxonomy Ranks

We can parse output of BROCC and extract standard taxonomy 
ranks:
```
    Rscipt split_standard_taxa.R BROCC_Bushman_Phage_88014_polished_assembly/Standard_Taxonomy.txt output.tsv
```
That creates `output.tsv` with ""seqName", "Kingdom" "Phylum"  "Class"
"Order"   "Family"  "Genus"   "Species" columns.

We can generate standard ranks with:
```
./run_standard_taxa.sh brocc_files.txt > std_ranks_files.txt
```


# RESULTS 
Results are in `/media/THING1/dryga/BROCCcontig`

* BLAST hits starts with `blasted_`
* BROCC output is in folders that starts with `BROCC_`
* taxonomic rank files starts with `std_taxa_`

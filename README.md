# BROCC for contigs
use of BROCC for long PacBio contigs for taxonomy annotation.

# BLAST hits

To generate blast output run:
```
./run_blast.sh
```
That script reads `sequences.inp` with list of fasta files to blast.

# Taxonomy annotation with BROCC

Once blast hits are geenrated we can run BROCC with:
```
./run_brocc.py
```
Note that we need to specify `--min_species_id`
and `--min_genus_id`, at present they are arbitrary set to
60 and 40 % respectively(that might need optimization).

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
run_standard_taxa.py ...
```


# RESULTS 
Results are in `/media/THING1/dryga/BROCCcontig`

* BLAST hits starts with `blasted_`
* BROCC output is in folders that starts with `BROCC_`

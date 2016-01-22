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


# RESULTS 
Results are in `/media/THING1/dryga/BROCCcontig`

* BLAST hits starts with `blasted_`
* BROCC output is in folders that starts with `BROCC_`

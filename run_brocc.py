#!/usr/bin/python
import os
from subprocess import call

for sequence_file in open('sequences.inp'):
    print sequence_file
    sequence_file = sequence_file.strip()
    seq_basename = os.path.splitext(os.path.basename(sequence_file))[0]
    blast_file = "blasted_" + seq_basename + ".out"
    output_dir = "BROCC_" + seq_basename
    #brocc.py -i <SEQUENCES (FASTA FORMAT)> -b <BLAST RESULTS> -o <OUTPUT DIRECTORY>
    call(["brocc.py", "-i", sequence_file, "-b", blast_file, "-o", output_dir, "--min_species_id=60", "--min_genus_id=40" ]) 

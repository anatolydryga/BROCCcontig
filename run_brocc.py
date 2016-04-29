#!/usr/bin/python
import os
import sys
from subprocess import call

for line in open(sys.argv[1]):
    sequence_file, blast_file = line.strip().split()
    seq_basename = os.path.splitext(os.path.basename(sequence_file))[0]
    output_dir = "BROCC_" + seq_basename
    print output_dir
    #brocc.py -i <SEQUENCES (FASTA FORMAT)> -b <BLAST RESULTS> -o <OUTPUT DIRECTORY>
    call(["brocc.py", "-i", sequence_file, "-b", blast_file, "-o", output_dir, "--min_cover=0.2", "--min_id=20", "--min_species_id=60", "--min_genus_id=40" ]) 

# A truly silly script that takes a fasta file of a small genome with a single sequence as input as well as two integers, the start and end coordinates, and outputs a file containing just the sequence region.  Note: only use this with small genomes like viruses.  Use more memory efficient scripts for eukaryotic genomes.
# 2018.04.18
# A. Black P.

# Usage: python extractSeqRegion.py infile.fasta startCoord endCoord outfile.fasta

import sys

infile = sys.argv[1]
startCoord = int(sys.argv[2])
endCoord = int(sys.argv[3])
outfile = open(sys.argv[4], 'w')

seq = ''

for newString in open(infile):
    if newString[0] == '>':
        outfile.write(newString + '_' + 'coord' + str(startCoord) + '_' + str(endCoord) + '\n')
    else:
        seq += newString
outfile.write(seq[startCoord:endCoord] + '\n')

outfile.close()

print 'Finished!'

# A silly script to convert fastq files to fasta
# 2018.09.27
# A. Black P.

# Usage: python convertFastqToFasta.py infile.fastq outfile.fasta

import sys

infile = sys.argv[1]
outfile = open(sys.argv[2], 'w')

counter = 1

for newString in open(infile):
    if counter == 1:
        outfile.write(newString.replace('@','>'))
        counter = 2
    elif counter == 2:
        outfile.write(newString)
        counter = 3
    elif counter == 3:
        counter = 4
    elif counter == 4:
        counter = 1
    else:
        print 'This should never print!'

outfile.close()

print 'Finished!'

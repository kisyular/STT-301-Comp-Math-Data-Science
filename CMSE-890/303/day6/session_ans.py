# 1(a). What is the value of the expression 2 * (3 + 4) in Python?
print( 2 * (3 + 4))

# 1(b). What happens when you remove the parentheses?
print( 2 * 3 + 4)

# 2(a). What is the square of 128 using Python?
print (pow(128, 2))

# 2(b). What is the square root of 128?
import math
print(math.sqrt (128))

# 3. What is the type of the result of the expression 1 + 2.0 + 3?
print ( 1 + 2.0 + 3)
print(type ( 1 + 2.0 + 3))  # Type should be double

# 4. How could you truncate and round the number 6.62690876557 to three decimal places?
print ("%1.3f" % 6.62690876557)

# 5. How can you convert 4 from an integer to a floating point number?
print( float(4))

# 6(a). Copy DNA Sequence
dna_seq = "CCCTTTTGTGACCTTCCAGGACCTTCTCAACCAATATCACCATCCAAAGCCTTTTTAACC\
TTTCGGGACCCATCCAACCACAACCACCCCATGCATATAGGATCTATAGGACCCCTTCCA\
ACCCAACCCAACCATCCCACACCTCTTTGACCTTCCAGGACCTCCGCACCCCTCCCCTTT\
GTGACCTTCCAGGACCTTCCCAACCAATTTCATCCCCCCATGCCTCTTTCACTATTCAGG"
print(dna_seq)

# 6. Print out only the first nucleotides.
print ( dna_seq[0])

# 6(c). Print out the last three nucleotides
print( dna_seq[-3:])

# 7. Take the DNA sequence from #6 and print out its length.
print( len(dna_seq))

# 8. Take the DNA sequence and replace all the ’T's with ‘U’s. Save it to the same variable name.
dna_seq = dna_seq.replace("T", "U")
print( dna_seq)

# 9. Take the DNA sequence and determine how many times the motif ‘CCCC’ is present. You will need to look up the function to do this.
print (dna_seq.count("CCCC"))

# 10. Take the DNA sequence and determine how to print out the first instance of the motif as well as the the five nucleotides before and the five nucleotides after it
c4_indx = dna_seq.find("CCCC")
print( c4_indx)

# first nucleotides before
print ( dna_seq[c4_indx -5 : c4_indx + 1])

# five nucleotides after
print ( dna_seq[c4_indx + 4 : c4_indx + (4 + 6)])

# 11. Take the character string “Genome, Chromosome, Position, Reference, Alternate, Score”. Ssplit the string so you have a list of items
word_str = "Genome, Chromosome, Position, Reference, Alternate, Score"
print(word_str)
wrd_lst = []
for item in word_str.split():
    wrd_lst.append(item.replace(",", ""))
print(wrd_lst)

print("Hello World")

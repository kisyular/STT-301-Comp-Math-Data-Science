# Recitation: Session 4: Scripts, Control Structures, and Functions
# 2018.01.22
# A. Black P.

# First write the function to map codons to amino acids

codon_to_aminoacid <- function(codon) {
  return(switch(EXPR = codon,"TTT"="F","TTC"="F","TTA"="L","TTG"="L","CTT"="L","CTC"="L","CTA"="L","CTG"="L","ATT"="I","ATC"="I","ATA"="I","ATG"="M","GTT"="V","GTC"="V","GTA"="V","GTG"="V","TCT"="S","TCC"="S","TCA"="S","TCG"="S","CCT"="P","CCC"="P","CCA"="P","CCG"="P","ACT"="T","ACC"="T","ACA"="T","ACG"="T","GCT"="A","GCC"="A","GCA"="A","GCG"="A","TAT"="Y","TAC"="Y","TAA"="STOP","TAG"="STOP","CAT"="H","CAC"="H","CAA"="Q","CAG"="Q","AAT"="N","AAC"="N","AAA"="K","AAG"="K","GAT"="D","GAC"="D","GAA"="D","GAG"="E","TGT"="C","TGC"="C","TGA"="STOP","TGG"="W","CGT"="R","CGC"="R","CGA"="R","CGG"="R","AGT"="S","AGC"="S","AGA"="R","AGG"="R","GGT"="G","GGC"="G","GGA"="G","GGG"="G"))
}

# Next write the function to loop through a string of codons and return a string of AAs

translate_dna <- function(dna) {
  # check if dna length is multiple of 3
  aa <- ""
  if(nchar(dna) %% 3 == 0) {
    # write loop to get substrings or codons
    for(index in seq(from=1, to=nchar(dna), by=3)) {
      # call function to convert codonToAA
      # append new AA to growing chain
#      cat(index, substr(dna, index, index+2), "\n")
      aa <- paste0(aa, codon_to_aminoacid(substr(dna, index, index+2)))
#      cat(aa, "\n")
    } 
    # return protein
    return(aa)
  } else {
      cat("This dna sequence length is not a multiple of 3.")
  return("")
  }
}

# Write code to pass a gene into translateDna

gene1 <- "TTATTC"
protein1 <- translate_dna(gene1)
protein1
gene2 <- "ATGCTTTTTGTGTCACCCGCCTATCACAACAAAGATGAATGTTGGCGGAGTAGGGGGTAG"
protein2 <- translate_dna(gene2)
protein2
gene3 <- "ATGGGAAGACGACGCTGGTGCGAATTAA"
protein3 <- translate_dna(gene3)
protein3

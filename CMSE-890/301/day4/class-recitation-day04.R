
# In-class-assignment-day-4
# Working with functions
# Created on Wednesday 12th Sep 2018
# Created by Rellika K


codon_to_aminoacid <- function(codon){
  return (switch(EXPR = codon, "TTT"="F", "TTC"="F", "TTA"="L", "TTG"="L",
         "TCT"="S", "TCA"="S", "TCG"="S", "TCC"="S",
         "TAT"="Y", "TAA"="B", "TAG"="B", "TAC"="Y",
         "TGT"="C", "TGA"="B", "TGG"="W", "TGC"="C",
         "CCT"="P", "CCA"="P", "CCG"="P", "CCC"="P",
         "CTT"="C", "CTA"="C", "CTG"="C", "CTC"="C",
         "CAT"="H", "CAA"="Q", "CAG"="Q", "CAC"="H",
         "CGT"="R", "CGA"="R", "CGG"="R", "CGC"="R",
         "GCT"="A", "GCA"="A", "GCG"="A", "GCC"="A",
         "GAT"="D", "GAA"="E", "GAG"="E", "GAC"="D",
         "GTT"="V", "GTA"="V", "GTG"="V", "GTC"="V",
         "GGT"="G", "GGA"="G", "GGG"="G", "GGC"="G",
         "AGT"="S", "AGA"="R", "AGG"="R", "AGC"="S",
         "ACT"="T", "ACA"="T", "ACG"="T", "ACC"="T",
         "ATT"="I", "ATA"="I", "ATG"="M", "ATC"="I",
         "AAT"="N", "AAA"="K", "AAG"="K", "AAC"="N"
         ))
}

translate_dna <- function(dna){
  
# check if dna length is multiple of 3
  aaa <- ""
  if(nchar(dna)%%3 ==0){
    
    # write loop to get substring or codons
    for (index in seq(from=1, to=nchar(dna), by=3)) {
      # call function to convert codonToAA
      # Append new AA to growing chain
      # cat (index, substr( dna, index, index+2), "\n)
      aaa <- paste0(aaa, codon_to_aminoacid(substr(dna, index, index+2)))
      paste(aaa)
    }
    # return protein
    return(aaa)
  }else{
    cat("This dna sequence is not multiple of 3")
    return("")
  }
}
translate_dna("ATGCTTTTTGTGTCACCCGCCTATCACAACAAAGATGAATGTTGGCGGAGTAGGGGGTAG")

translate_dna("ATGGGAAGACGACGCTGGTGCGAATTAA")

#Recitation 2 Answers
# 2018.01.17

# 1.
value1 <- c(9, 9, 7, 3, 6, 7, 9, 6, 3, 6, 6, 7, 1, 9, 1)
value1[value1==6]
# or
value1==6

value1[value1>=6]
# or 
value1>=6

value1[value1<6+2]
# or 
value1<6+2

value1[value1!=6]
# or 
value1!=6

# 2. 
value2vector <- value1[4:length(value1)]
value2matrix <- array(value2vector, dim = c(2,2,3))
value2matrix[value2matrix<(6/2+4)]
# or 
value2matrix<6/2+4

value2matrix <- value2matrix + 2
value2matrix[value2matrix<(6/2+4)]
# or 
value2matrix<6/2+4

# 3.
dna <- paste("ATGCCCGTTTATAT","    GGCAAATATA","         TATAT", sep = "\n")
cat(dna)

# 4.
num1 <- 4
num2 <- 0.75
cat("The result of multiplying", num1, "by", num2, "is", num1*num2, ".")

# 5.
value5 <- "AAGGCCTTAGGCGGTTTCC"
substring(value5, 9, 15)
substring(value5, 9, 15) <- "AGGAGGT"
value5

# 6.
value6 <- factor(x=c("April", "January", "December", "September", "November", "July", "July", "June"), levels = c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December") )
value6

# 7.
value7 <- list(seq(from=-4, to=4, length.out = 20), matrix(c("F","T","T","T","F","T","T","F","F"), nrow=3, ncol=3), c("Pro","Asp"), factor(c("LOW","MED","LOW","MED","MED","HIGH")))
value7[[2]][2:1,2:3]
value7 <- sub("Pro","P",value7)
value7
value7 <- sub("Asp","D", value7)
value7
value7
value7[[1]][value7[[1]]>1]

# 8.
Professor <- c("Stanislaus", "Francis", "Stephen", "Roger")
Gender <- factor(x=c("M","F","M","M"), levels = c("M","F"))
Rank <- factor(x=c("Associate","Associate","Assistant","Full"), levels=c("Assistant", "Associate","Full"))
value8 <- data.frame(cbind(Professor, Gender, Rank))
value8
Age <- c(41, 43, 15, 1600)
value8 <- cbind(value8, Age)
value8[value8$Rank == "3" & value8$Gender == "1", c(1,4)]

# 9.
datasets::chickwts[1:13,]

# 10.
chickenResistance <- read.csv("Documents/MsuWork/CMSE/2018Spring_CMSE890Sec301/20170912_chickenResistance.txt", strip.white = TRUE, col.names = c("Wingband","Subspecies","Gender","Predicted","Actual"))
cr_WLH_F <- chickenResistance[chickenResistance$Subspecies=="WLH" & chickenResistance$Gender=="F",]

# 11.
write.csv(x = cr_WLH_F, file = "Documents/MsuWork/CMSE/2018Spring_CMSE890Sec301/20180117_chickenResistance_WLH_F.csv")

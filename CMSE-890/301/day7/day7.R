# in class day 7

require(tidyverse)

# 1. Use readr to load the files 20170926_tidy_table1.csv and 20170926_tidy_table2.csv.
table1 <- read_csv("20170926_tidy_table1.csv", na="?")
table2 <- read_csv("20170926_tidy_table2.csv", na="?")

table1
table2

str(parse_logical(c("T", "F", "T", "T", "F", "T")))
parse_number(c("$1000", "25%", "ENSEMBLE2000"))
parse_double(1.25, locale = locale(decimal_mark = "."))
# x %>% gather("col1", "col2", key = "the new column", value = "new col2 values")


# 2. Figure out how to combine up the data into a tidy table.
table2 =spread(table2, key = type, value = count)
left_join(table1, table2)


# 3. Read in "20170926_tidy_table1". Figure out how to how to put the ref and alt nucleotides in separate columns.
snps1 <- read_csv("20170926_tidy_table1.csv", na="?")
snps1
snps1_separate <- snps1 %>% separate(RefAlt, into = c("Ref", "Alt"), sep=1)
snps1_separate


# 4. Figure out how to standardize the chromosome names.
# I did have idea what to do here


# 5. What are the most significant snps?


# 6. Write out the tibble with the top three most significant snps to a new csv file.
# I did not know what most significant snps meant so I wrote the whole separated nucleotide variable
write_csv(snps1_separate, "separate_snsp1_table.csv")

# 7. Use readr to load the files 20170926_diffGene_Run1.csv, 20170926_diffGene_Run2.csv, 20170926_diffGene_Run3.csv, 20170926_diffGene_genes.csv.
run1 <- read_csv("20170926_diffGene_Run1.csv", na="?")
run2 <- read_csv("20170926_diffGene_Run2.csv", na="?", skip = 1, col_names = "Gene")
run3 <- read_csv("20170926_diffGene_Run3.csv", na="?", col_names = c("Gene", "Value"))
genes <- read_csv("20170926_diffGene_genes.csv", na="?")
run1
run2
run3
genes



# 8. Figure out how to put all the runs into a single tibble.
run1_genes <- run1 %>% left_join(genes, by="Gene")
run1_genes
run1_run3 <- run1_genes %>% full_join(run3, by= c("Gene", "Value"))
run1_run3
full_run <- run1_run3 %>% full_join(run2, by= c("Gene"))
full_run
# What genes are present in all three runs?

# 10. What pathways are the highest and lowest value genes in?






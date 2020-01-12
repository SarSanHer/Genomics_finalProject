##DESeq2 analysis

#R tutorial for Informatics for RNA-sequence Analysis 

#######################
# Loading Data into R #
#######################


counts = read.table("counts.txt", header=T, row.names=1) # Load the raw counts table
colnames = c("High",	"High",	"Normal",	"Normal") # names for column names

head(counts) 
my.design <- data.frame(row.names = colnames( counts ),
                        group = c("High",	"High",	"Normal",	"Normal")
) # our experiment design for DESeq2 analysis

my.design$group2 <- as.factor(paste(my.design$Time,sep="_"))



#################
# Running edgeR #
#################

#BiocManager::install('DESeq2')
library(DESeq2) # Load the DESeq2 package

#import data matrix from NtcA results to generate DeSeqDataSet
dds <- DESeqDataSetFromMatrix(countData = counts, colData = my.design, design = ~ group + group:group)


#DEF analysis
dds <- DESeq(dds) #adding metadata to the matrix
resultsNames(dds)
res <- results(dds, contrast=c("group","High","Normal"))
res

res = na.omit (res) 

##Histogram of p-values from the call to nbinomTest.
hist(res$padj, breaks=100, col="darkorange1", border="darkorange4", main="")


significant <- res[res$padj<0.01,]
significant

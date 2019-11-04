#load relevant library
library(iPAC)

# Read file and convert to dataframe
mutationfile <- ("./FH_mutations_NMC_array.csv")
mutationmatrix <- read.csv(mutationfile, header = TRUE)

# Run NMC algorithm
clusterresults <- nmc(mutationmatrix, alpha = 0.05, multtest = "Bonferroni")
# Write out results
write.table(clusterresults, "FH_1D_mutationclusters.csv")

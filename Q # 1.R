# Rao Muhammad Rafay
# P200636

# Q-1


# using package MASS for working on data set painters  
# run install.package("MASS") before running script
# including MASS library
library(MASS)
# loading data set painters
data(painters)

# working on a data set painters
# exploring Qualitative variable of painters which is school
attach(painters)

# storing table of qualitative variable
qltvvar <- table(School)

# printing table of qualitative variable
print(qltvvar)

# we will be making bar plot for showing frequency of qualitative variable
barplot(qltvvar, main = "Bar Plot (School)", xlab = "Qualitative Variable", ylab = "Frequency", las = 1)


# afc.R

# install.packages("FactoMineR")
# install.packages("factoextra")

library(FactoMineR)
library(factoextra)

# Example contingency table
data <- matrix(
  c(20, 15, 10,
    30, 25, 15,
    10, 20, 30),
  nrow = 3,
  byrow = TRUE
)

rownames(data) <- c("Group1", "Group2", "Group3")
colnames(data) <- c("CategoryA", "CategoryB", "CategoryC")

# Run CA
res.ca <- CA(data, graph = FALSE)

# Eigenvalues
print(res.ca$eig)

# Plot results
fviz_ca_biplot(res.ca)

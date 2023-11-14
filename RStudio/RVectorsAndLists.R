# Vector of strings
veggies <- c("carrot", "broccoli", "lettuce")
veggies
# Access the first item(carrot)
veggies[1]

# Vector with numerical values in a sequence
numbers <- 1:25
numbers

veggies <- c("carrot", "broccoli", "lettuce")
# Change "carrot" to "onion"
veggies[1] <- "onion"
veggies

thislist <- list("carrot", "broccoli", "lettuce")
thislist
thislist[1]

thislist <- list("carrot", "broccoli", "lettuce")
thislist[1] <- "onion"
thislist

# Create & print matrix
mymatrix <- matrix(c(10, 20, 30, 40, 50, 60), nrow = 3, ncol = 2)
mymatrix

# Access items in matrix
mymatrix <- matrix(c("onion", "broccoli", "lettuce", "tomato"), nrow = 2, ncol = 2)
mymatrix
mymatrix[2, 2]

# Adding & removing rows and columns w/ rbind() & cbind() | r <- row; c <- column
mymatrix <- matrix(c("onion", "broccoli", "lettuce", "tomato"), nrow = 2, ncol = 2)
newmatrix <- cbind(mymatrix, c("cucumber", "spinach"))
mymatrix
newmatrix

# Loop through a matrix
mymatrix <- matrix(c("onion", "broccoli", "lettuce", "tomato"), nrow = 2, ncol = 2)
for (rows in 1:nrow(mymatrix)) {
  for (columns in 1:ncol(mymatrix)) {
    print(mymatrix[rows, columns])
  }
}

# Create matrices, then combine rows & columns
FruitMatrix <- matrix(c("strawberry", "blueberry", "raspberry", "grape"), nrow = 2, ncol = 2)
JuiceMatrix <- matrix(c("orange", "mango", "pineapple", "watermelon"), nrow = 2, ncol = 2)
CombinedRows <- rbind(FruitMatrix, JuiceMatrix)
CombinedRows
CombinedColumns <- cbind(FruitMatrix, JuiceMatrix)
CombinedColumns
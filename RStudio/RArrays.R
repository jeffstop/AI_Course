# Create one-dimensional array
array_1d <- array(c(1,2,3,4), dim = c(4))
element_2 <- array_1d[2]
# Find number of dimensions in array
num_dimensions <- length(dim(array_1d))
print(num_dimensions)
#print(array_1d)
#print(element_2)

# Create two-dimensional array | dim = c(#rows,#columns)
array_2d <- array(c(1,2,3,4,5,6), dim = c(3,2))
element_1_2 <- array_2d[1,2]
# Find total number of elements in an array
num_elements <- length(array_2d)
print(num_elements)
#print(array_2d)
#print(element_1_2)

# Create three-dimensional array | dim = c(#rows,#columns,#depth)
array_3d <- array(c(1,2,3,4,5,6,7,8,9,10,11,12), dim = c(2,3,2))
element_2_1_2 <- array_3d[2, 1, 2]
# Check dimensions of array
dimensions <- dim(array_3d)
print(dimensions)
#print(array_3d)
#print(element_2_1_2)


# Create data frame
data_frame <- data.frame(
  Name = c("John", "Jane", "Alice"),
  Age = c(25, 30, 35),
  Married = c(TRUE, FALSE, TRUE)
)
print(data_frame)
?mtcars

# Assign the mtcars data set to a new variable for better organization
Data_Cars <- mtcars

# Find the dimensions of the data set
dim(Data_Cars)

# View the names of the variables
names(Data_Cars)
rownames(Data_Cars)
Data_Cars$cyl
sort(Data_Cars$cyl)
summary(Data_Cars)
max(Data_Cars$hp)
min(Data_Cars$hp)

rownames(Data_Cars)[which.max(Data_Cars$hp)]
rownames(Data_Cars)[which.min(Data_Cars$hp)]

mean(Data_Cars$wt)
median(Data_Cars$wt)

names(sort(-table(Data_Cars$wt)))[1]

# Find the 75th percentile of car weight
quantile(Data_Cars$wt, c(0.75))
quantile(Data_Cars$wt)

# Calculate quartiles
quartiles <- quantile(Data_Cars$wt, probs = c(0.25, 0.5, 0.75))

# Access quartiles individually
Q1 <- quartiles[1]
median <- quartiles[2]
Q3 <- quartiles[3]

# Calculate interquartile range (IQR)
IQR <- Q3 - Q1

# Create a boxplot for weigth
boxplot(Data_Cars$wt, main = "Weight Distribution", ylab = "Weight")

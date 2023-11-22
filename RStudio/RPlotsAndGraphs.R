plot(1, 3)
plot(1:10, type = "l", col = "orange")

x <- c(2, 4, 6, 8, 10, 12, 14, 16, 18, 20)
y <- c(50, 45, 55, 60, 65, 70, 75, 80, 85, 90)
plot(x, y, type = "b", col = "blue", pch = 16, main = "Scatter Plot", xlab = "X", ylab = "Y")

# Create vectors for the age and speed of cars on day one
x1 <- c(4, 6, 3, 8, 9, 7, 10, 5, 11, 2, 12, 7)
y1 <- c(80, 85, 89, 92, 94, 88, 97, 82, 78, 111, 86, 87)

# Create vectors for the age and speed of cars on day two
x2 <- c(1, 7, 8, 9, 4, 12, 2, 6, 15, 7, 11, 3, 14, 2, 10)
y2 <- c(105, 88, 84, 95, 94, 80, 105, 89, 90, 112, 79, 100, 80, 91, 97)

# Create a scatter plot of car age and speed for day one, with customized settings
plot(x1, y1, main = "Observation of Cars", xlab = "Car Age", ylab = "Car Speed", col = "red", cex = 2)

# Add points for the scatter plot of car age and speed for day two, with customized settings
points(x2, y2, col = "blue", cex = 2)
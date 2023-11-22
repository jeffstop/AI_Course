# Linear Regression Model Training with the mtcars Dataset
# Load mtcars dataset
data(mtcars)

# Predictor variable (horsepower)
X <- mtcars$hp
# Response variable (miles per gallon)
Y <- mtcars$mpg

# Train the linear regression model
model <- lm(Y ~ X, data = mtcars)

# Print the model summary
summary(model)
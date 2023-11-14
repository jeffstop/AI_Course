i <- 1
while (i < 10) {
  print(i)
  i <- i +1
}

i <- 1
while (i < 10) {
  print(i)
  i <- i +1
  if ( i == 5) {
    break
  }
}

i <- 0
while (i < 10) {
  i <- i +1
  if ( i == 5) {
    next
  }
  print(i)
}

# "Game" of Yahtzee
# Initialize the variable "dice" with a value of 1
dice <- 1
# Enter a while loop that continues as long as dice is less than or equal to 6
while (dice <= 6) {
  # Check if dice is less than 6
  if (dice < 6) {
    print("No Yahtzee")
  } else {
    print("Yahtzee!")
  }
  # Increment value of dice
  dice <- dice + 1
}

for (x in 1:20) {
  print(x)
}

fruits <- list("grapes", "water melon", "apricot")
for (x in fruits) {
  print(x)
}

dice <- c(1, 2, 3, 4, 5, 6)
for (x in dice) {
  print(x)
}

fruits <- list("apples", "bananas", "cherries")
for (x in fruits) {
  if (x == "cherries") {
    break
  }
  print(x)
}

fruits <- list("apples", "bananas", "cherries")
for (x in fruits) {
  if (x == "bananas") {
    next
  }
  print(x)
}

# Create an ordered collection of elements, with values from 1 to 6
dice <- 1:6
for (x in dice) {
  if (x == 6) {
    print(paste("The dice number is", x, "Yahtzee!"))
  } else{
    print(paste("The dice number is", x, "Not Yahtzee"))
  }
}

my_function <- function() {
  print("\"Your time is limited, don't waste it living someone else's life.\"
- Steve Jobs")
}
my_function()

my_function <- function(fname) {
  paste(fname, "Sutherland")
}
my_function("Donald")
my_function("Kiefer")
my_function("Sarah")

my_function <- function(fname, lname) {
  paste(fname, lname)
}
my_function("Kiefer", "Sutherland")

my_function <- function(country = "Indonesia") {
  paste("I am from", country)
}
my_function("Mexico")
my_function("Nigeria")
my_function()
my_function("USA")

my_function <- function(x) {
  return(10 * x)
}
print(my_function(5))
print(my_function(10))
print(my_function(20))
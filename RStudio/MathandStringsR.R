# Addition
67 + 13
# Subtraction
55 - 12

# Find min and max values in a set
max(10, 20, 30)
min(25, 50, 75)

# Strings can be enclosed with double or single quotation marks
"Have a good day!"
'Have a great day!'

str <- "Hi there!"
str

# Use built in new line feature
str <- "The Tech Academy is a coding boot camp
headquartered in Portland, Oregon,
with students all over the world
who complete their self-paced training online."
str

# Preserve line breaks exactly as they appear with cat()
str <- "The Tech Academy is a coding boot camp
headquartered in Portland, Oregon,
with students all over the world
who complete their self-paced training online."
cat(str)

# nchar() to get the length of a string
str <- "Regardless of one's career plans, it is valuable to learn
multiple programming languages."
nchar(str)  # Finds the number of characters in the string(length)

# grepl() used to check if a specific character or sequence is present. Returns TRUE or FALSE
str <- "Hello, Tech Academy student!"
grepl("Hello", str)
grepl("T", str)
grepl("Z", str)

# Escape Character
str <- "\"I have a very bad feeling about this\" is a classic Star Wars line."
str

# sqrt() used to calculate square root of given number
sqrt(25)

# abs() used to find absolute value(distance from 0) of a number
abs(-4.9)

# ceiling() used to round up; floor() used to round down
ceiling(9.25)
floor(9.25)
20 > 10
20 == 10
20 < 10
a <- 20
b <- 10
a > b

a <- 50
b <- 200
if (b > a) {
  print("b is greater than a")
}

x <- 2014
y <- 2014
if (y > x) {
  print("y is greater than x")
} else if (x == y) {
  print("x and y are equal")
}

a <- 999
b <- 33
if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print("a and b are equal")
} else {
  print("a is greater than b")
}

a <- 200
b <- 33
if (b > a) {
  print("b is greater than a")
} else {
  print("b is not greater than a")
}


x <- 99
if (x > 10) {
  print("It is greater than 10")
  if (x > 90) {
    print("and also greater than 90!")
  } else {
    print("but not more than 100")
  }
} else {
  print("It is below 10")
}


a <- 311
b <- 31
c <- 3111
if (a > b & c > a) {
  print("Both conditions are true")
}

a <- 200
b <- 100
c <- 500
if (a > b | a > c) {
  print("At least one of the conditions is true")
}


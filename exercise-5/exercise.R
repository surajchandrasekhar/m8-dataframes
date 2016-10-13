# Exercise 5: Gates Foundation Educational Grants


# Read data into a variable called `grants` using the `read.csv` function


# Use the View function to look at your data


# Create a variable `spending` as the `total_amount` column of the dataset


# Confirm that your `spending` variable is a vector using the `is.vector` function


# Create a variable `org` as the `organization` column of the dataset.
# Unfortunately, it will not be a vector by default, so you must transform it using the as.vector function


### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?


# What was the dollar amount of the largest grant?


# What was the dollar amount of the smallest grant?


# Which organization received the largest grant?


# Which organization received the smallest grant?


# How many grants were awarded in 2010?
getwd()
grants <- read.csv('data/gates_money.csv')
spending <- grants$total_amount
is.vector(spending)
org <- grants$organization
as.vector(org)
org <- as.vector(org)
mean.grant <- mean(spending)
max.grant <- max(spending)
min.grant <- min(spending)
max.grant.org <- org[spending == max.grant]
min.grant.org <- org[spending == min.grant]
grants.2010 <- length(org[grants$start_year == 2010])

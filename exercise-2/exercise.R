# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks have scored in each game this season (google "Seahawks")


# Create a vector of the number of points the Seahwaks have allowed to be scored against them in each game this season


# Combine your two vectors into a dataframe


# Create a new column "diff" that is the difference in points


# Create a new column "won" which is TRUE if the Seahawks wom


# Create a vector of the opponents


# Assign your dataframe rownames of their opponents

scored <- c(12, 3, 37, 27)
allowed <- c(10, 9, 18,17)
seahawks <- data.frame(scored, allowed)
seahawks$diff <- scored-allowed
seahawks$diff
seahawks$won <- seahawks$diff > 0 
won
seahawks$won
opponents <- c("Dolphins", "Rams", "49ers", "Jets")
row.names(seahawks) <- opponents
View(seahawks)

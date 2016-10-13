# Exercise 6: Popular Baby Names Over Time

# Read in the female baby names csv file into a variable called `female.names`


# Create a vector `year` as the year column of the dataset


# Create a vector `name` as the name column of the datset
# As in the last exercise, you'll need to convert this column to a vector


# Create a vector `prop` as the proportion column of the dataset


# Create a vector `names.2013` as your name vector where your year vector is 2013


# Create a vector `prop.2013` as the your prop vector where your year vecctor is 2013


# What was the most popular female name in 2013?


# Write a funciton `MostPopular` that takes in a value `my.year`, and returns
# a sentence stating the most popular name in that year. 


# What was the most popular female name in 1994?


### Bonus ###

# Write a function `HowPopular` that takes in a name and a year, and returns
# a sentence with how popular that name was in that year

# How popular was the name 'Laura' in 1995
getwd()
female.names <- read.csv('data/female_names.csv')
year <- female.names$year
is.vector(year)
name <- as.vector(female.names$name)
is.vector(name)
prop <- female.names$prop
names.2013 <- name[year == 2013]
prop.2013 <- prop[year == 2013]
max.prop.2013 <- max(prop.2013)
pop.name.2013 <- name[prop == max.prop.2013]
MostPopular <- function(my.year) {
 max.prop.year <- max(prop[year == my.year])  
 pop.name <- name[prop == max.prop.year]
 answer <- sprintf("%s had the most popular name in %s", pop.name, my.year)
 return(answer)
}
pop.name.1994 <- MostPopular(1994)

#bonus
HowPopular <- function(my.name, my.year) {
  name.tmp <- name[year==my.year]
  prop.tmp <- prop[year == my.year]
  pop <- round(prop.tmp[name.tmp == my.name],4)*100
  answer <- sprintf("%s in %s had a frequency of %s",my.name,my.year,pop)
  return(answer)
}
laura.pop <- HowPopular("Laura", 1995)

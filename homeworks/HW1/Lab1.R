# Author: YanyuChen, AndrewID: yanyuc

str(cars)
colnames(cars)
dim(cars)
summary(cars)
mean(cars$speed)
mean(cars$dist)
colMeans(cars)
head(cars)
tail(cars, 2)
plot(cars)

# Hello, World!
var <- "Hello World!"
var
print(var)

# type of variable
typeof(var)
is.character(var)
is.integer(var)

# Basic Operators
7 + 5
7 - 5
7 * 5
7 ^ 5
7 / 5
7 %% 5
7 %/% 5

# Comparisons
7 > 5
7 < 5
7 >= 7
7 <= 5
7 == 5
7 != 5

# Multiple boolean operators
(5 > 7) & (6 * 7 == 42)
(5 < 7) & (6 * 7 == 42)
(5 > 7) | (6 * 7 == 42)

# Type checking
is.numeric(7)
is.na(7)
is.na(NA)
is.na("NA")
is.character(7)
is.character("7")
is.character("seven")
is.na("seven")

# Constants
pi
pi * 10
cos(pi/4)

# Assignment Operator
time_factor <- 12
time_factor
time_in_years <- 2.5
time_in_years * time_factor
time_in_months <- time_in_years * time_factor
time_in_months
time_in_months <- 45
time_in_months

# Workspace/environment
ls()
rm("time_in_months")
ls()

# Data structures: Vectors
students <- c("Alice", "Bob", "Chris", "Dana", "Eve")
midterm <- c(80, 90, 93, 82, 95)
students
midterm

# Basic Indexing
students[1]
students[4]
students[-4] # This is a vector containing all but the fourth element.
students[1:2]
students[2:5]

# Vector Arithmetic
final <- c(78, 84, 95, 82, 91) # Final exam scores
midterm # Midterm exam scores
midterm + final # Sum of midterm and final scores
(midterm + final) / 2 # Individual average exam scores in order
course_grades <- 0.4 * midterm + 0.6 * final # Final weighted course grades
course_grades

# Pairwise comparisons
midterm
final
final > midterm
(final < midterm) & (midterm > 80)
short_vec <- c(0, 1)
long_vec <- c(2, 4, 6, 8, 3, 5, 7, 9, 2, 5)
final_vec <- short_vec * long_vec
final_vec

# Functions on vectors
course_grades
mean(course_grades)
median(course_grades)
sd(course_grades)
sort(course_grades)
sort(course_grades, decreasing = TRUE)
max(course_grades)
min(course_grades)

# More referencing
course_grades
a_threshold <- 90 # "define" A grade as = 90% or higher
course_grades >= a_threshold # Vector of booleans
course_grades >= 90 # Same result
a_students <- which(course_grades >= a_threshold) # Applying which()
a_students
students[a_students]

# Named Components
students
names(course_grades) <- students # Assign names to the grades
course_grades

# Indexing Individual Vectors and Dataframes
carsdf <- cars
summary(carsdf)
slow_cars_list <- carsdf$speed[carsdf$speed < 12]
str(slow_cars_list)
slow_cars_list

# Return dataframe based on list
slow_cars_df <- carsdf[carsdf$speed[carsdf$speed < 12],]
str(slow_cars_df)
head(slow_cars_df)

# Check sizes
dim(cars)
dim(slow_cars_df)

# Subset as a command
slow_cars_df2 <- subset(carsdf, carsdf$speed < 12)
head(slow_cars_df2)
str(slow_cars_df2)

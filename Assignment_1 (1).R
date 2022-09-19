################################################################################
# Title: Assignment 1

# Name of file: assignment_1.R
# A script containing instructions for Assignment 1, FOCD 2021 UMD/UM
# Author: -- PUT IN YOUR NAME --
# Date: Tue Sep 14, 2021
################################################################################
# Please write down the R command(s) needed after each question!
# Some questions require an interpretation of the results in addition to code!

# There is a total of 22 questions.


### Data types
# 1. Which command do you use to determine the type of an object?
typeof()
# 2. What is the type of vector A?
A <- c("2", "3", "4", "5", "6", "7", "8")
typeof(A)
# 3. Convert A into an integer vector
A <- as.integer(A)
typeof(A)
# 4. Create an integer vector B containing the numbers one through ten
B <-c(1,2,3,4,5,6,7,8,9,10)
B <- as.integer(B)
typeof(B)
# 5. Create a new vector C from B which has the type "double"
C <- B
C <-as.double(C)
typeof(C)
# 6. Change the third value of B to "3.5"
replace(B,3,3.5)
# 7. Did this affect the type of B? How?
is.integer(B)

### Reading in data
# Download both the Angell.dta (Stata data format) dataset and the Angell.txt dataset from this website
# https://stats.idre.ucla.edu/stata/examples/ara/applied-regression-analysis-by-fox-data-files/

# 8. Read in the .dta version and store in an object called angell_stata
library(haven)
angell_stata <- read_dta("~ceciliayao/Desktop/Graduate Study/1st sem 2022-2023/SurvMeth 727/angell.dta")
# 9. Read in the .txt version and store it in an object called angell_txt

# 10. Drop the first five observations in the angell_txt object

# 11. Select columns 2 and 3 of the agell_stata object and store them in a new object called angell_small
angell_small <- angell_stata[,c(2,3)]
# R comes also with many built-in datasets. The "MASS" package, for example, comes with the "Boston" dataset
# 12. Install the "MASS" package, load the package. Then, load the Boston dataset
install.packages("MASS")
library(MASS)
data("Boston")
# 13. What is the type of the Boston object?
typeof(Boston)
# 14. What is the class of the Boston object?
class(Boston)
### Basic data summarizing and description
# 15. How many of the suburbs in the Boston data set bound the Charles river?
sum(with(Boston, chas==1))
# 16. Do any of the suburbs of Boston appear to have particularly high crime rates? Tax rates?
# Pupil-teacher ratios? Comment on the range of each variable.
summary(Boston$crim)
summary(Boston$tax)
summary(Boston$ptratio)
# 17. What is the median pupil-teacher ratio among the towns in this data set that
# have a per capita crime rate larger than 1 ?
Boston_1<-Boston[Boston$crim > 1,]
median(Boston_1$ptratio)
### Functions
# 18. Write a function that calculates the squareroot of an integer


# 19. Write a function that calculates 95% confidence intervals for a point estimate.
# The function should be called "my_CI"
# When called with "my_CI(2, 0.2)", the output of the function should read
# "The 95% CI upper bound of point estimate 2 with standard error 0.2 is 2.392. The lower bound is 1.608."
# Note: the function should take a point estimate and its standard error as arguments
# You may use the formula for 95% CI: point estimate +/- 1.96*standard error)
# Pasting text in R: paste() and paste0()

# 20. Write a function that converts all negative numbers in the following dataset into NA
# Use as little code as possible and try to avoid code repetition
set.seed(1002)
df <- data.frame(replicate(10, sample(c(1:10, c(-99,-98,-5)), 6, rep = TRUE)))
names(df) <- letters[1:6]
df

df %>%
  mutate(.data, )

?mutate
# 21. Use your function to convert all negative numbers in the dataset into NA without changing the class of the object



# 22. Change the function you wrote above such that it turns any negative number into NA!
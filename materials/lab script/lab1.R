# Lab 1: Introduction to R  

# =====================================
# Working Directory
# =====================================
# Get current working directory
getwd()

# Change working directory (edit the path to a folder on your computer) 
# setwd("C:/Your/Folder/Here")

# =====================================
# R Basics — Calculations & Objects
# =====================================
# Calculations
1 + 1
5 * 6
2 ^ 4
(8 + 5 * 6 / 3) / 2

# Creating Objects
a <- 5 * 6
a

b <- 8 + a / 3
b

c <- "AREC 513"
c

# =====================================
# Data Types
# =====================================
# Numeric
is.numeric(b)

# Integer
d <- 8L
is.integer(d)

# Logical
e <- TRUE
is.logical(e)

# Character
is.character(c)

# check classes with class()
class(a)

# =====================================
# Data Structures 
# =====================================

# =====================================
# Vectors
# =====================================
# Create vectors
grades_1 <- c(75, 76, 77, 78, 79, 80, 81, 82, 83, 84)
grades_1

grades_2 <- c(75:84)  # generate continuous values
grades_2

names <- c(
  "Marshall", "Ruby", "Peppa", "George", "Suzy", "Danny",
  "Pedro", "Rebecca", "Rubble", "Ryder", "Max", "Chase"
)
names

# Vector operations
grades_1 + 5
grades_1 * 2
sqrt(grades_1)
grades_1 >= 78


# Factors
# Nominal example
jbp <- c("poor", "excellent", "fair", "poor", "good")
jbp
class(jbp)

jbp.1 <- as.factor(jbp)
jbp.1
class(jbp.1)

# Ordinal example
jbp.2 <- factor(jbp, levels = c("poor", "fair", "good", "excellent"))
jbp.2

# Subset vectors
# By position
grades_1[1]          # 1st element
grades_1[-2]         # exclude 2nd
grades_1[3:5]        # 3rd to 5th
grades_1[c(1, 3, 5)] # 1st, 3rd, 5th

# By condition
grades_1[grades_1 >= 78]
grades_1[grades_1 != 78]
jbp.2[jbp.2 %in% c("poor", "fair")]

# Multiple conditions (AND & OR)
grades_1[grades_1 >= 78 & grades_1 != 80]
grades_1[grades_1 >= 78 | grades_1 == 75]

# =====================================
# Matrices
# =====================================
ma.1 <- matrix(1:15, nrow = 5, ncol = 3)
ma.1

ma.2 <- matrix(names, nrow = 6, ncol = 2)
ma.2

# Subset matrices [ROW, COL]
ma.1[2, ]   # entire 2nd row
ma.1[, 2]   # entire 2nd column
ma.1[2, 2]  # element at row 2, column 2
ma.2[3, 2]  # element at row 3, column 2

# =====================================
# Arrays
# =====================================
array.1 <- array(1:24, dim = c(2, 3, 4))  # 2 rows * 3 cols * 4 matrices
array.1

# =====================================
# Lists
# =====================================
list.1 <- list(name = names, grade = grades_1, random_num = 9)
list.1
names(list.1)

# Select from lists
list.1[1]         # sublist (still a list)
list.1[[1]]       # contents of 1st component
list.1$name       # by name
list.1[[1]][1]    # 1st element of 1st component
list.1$name[1]    # 1st element of 'name'

# =====================================
# Data Frames
# =====================================
df1 <- data.frame(Name = names[1:10], Grade = grades_1)
df1

df1$Name
df1$Grade[1:5]
df1$Grade[df1$Grade >= 80]
df1$Name[df1$Grade >= 80]
df1[df1$Grade >= 80, ]

mean(df1$Grade)

# =====================================
# Packages & Tidyverse Examples
# =====================================

# Base datasets:
data()          # list datasets
data(mtcars)    # load mtcars

# Install and Load packages  

install.packages("tidyverse")
library(tidyverse)

# Tidyverse examples using 'mpg'
data(mpg)

head(mpg)  # first 6 rows

# dplyr::select — choose variables
head(select(mpg, c(manufacturer, model, year)))

# dplyr::filter — subset rows by condition
head(filter(mpg, year >= 2000))



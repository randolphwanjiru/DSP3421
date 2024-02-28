#Homework 5 R- STATISTICS 

############################
install.packages("tidyverse")
library(tidyverse)

install.packages("tidyr")
library(tidyr)

library(ggplot2) #data visualization


############################
#1. import data into R
setwd("C:/Users/rando/Downloads/")
df<-read.csv("data.csv")

#2. Exploring Data
summary(df)

#3. Basic operations with Data Frame 
age_column <- df$Age

#4. Filtering a dataframe
filtered_df <- df[df$Age >=25,]

#5. Generate Statistical Indicators 
mean_income <- mean(df$Income)

#6. Descriptive Statistics with the psyc Package 
install.packages("psych")
library(psych)
describe(df$HoursWorkedPerWeek)

#7. Determining the skewness and and Kurtosis
install.packages("moments")
library(moments)
skewness_value <- skewness(df$Weight_kg)
kurtosis_value <- kurtosis(df$Weight_kg)
skewness_value
kurtosis_value

#8. Data Transformation 
df$LogIncome<- log(df$Income)

#9. Recoding Continous Variables 
df$JobSatisfaction <- as.numeric(df$JobSatisfaction)
df$JobSatisfaction <- cut(df$JobSatisfaction, breaks = c(0,3,7,10),labels = c("Low", "Medium", "high"))

#10. Sorting Data Frames 
sort_df <- df[order(df$Age,decreasing = TRUE),]

#11. Using filter()
names(df)
filtered_data <- filter(df, "HoursWorkedPerWeek" > 40 & "Country" == "USA")

#12. Using arrange ()
install.packages("dplyr")  
library(dplyr)           
arranged_df <- arrange(df, Income)

#13. Pick variables by their names (select())
select_df <- df[c("ID", "Age", "Gender")]

#14.  Create new Variables with existing variables (mutate())
df$BMI <- df$Weight_kg/ ((df$Height_cm/100)^2)

#15. Label encoding 
df$GenderCode <- as.integer(df$Gender == "Male")
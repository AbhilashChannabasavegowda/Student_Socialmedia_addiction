# Install and load necessary packages
install.packages("tidyverse")
library(tidyverse)
library(dplyr)

# Load the dataset
Student_Addiction <- read.csv("D:/Project/Students Social Media Addiction.csv")

# View and inspect structure
View(Student_Addiction)
glimpse(Student_Addiction)

# Check the class and unique values of Academic_Level
class(Student_Addiction$Academic_Level)
unique(Student_Addiction$Academic_Level)

# Convert Academic_Level to a factor and set desired order
Student_Addiction$Academic_Level <- as.factor(Student_Addiction$Academic_Level)
Student_Addiction$Academic_Level <- factor(Student_Addiction$Academic_Level, 
                                           levels = c("High School", "Undergraduate", "Graduate"))

# Check for duplicate student IDs
any(duplicated(Student_Addiction$Student_ID))  

# Check for missing or empty values across all columns
colSums(Student_Addiction == "" | is.na(Student_Addiction))

# Explore country values to assess standardization needs
sort(unique(Student_Addiction$Country))

# Clean and standardize text-based categorical columns
Student_Addiction$Gender <- str_to_title(trimws(Student_Addiction$Gender))
Student_Addiction$Most_Used_Platform <- str_to_title(trimws(Student_Addiction$Most_Used_Platform))
Student_Addiction$Country <- str_to_title(trimws(Student_Addiction$Country))
Student_Addiction$Relationship_Status <- str_to_title(trimws(Student_Addiction$Relationship_Status))

# Fix specific categorical inconsistencies 
Student_Addiction <- Student_Addiction %>%
  mutate(Relationship_Status = recode(Relationship_Status, "In Relationship" = "Relationship"))

# Final view of cleaned dataset
View(Student_Addiction)

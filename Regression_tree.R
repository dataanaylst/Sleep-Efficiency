# Regression Tree Analysis with rpart

# Load necessary libraries
if (!requireNamespace("rpart", quietly = TRUE)) {
  install.packages("rpart")
}
library(rpart)
library(rpart.plot)

# Load your dataset
Sleep_Efficiency <- read.csv("Sleep_Efficiency.csv")

# 1. Sleep patterns and efficiency between gender groups
# Assuming Sleep_duration, Awakenings, and REM_sleep_percentage as relevant 
#sleep variables

# Create a data frame with relevant variables
gender_analysis_data <- Sleep_Efficiency[, c("Gender", "Sleep_duration", 
                                             "Awakenings", "REM_sleep_percentage")]

# Convert categorical variables to dummy variables if needed
gender_analysis_data <- model.matrix(~.-1+Gender, data = gender_analysis_data)

# Combine response and predictor variables into a data frame
gender_data_frame <- as.data.frame(gender_analysis_data)

# Fit regression tree model for gender analysis
gender_tree_model <- rpart(Sleep_duration + Awakenings + REM_sleep_percentage ~ .,
                           data = gender_data_frame)

# Plot the regression tree for gender analysis
rpart.plot(gender_tree_model, box.palette="GnBu", shadow.col="gray", nn=TRUE)

# 2. Relationship between caffeine consumption and sleep variables
# Assuming Sleep_efficiency and Awakenings as relevant sleep variables

# Create a data frame with relevant variables
caffeine_analysis_data <- Sleep_Efficiency[, c("Caffeine_consumption", 
                                               "Sleep_efficiency", "Awakenings")]

# Convert categorical variables to dummy variables if needed
caffeine_analysis_data <- model.matrix(~.-1+Caffeine_consumption, 
                                       data = caffeine_analysis_data)

# Combine response and predictor variables into a data frame
caffeine_data_frame <- as.data.frame(caffeine_analysis_data)

# Fit regression tree model for caffeine analysis
caffeine_tree_model <- rpart(Sleep_efficiency + Awakenings ~ ., 
                             data = caffeine_data_frame)

# Plot the regression tree for caffeine analysis
rpart.plot(caffeine_tree_model, box.palette="GnBu", shadow.col="gray", nn=TRUE)

# 3. Association between exercise frequency and REM sleep percentage
# Assuming REM_sleep_percentage as the relevant sleep variable

# Create a data frame with relevant variables
exercise_analysis_data <- Sleep_Efficiency[, c("Exercise_frequency", 
                                               "REM_sleep_percentage")]

# Convert categorical variables to dummy variables if needed
exercise_analysis_data <- model.matrix(~.-1+Exercise_frequency, 
                                       data = exercise_analysis_data)

# Combine response and predictor variables into a data frame
exercise_data_frame <- as.data.frame(exercise_analysis_data)

# Fit regression tree model for exercise analysis
exercise_tree_model <- rpart(REM_sleep_percentage ~ ., 
                             data = exercise_data_frame)

# Plot the regression tree for exercise analysis
rpart.plot(exercise_tree_model, box.palette="GnBu", shadow.col="gray", nn=TRUE)

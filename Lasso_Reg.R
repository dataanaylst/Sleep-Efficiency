# Install and load necessary libraries
if (!requireNamespace("glmnet", quietly = TRUE)) {
  install.packages("glmnet")
}
library(glmnet)
library(ggplot2)

# Load your dataset
Sleep_Efficiency <- read.csv("Sleep_Efficiency.csv")

# Research Question 1: Sleep patterns and efficiency between gender groups
# Assuming Sleep_duration, Awakenings, and REM_sleep_percentage as relevant 
#sleep variables

# Plot sleep duration by gender
ggplot(Sleep_Efficiency, aes(x = Gender, y = Sleep_duration, fill = Gender)) +
  geom_boxplot() +
  labs(title = "Sleep Duration by Gender")

# Plot number of awakenings by gender
ggplot(Sleep_Efficiency, aes(x = Gender, y = Awakenings, fill = Gender)) +
  geom_boxplot() +
  labs(title = "Number of Awakenings by Gender")

# Plot REM sleep percentage by gender
ggplot(Sleep_Efficiency, aes(x = Gender, y = REM_sleep_percentage, fill = Gender)) +
  geom_boxplot() +
  labs(title = "REM Sleep Percentage by Gender")

# Research Question 2: Relationship between caffeine consumption and sleep variables
# Assuming Sleep_efficiency and Awakenings as relevant sleep variables

# Plot sleep efficiency by caffeine consumption
ggplot(Sleep_Efficiency, aes(x = Caffeine_consumption, y = Sleep_efficiency, 
                             fill = Caffeine_consumption)) +
  geom_boxplot() +
  labs(title = "Sleep Efficiency by Caffeine Consumption")

# Plot number of awakenings by caffeine consumption
ggplot(Sleep_Efficiency, aes(x = Caffeine_consumption, y = Awakenings, 
                             fill = Caffeine_consumption)) +
  geom_boxplot() +
  labs(title = "Number of Awakenings by Caffeine Consumption")

# Research Question 3: Association between exercise frequency and REM sleep percentage
# Assuming REM_sleep_percentage as the relevant sleep variable

# Plot REM sleep percentage by exercise frequency
ggplot(Sleep_Efficiency, aes(x = Exercise_frequency, y = REM_sleep_percentage, 
                             fill = Exercise_frequency)) +
  geom_boxplot() +
  labs(title = "REM Sleep Percentage by Exercise Frequency")

# Lasso Regression

# Assuming "Sleep_efficiency" is the response variable
response_variable <- Sleep_Efficiency$Sleep_efficiency

# Extract predictor variables
predictor_variables <- Sleep_Efficiency[, c("Age", "Gender", "Sleep_duration", 
                                            "REM_sleep_percentage", "Awakenings",
                                            "Caffeine_consumption", 
                                            "Alcohol_consumption", 
                                            "Smoking_status", "Exercise_frequency")]

# Convert categorical variables to dummy variables if needed
predictor_variables <- model.matrix(~.-1+Gender+Smoking_status+Exercise_frequency,
                                    data = predictor_variables)

# Fit lasso regression model
lasso_model <- cv.glmnet(predictor_variables, response_variable, alpha = 1)

# Print the cross-validated lasso model
print(lasso_model)

# Plot the cross-validated mean squared error as a function of lambda
plot(lasso_model)

# Identify the optimal lambda value
best_lambda <- lasso_model$lambda.min
cat("Optimal Lambda:", best_lambda, "\n")

# Get the coefficients of the selected variables
lasso_coefficients <- coef(lasso_model, s = best_lambda)
print(lasso_coefficients)

# Preprocessing Script for Bioinformatics Data

# Load necessary libraries
library(dplyr)
library(readr)

# Example: Load raw data
raw_data <- read_csv("data/raw/raw_data.csv")

# Example preprocessing: Remove missing values
processed_data <- raw_data %>%
  na.omit()

# Save processed data
write_csv(processed_data, "data/processed/processed_data.csv")

# Print summary
summary(processed_data)
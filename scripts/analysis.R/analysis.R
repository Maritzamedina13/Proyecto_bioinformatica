# Analysis Script for Bioinformatics Data

# Load necessary libraries
library(ggplot2)
library(dplyr)
library(readr)

# Load processed data
data <- read_csv("../data/processed/processed_data.csv")

# Example analysis: Create a simple plot
plot <- ggplot(data, aes(x = column1, y = column2)) +
  geom_point() +
  labs(title = "Example Scatter Plot")

# Save plot
ggsave("../results/figures/example_plot.png", plot)

# Example: Create a summary table
summary_table <- data %>%
  group_by(category) %>%
  summarise(mean_value = mean(value))

# Save table
write_csv(summary_table, "../results/tables/summary_table.csv")

# Print results
print(summary_table)
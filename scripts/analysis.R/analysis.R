# Analysis Script for Bioinformatics Data

# Load necessary libraries
library(ggplot2)
library(dplyr)
library(readr)

# Load processed data
data <- read_csv("data/processed/processed_data.csv")

# Example analysis: Create a simple plot
plot <- ggplot(data, aes(x = sample_id, y = gene_expression, color = condition)) +
  geom_point() +
  labs(title = "Example Scatter Plot of Gene Expression")

# Save plot
ggsave("results/figures/example_plot.png", plot)

# Example: Create a summary table
summary_table <- data %>%
  group_by(condition) %>%
  summarise(mean_expression = mean(gene_expression), count = n())

# Save table
write_csv(summary_table, "results/tables/summary_table.csv")

# Print results
print(summary_table)
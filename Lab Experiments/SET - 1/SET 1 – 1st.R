# Creating the dataset
Month <- c("January", "February", "March", "April", "May")
Sales <- c(15000, 18000, 22000, 20000, 23000)

sales_data <- data.frame(Month, Sales)

print(sales_data)


# Load library
library(ggplot2)

# Dataset
Month <- c("January", "February", "March", "April", "May")
Sales <- c(15000, 18000, 22000, 20000, 23000)

sales_data <- data.frame(
  Month = factor(Month, levels = Month),
  Sales = Sales
)

# Line Chart
ggplot(sales_data, aes(x = Month, y = Sales, group = 1)) +
  geom_line(color = "blue", linewidth = 1.2) +
  geom_point(color = "red", size = 3) +
  labs(
    title = "Monthly Sales",
    x = "Month",
    y = "Sales ($)"
  ) +
  theme_minimal()# Line Chart
ggplot(sales_data, aes(x = Month, y = Sales, group = 1)) +
  geom_line(color = "blue", linewidth = 1.2) +
  geom_point(color = "red", size = 3) +
  labs(
    title = "Monthly Sales",
    x = "Month",
    y = "Sales ($)"
  ) +
  theme_minimal()
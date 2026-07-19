library(ggplot2)

Advertising <- c(2000,
                 2500,
                 3000,
                 2800,
                 3500)

Sales <- c(15000,
           18000,
           22000,
           20000,
           23000)

scatter_data <- data.frame(
  Advertising,
  Sales
)

ggplot(scatter_data,
       aes(x = Advertising,
           y = Sales)) +
  
  geom_point(
    color = "blue",
    size = 4
  ) +
  
  labs(
    title = "Advertising Budget vs Monthly Sales",
    x = "Advertising Budget ($)",
    y = "Monthly Sales ($)"
  ) +
  
  theme_minimal()

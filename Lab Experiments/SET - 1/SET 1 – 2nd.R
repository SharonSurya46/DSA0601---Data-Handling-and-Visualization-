library(ggplot2)

Product <- c("Product A",
             "Product B",
             "Product C",
             "Product D",
             "Product E")

Sales <- c(45000,
           52000,
           61000,
           48000,
           56000)

product_data <- data.frame(Product, Sales)


ggplot(product_data,
       aes(x = Product,
           y = Sales,
           fill = Product)) +
  
  geom_bar(stat = "identity") +
  
  labs(
    title = "Top Selling Products",
    x = "Products",
    y = "Sales ($)"
  ) +
  
  theme_minimal()
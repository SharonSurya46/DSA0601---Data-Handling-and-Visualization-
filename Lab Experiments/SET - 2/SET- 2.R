# Customer Satisfaction Dataset
customer <- data.frame(
  Customer_ID = c(1,2,3,4,5),
  Age = c(25,30,35,28,40),
  Satisfaction = c(4,5,3,4,5)
)

customer

# Histogram of Customer Ages

hist(customer$Age,
     col = "lightblue",
     main = "Distribution of Customer Ages",
     xlab = "Age",
     ylab = "Frequency",
     breaks = 5)

# Count Satisfaction Scores
score_count <- table(customer$Satisfaction)

# Pie Chart
pie(score_count,
    labels = names(score_count),
    col = rainbow(length(score_count)),
    main = "Customer Satisfaction Scores")

# Create Age Groups
customer$Age_Group <- cut(customer$Age,
                          breaks = c(20,30,40,50),
                          labels = c("21-30","31-40","41-50"),
                          include.lowest = TRUE)

# Table
stack_data <- table(customer$Age_Group,
                    customer$Satisfaction)

# Stacked Bar Chart
barplot(stack_data,
        col = rainbow(3),
        legend = rownames(stack_data),
        main = "Customer Satisfaction by Age Group",
        xlab = "Satisfaction Score",
        ylab = "Number of Customers")

library(wordcloud)
library(RColorBrewer)

feedback <- c(
  "Excellent service and friendly staff",
  "Very satisfied with product quality",
  "Average experience but good support",
  "Fast delivery and excellent packaging",
  "Highly satisfied and will recommend"
)

text <- paste(feedback, collapse = " ")
words <- strsplit(tolower(text), "\\s+")[[1]]

wordcloud(
  words = words,
  max.words = 30,
  random.order = FALSE,
  colors = brewer.pal(8, "Dark2")
)
install.packages("tm")

install.packages("wordcloud")

install.packages("RColorBrewer")
install.packages("slam")
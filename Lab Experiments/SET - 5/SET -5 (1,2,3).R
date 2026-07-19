# Read Dataset
traffic <- read.csv("C:\\Users\\svkss\\Documents\\DHV files\\lab exps\\website_traffic.csv")

# Convert Date
traffic$Date <- as.Date(traffic$Date)

# Line Chart
plot(traffic$Date,
     traffic$Page_Views,
     type="o",
     col="blue",
     lwd=2,
     pch=16,
     main="Daily Website Page Views",
     xlab="Date",
     ylab="Page Views")
# 2nd
# Sort by Click Through Rate
top_ctr <- traffic[order(-traffic$Click_Through_Rate),]

# Top 3 Days
top3 <- head(top_ctr,3)

barplot(top3$Click_Through_Rate,
        names.arg=top3$Date,
        col="orange",
        main="Top 3 Days by Click Through Rate",
        xlab="Date",
        ylab="Click Through Rate (%)")



# Create Matrix
interaction <- cbind(
  traffic$Likes,
  traffic$Shares,
  traffic$Comments
)

# Stacked Area Chart
library(ggplot2)
library(tidyr)

long_data <- pivot_longer(
  traffic,
  cols=c(Likes,Shares,Comments),
  names_to="Interaction",
  values_to="Count"
)

ggplot(long_data,
       aes(Date,
           Count,
           fill=Interaction))+
  geom_area()+
  labs(title="Website User Interactions",
       x="Date",
       y="Count")
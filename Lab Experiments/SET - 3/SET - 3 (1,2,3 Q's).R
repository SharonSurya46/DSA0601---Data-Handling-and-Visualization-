# Employee Performance Dataset
employee <- data.frame(
  Employee_ID = c(1,2,3,4,5),
  Department = c("Sales","HR","Marketing","Sales","HR"),
  Years_of_Service = c(5,3,7,4,2),
  Performance_Score = c(85,92,78,90,76)
)

employee

# Line Chart
plot(employee$Employee_ID,
     employee$Performance_Score,
     type = "o",
     col = "blue",
     pch = 16,
     lwd = 2,
     main = "Employee Performance Trend",
     xlab = "Employee ID",
     ylab = "Performance Score")

legend("bottomright",
       legend = "Performance Score",
       col = "blue",
       lty = 1,
       pch = 16)

# Count Employees by Department
dept <- table(employee$Department)

# Bar Chart
barplot(dept,
        col = "lightgreen",
        main = "Employees by Department",
        xlab = "Department",
        ylab = "Number of Employees")


# Scatter Plot
plot(employee$Years_of_Service,
     employee$Performance_Score,
     pch = 19,
     col = "red",
     main = "Years of Service vs Performance",
     xlab = "Years of Service",
     ylab = "Performance Score")

# Regression Line
abline(lm(Performance_Score ~ Years_of_Service,
          data = employee),
       col = "blue",
       lwd = 2)



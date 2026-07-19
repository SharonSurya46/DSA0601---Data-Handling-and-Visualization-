# Read Dataset
inventory <- read.csv("C:\\Users\\svkss\\Documents\\DHV files\\lab exps\\Product_ID,Product_Name,Category,Qu.csv")

# Bar Chart
barplot(inventory$Quantity_Available,
        names.arg=inventory$Product_Name,
        col="skyblue",
        main="Product Inventory Quantity",
        xlab="Products",
        ylab="Quantity Available")


# Stacked Bar Chart
data <- rbind(inventory$Quantity_Available)

colnames(data) <- inventory$Product_Name

barplot(data,
        beside=FALSE,
        col=rainbow(5),
        names.arg="Inventory",
        legend.text=inventory$Product_Name,
        main="Product Quantities by Category")

plot(inventory$Price,
     inventory$Quantity_Available,
     pch=19,
     col="red",
     main="Price vs Quantity Available",
     xlab="Price (₹)",
     ylab="Quantity Available")

abline(lm(Quantity_Available~Price,
          data=inventory),
       col="blue",
       lwd=2)





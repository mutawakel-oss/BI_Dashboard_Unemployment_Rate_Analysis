pods_cw_dataset<-read.csv("Transposed Dataset.csv", header = TRUE)
pods_cw_dataset<-pods_cw_dataset[,-5]
head(pods_cw_dataset,100)
names(pods_cw_dataset)
summary(pods_cw_dataset)
skimr::skim(pods_cw_dataset)
boxplot(pods_cw_dataset[,3:12])
plot(density(pods_cw_dataset$Inflation..GDP.deflator..annual...))
abline(v=mean(pods_cw_dataset$Inflation..GDP.deflator..annual...), col="red")
abline(v=median(pods_cw_dataset$Inflation..GDP.deflator..annual...), col="blue")


outlier_values<- boxplot.stats(pods_cw_dataset$Unemployment..total....of.total.labor.force...modeled.ILO.estimate.)$out
#Following command will apply the square root on the variable (inflation_GDP)
#and add a new column called (unskewed_inflation_GDP)
pods_cw_dataset$unskewed_inflation_GDP<-
sapply(pods_cw_dataset$Inflation..GDP.deflator..annual...,sqrt)


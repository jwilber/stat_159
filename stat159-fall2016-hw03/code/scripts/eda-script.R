# ------------- hw3 ------------------------
# Produces the following:

# histogram-sales.png                
# histogram-tv.png                   
# histogram-radio.png                
# histogram-newspaper.png            
# scatterplot-matrix.png             
# eda-output.txt                   
# correlation-matrix.RData            



source('./data')
adv <- read.csv('data/Advertising.csv')
adv <- adv[,2:5]   # remove index column




# Create and Save Histograms 




column_names <- colnames(adv)

for( col_name in  column_names){
  file_name <- paste("images/histogram-", tolower(col_name), ".png", sep = "")
  png(file = file_name)
  hist(adv[,col_name],
       main = paste("Histogram for ", col_name, "column"),
       xlab = "Units", col = 'skyblue1')
  dev.off()
  message("File Save Successful: ", file_name)
}

#--------------- End Histograms -------------------





# --------------------------------------------------------

# create eda-output.txt
sink(file = paste("data/eda-output.txt", sep = ""))
cat(" This file contains two outputs computed from the Advertising.csv data set.
    It contains summary statistics and the correlation matrix.", "\n\n")

cat("\n\n")

# compute summary statistics
cat("Summary Statistics for Advertising data set\n")
cat("# --------------------------------------------------------\n")
print(summary(adv))

cat("\n\n\n")
# compute corelation matrix
cat("Correlation Matrix\n")
cat("# --------------------------------------------------------\n")
adv_cor <- cor(adv)
print(adv_cor)
sink()
# save to .Rdata
save(adv_cor, file = "data/correlation-matrix.RData")



file_name <- paste("images/histogram-", tolower(col_name), ".png", sep = "")
png(file = file_name)

png("images/scatterplot-matrix.png")
pairs(adv)
dev.off()
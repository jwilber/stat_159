# Title: regression-script.R
# Author: Jared Wilber
#
#
# Reads in the Advertising.csv data set 
# and computes a "regression" object---via lm()---as well as 
# the summary of such regression object---via summary(). 
# These objects are saved in the file regression.RData. This script also produces 
# the three diagnostics plots residual-plot.png, scale-location-plot.png, and normal-qq-plot.png 


source('~/Desktop/stat159/stat_159/stat159-fall2016-hw03/data')
adv <- read.csv('data/Advertising.csv')
adv <- adv[,2:5]   # remove index column

lm.fit <- lm(Sales ~ ., data=adv)
lmsum <- summary(lm.fit)
save(lm.fit, lmsum, file="data/regression.Rdata")
# save(list = ls(all = TRUE),
 #    file = "../../data/regression.RData")
#--------------------------------------------------------------------------------------------------------
envpath <- "~/Desktop/stat159/stat_159/stat159-fall2016-hw03/"


# Diagnositics Plots

# residual-plot.png
png("images/residual-plot.png")
plot(lm.fit, which = 1)
dev.off()

# normal-qq-plot.png
png("images/normal-qq-plot.png")
plot(lm.fit, which = 2)
dev.off()

# scale-location-plot.png
#png(paste0(envpath, "/images/scale-location-plot.png"))
png("images/scale-location-plot.png")
plot(lm.fit, which = 3)
dev.off()

#--------------------------------------------------------------------------------------------------------


# Scatter Plots



message("Begin Scatter Plots")

var_names <- colnames(adv)[1:3]

for( var in  var_names){
  slm.fit <- lm(adv[,"Sales"]~adv[,var], data = adv)
  file_name <- paste(envpath, "/images/scatterplot-", tolower(var), "-sales.png", sep = "")
  png(file = file_name)
  plot(adv[,var],
       adv[,"Sales"],
       xlab = var,
       ylab = "Sales",
       col = "skyblue1",
       main = paste("Regression for ", var, "~Sales", sep=""))
  abline(slm.fit, col = "coral")
  dev.off()
  message("File Save Successful: ", file_name)
  
  rm(file_name)
}



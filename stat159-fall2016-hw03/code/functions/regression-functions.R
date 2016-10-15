
source('./data/')
adv <- read.csv('data/Advertising.csv')
adv <- adv[,2:5]   # remove index column

# Create lm object and save summary(lm)
lm.fit <- lm(Sales ~ TV + Radio + Newspaper, data=adv)
lmsum <- summary(lm.fit)






#--------------------------------
# RSS

residual_sum_squares <- function(x) {
  # input: lm() object
  # output: Residual Sum of Squares Value
  
  sum( '^'(x$model[,1] - x$fitted.values, 2) )
  
}

residual_sum_squares(lm.fit)



total_sum_squares <- function(x) {
  # input: lm object
  # output: Total Sum of Squares Value
  
  sum( '^'(x$model[,1] - mean(x$model[,1]), 2) )
}

total_sum_squares(lm.fit)



rse <- function(x) {
  # input: lm() object
  # output: RSE
  n   <- length(x$residuals)
  RSS <- residual_sum_squares(x)
  sqrt( (1 / (n - 2)) * RSS)
}

rse(lm.fit)


# R^2

r_squared <- function(x) {
  # input: lm() object 
  # output: R^2 value
  TSS <- total_sum_squares(x)
  RSS <- residual_sum_squares(x)
  1 - (RSS/ TSS)
}

r_squared(lm.fit)


# F-stat

f_statistic <- function(x) {
  # input: lm() object 
  # output: F-statistic
  p     <- ncol(x$model) - 1
  n     <- nrow(x$model)
  RSS   <- residual_sum_squares(x)
  TSS   <- total_sum_squares(x)
  num   <- (TSS - RSS)/p
  denom <- RSS / (n - p - 1)
  num / denom
}

f_statistic(lm.fit)

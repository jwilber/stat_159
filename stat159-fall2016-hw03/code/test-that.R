# Test file
library(testthat)


source("./code/functions/regression-functions.R")
load("./data/regression.RData")

lm.fit <- lm(Sales ~ TV + Radio + Newspaper, data=adv)
lmsum <- summary(lm.fit)


# Title: test-regression.R
# Author: Jared Wilber
#
# Description: tests the functions of functions/regression-functions.R
#


library(testthat)

source("./code/functions/regression-functions.R")

load("./data/regression.RData")

#--------------------------------------------------------------------------------------------------------




# RSS
context("Test RSS")
test_that("RSS is accurate ",{
  
  expect_equal(residual_sum_squares(lm.fit), sum(lm.fit$residuals^2))
  
})  



# TSS  
context("Test total_sum_squares")
test_that("total_sum_squares works ",{
  
  expect_equal(total_sum_squares(lm.fit), sum((adv$Sales - mean(adv$Sales))^2))
  
  
})



# RSE  
context("Test RSE")
test_that("RSE works ",{
  
  
  expect_lt(abs(rse(lm.fit) - lmsum$sigma), 0.1)
})



#R^2
context("Test R-Squared")
test_that("R-Squared works" , {
  
  expect_equal(r_squared(lm.fit), lmsum$r.squared)
})



# f-Statistic
context("Test F-statistic")
test_that("F-statistic works", {
  
  expect_equal(f_statistic(lm.fit), lmsum$fstatistic[[1]])
  
  
})

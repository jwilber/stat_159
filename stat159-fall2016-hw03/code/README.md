# This folder contained the following folders and R Scripts:



test-that.R
Author: Jared Wilber
Description: Contains the same informatino as tests/test-regression.R

functions/
	__regression-functions.R__
	Author: Jared Wilber
	Description: R script that calculates the regression coefficients from an lm() object.


scripts/
	__eda-script.R__  
	Author: Jared Wilber
	Description: Script that reads in the Advertising.csv data set and computes summary statistics, histograms for all the 	variables (TV, Radio, Newspaper, and Sales), matrix of correlations among all variables, and scatterplot-matrix
	(pairwise scatterplots). The summary statistics and the matrix of correlations are saved in a file eda-output.txt, and the correlation matrix is also saved in binary format correlation-matrix.RData. In turn, each exploratory chart is saved in PNG format.
	
__regression-script.R__  
Author: Jared Wilber
Description:  Script that reads in the Advertising.csv data set and computes a "regression" object---via lm()---as well as the summary of such regression object---via summary(). These objects are saved in the file regression.RData. This script also produces the three diagnostics plots residual-plot.png, scale-location-plot.png, and normal-qq-plot.png 

__session-info-script.R__
	Author: Jared Wilber
	Description: Contains the output from the sessionInfo() function run by the author.



__test-that.R__
Author: Jared Wilber
Description: Script that runs tests (written in test-regression.R) on regression-functions.R


tests/
	__test-regresion.R__
  Author: Jared Wilber 
	Description: Script that tests the functions of functions/regression-functions.R using Hadley Wikham's _test-that_ package


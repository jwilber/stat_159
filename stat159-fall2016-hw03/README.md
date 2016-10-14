# stat159-fall2016-hw03
## Multiple Linear Regression (ISLR Reimplementation) 
#### Jared Wilber
#### October 14, 2016

***

##### Repository Description
This is a public repository containing the necessary data and source code for my reproduction of the multiple regression section 3.2 of __Introduction to Statistical Learning__ by Hastie, Tibshirani, James, and Witten.

It is homework 3 of Stat 159 at UC Berkeley

***

#### File Structure
  

stat159-fall2016-hw03/  
+    .gitignore  
+    README.md  
+    LICENSE  
+    Makefile  
+    session-info.txt                     # produced by session-info-script.R  
+    code/  
      + README.md  
      + test-that.R  
      + functions/  
        + regression-functions.R  
      + scripts/  
        + eda-script.R  
        + regression-script.R  
        + session-info-script.R  
      + tests/  
        + test-regression.R  
    + data/  
      + README.md  
      + Advertising.csv  
      + eda-output.txt                      # produced by eda-script.R  
      + correlation-matrix.RData            # produced by eda-script.R  
      + regression.RData                    # produced by regression-script.R  
    + images/  
        + histogram-sales.png                # produced by eda-script.R  
        + histogram-tv.png                   # produced by eda-script.R  
        + histogram-radio.png                # produced by eda-script.R  
        + histogram-newspaper.png            # produced by eda-script.R  
        + scatterplot-matrix.png             # produced by eda-script.R  
        + scatterplot-tv-sales.png           # produced by regression-script.R  
        + scatterplot-radio-sales.png        # produced by regression-script.R  
        + scatterplot-newspaper-sales.png    # produced by regression-script.R  
        + residual-plot.png                  # produced by regression-script.R  
        + scale-location-plot.png            # produced by regression-script.R  
        + normal-qq-plot.png                 # produced by regression-script.R  
    + report/  
        + report.Rmd  
        + report.pdf  


***

#### Author Information
My name is Jared Wilber. I am currently a senior in statistics at UC Berkeley interest in all things data science.

***

#### Reproducing This Repository
To reproduce this repository, fork/download the contents of the repository and run the R scrips.
Alternatively, clone the repo and run the Makefile in the associated directory.

***

### Licenses
This repository is __open source__.

This repository has the __MIT__ license for software. The raw details of the license are in the LICENSE file of this repository.

The creative commons license for media is as follows:
<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.


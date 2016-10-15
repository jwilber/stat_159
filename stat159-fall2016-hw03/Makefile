.PHONY: all eda regression session tests report clean data

# all	
all: eda regression report

# data downloads Advertising dataset
data: 
	 curl -o data/Advertising.csv http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

# sourcing scripts for eda, regression, session info
eda: data
	Rscript -e 'source("code/scripts/eda-script.R")'

regression: data
	Rscript -e 'source("code/scripts/regression-script.R")'

session:
	Rscript -e 'source("code/scripts/session-info-script.R")'


# test regression function
tests: 
	Rscript -e 'source("code/test-that.R")'


report: 
	pandoc -s report/report.Rmd -o report/report.html


	
# Clean output file
clean:
	rm -f report/report.pdf

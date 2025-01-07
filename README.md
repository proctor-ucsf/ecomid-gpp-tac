# ecomid-gpp-tac

Comparison of xTAG-GPP and TaqMan array card assays in the ECoMiD birth cohort


This repository includes R code to run all of the analysis for the paper:

Torres Ayala et al. **Multiplex PCR detection of enteric pathogens in a community-based birth cohort in Ecuador: comparison of xTAG-GPP and TaqMan array card assays**. _Open Forum Infectious Diseases_ (2025). (in press)

This work was funded by the National Institute of Allery and Infectious Diseases (R01-AI162867, R01-A137679).

If you have any questions about the files in this repository, please contact Ben Arnold at UCSF (ben.arnold@ucsf.edu).

## Linked Repositories and Additional Resources

### Open Science Framework
This GitHub repository is mirrored on the Open Science Framework (OSF).  The OSF project page includes additional study-related resources, including the compiled HTML computational notebooks created from the `.Rmd` files.   You can download the public datasets to your local repository using the script [`0-gpp-tac-comp-download-public-data.R`](https://github.com/proctor-ucsf/ecomid-gpp-tac/blob/main/R/0-gpp-tac-comp-download-public-data.R).

https://osf.io/jh64t/

## Additional Information


### System Requirements

All analyses were run using R software version 4.4.1 on Mac OSX Sequoia using the RStudio IDE (https://www.rstudio.com).

`> sessionInfo()`

`R version 4.4.1 (2024-06-14)`

`Platform: aarch64-apple-darwin20`

`Running under: macOS 15.1.1`

In this repository we have used the `renv` package to archive the package versions so that you and reproduce the exact compute environment, should you wish to do so. 

### Installation Guide and Instructions for Use (Desktop)

You can download and install R from CRAN: https://cran.r-project.org

You can download and install RStudio from their website: https://www.rstudio.com

All R packages required to run the analyses are sourced in the file `0-config.R`.

The installation time should be < 2 minutes total on a typical desktop computer.

To reproduce all analyses in the paper, we recommend that you: 

1. Clone the GitHub repository to your computer

For example, in the location on your computer where you would like to clone the repository, you could type into the Terminal command:

`git clone https://github.com/proctor-ucsf/ecomid-gpp-tac.git`

2. Recreate the exact package environment using the `renv` package. 

You can do this by opening the R project file ([gpp-tac-comp.Rproj](https://github.com/proctor-ucsf/ecomid-gpp-tac/blob/main/gpp-tac-comp.Rproj)) in RStudio, loading the `renv` package, and typing `renv::restore()` to restore the package environment from the projects [renv.lock](https://github.com/proctor-ucsf/ecomid-gpp-tac/blob/main/renv.lock) file. 

3. Download the public data from the OSF repository by running the script [`0-gpp-tac-comp-download-public-data.R`](https://github.com/proctor-ucsf/ecomid-gpp-tac/blob/main/R/0-gpp-tac-comp-download-public-data.R).
  
4. All of the analysis scripts should run smoothly (scripts `1-xx.Rmd` to `4-xx.Rmd`). 

### Additional details

The data analyses on the above Mac desktop configuration required <2 minutes to run. 

### License

This project is covered by the CC0 1.0 Universal license.

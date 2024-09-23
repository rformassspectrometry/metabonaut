# Exploring and analyzing LC-MS data

[![License: CC BY-NC 4.0](https://img.shields.io/badge/License-CC%20BY--NC%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc/4.0/)

This workshop provides an overview of recent developments in Bioconductor to
work with mass spectrometry data
([MsExperiment](https://github.com/RforMassSpectrometry/MsExperiment),
[Spectra](https://github.com/RforMassSpectrometry/Spectra)) and specifically
LC-MS data ([xcms](https://github.com/sneumann/xcms)) and walks through the
preprocessing of a small data set emphasizing on selection of data-dependent
settings for the individual preprocessing steps.

Covered topics are:

- 

The full R code of all examples along with comprehensive descriptions is
provided in the [end-to-end-untargeted-metabolomics.Rmd](./vignettes/end-to-end-untargeted-metabolomics.Rmd)
file. This file can be opened with e.g. RStudio which allows execution of the
individual R commands (see section below for additionally required R
packages). The R command `rmarkdown::render("xcms-preprocessing.Rmd")` would
generate the html file
[xcms-preprocessing.html](https://github.com/rformassspectrometry/metabonaut/end-to-end-untargeted-metabolomics.html).

## Important to note 

This tutorial excpet a user that has some basic knowledge of R and Rmarkdown. 
We would advise to go through a short tutorial for each in order to be 
comfortable testing the code and easily adapting it tooyur own data. 

## Citation

This workflow (and future versions) are deposited at
[Zenodo](https://zenodo.org). To cite this version of the tutorial:

Johannes Rainer and Philippine Louail. xcmsTutorials version 1.1.0: Exploring
and analyzing LC-MS data with Spectra and xcms. Zenodo, May
13, 2024. https://doi.org/10.5281/zenodo.11185521.


## Installation

```r
install.packages("BiocManager")
BiocManager::install("RforMassSpectrometry/metabonaut",
    dependencies = TRUE, ask = FALSE, update = TRUE)
```




## Contribution

For contributions, see the [RforMassSpectrometry contributions
guideline](https://rformassspectrometry.github.io/RforMassSpectrometry/articles/RforMassSpectrometry.html#contributions).


## Code of Conduct

See the [RforMassSpectrometry Code of
Conduct](https://rformassspectrometry.github.io/RforMassSpectrometry/articles/RforMassSpectrometry.html#code-of-conduct).

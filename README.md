# Exploring and analyzing untargeted metabolomics data

[![License: CC BY-NC 4.0](https://img.shields.io/badge/License-CC%20BY--NC%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc/4.0/)


Welcome to Metabonaut ! :astronaut:

This initiative present a series of workflows based on a small LC-MS/MS dataset
using R and Bioconductor packages. Throughout the workflows, we demonstrate how 
the various algorithms can be adapted to the particular data set and how various
R packages can be seamlessly integrated to ensure efficient and reproducible 
processing. 

The main workflow presented is the ["Complete end-to-end LC-MS/MS Metabolomic
Data analysis"](https://rformassspectrometry.github.io/metabonaut/articles/end-to-end-untargeted-metabolomics.html) 

The full R code of all examples along with comprehensive descriptions is
provided in the [end-to-end-untargeted-metabolomics.Rmd](./vignettes/end-to-end-untargeted-metabolomics.Rmd)
file. This file can be opened with e.g. RStudio which allows execution of the
individual R commands (see section below for additionally required R
packages). The R command `rmarkdown::render("xcms-preprocessing.Rmd")` would
generate the html file
[xcms-preprocessing.html](https://github.com/rformassspectrometry/metabonaut/end-to-end-untargeted-metabolomics.html).

## Important to note 

This tutorial expect a user that has some basic knowledge of R and Rmarkdown. 
We would advise to go through a short tutorial for each in order to be 
comfortable testing the code and easily adapting it to your own data. For Rmarkdown, 
click [here](https://bookdown.org/yihui/rmarkdown/) for R, [here](https://learn-r.org/) and [here](https://swirlstats.com/students.html) 
you can find a really fun way to learn basic R programming through an interactive short course

## Installation

The workshop files along with an R runtime environment including all required
packages and the RStudio (Posit) editor are all bundled in a *docker*
container. After installation, this docker container can be run on the computer
and the code and examples from the workshop can be evaluated within this
environment (without the need to install any additional packages or files).

This version of the workshop uses packages from **Bioconductor devel**
 and hence bases on Bioconductor's docker container with the development version of the 
 packages. A more stable version will come soon.
 The required steps for installation are:

- If you don't already have, install [docker](https://www.docker.com/). Find
  installation information [here](https://docs.docker.com/desktop/).
- Get the [docker image](https://hub.docker.com/r/rformassspectrometry/metabonaut) of
  this tutorial e.g. from the command line with `docker pull
  rformassspectrometry/metabonaut:latest`.
- Start the docker container, either through the Docker Desktop, or on the
  command line with
```
  docker run \
      -e PASSWORD=bioc \
      -p 8787:8787 \
      rformassspectrometry/metabonaut:latest
```

- Enter `http://localhost:8787` in a web browser and log in with username
  `rstudio` and password `bioc`.
- In the RStudio server version: open any of the R-markdown (*.Rmd*) files in
  the *vignettes* folder and evaluate the R code blocks in that document.

For manual installation, an R version >= 4.4.0 is required as well as recent
versions of the packages used in the workflow.

For now 2 packages used in this workflow are not on bioconductor and therefore need to be
downloaded from github.
Run the code as follow: 

```r
install.packages("BiocManager")
BiocManager::install(c('RCurl', 'xcms', 'MsExperiment', 'SummarizedExperiment',
    'Spectra', 'MetaboCoreUtils', 'limma', 'matrixStats', 'pander', 
    'RColorBrewer', 'pheatmap', 'vioplot', 'ggfortify', 'gridExtra', 
    'AnnotationHub', 'CompoundDb', 'MetaboAnnotation', 
    'RforMassSpectrometry/MsIO', 'RforMassSpectrometry/MsBackendMetaboLights'), 
ask = FALSE, dependencies = TRUE)"
```

## Known issues 

This workflow is still getting ready to be fully deployed, therefore we might have some ongoing issue that we are actively resolving. If we know about them we will list them below.

For now, we are not aware of any problem in the code. If you have any issue be sure to check that you have the latest devel version of all the packages. If the issue is not resolved by the updating of packages then please report it with a reproducible example on github [here](https://github.com/rformassspectrometry/metabonaut/issues)

If you have any other issue, do not hesitate to report them to us. 

## Contribution

For contributions, see the [RforMassSpectrometry contributions
guideline](https://rformassspectrometry.github.io/RforMassSpectrometry/articles/RforMassSpectrometry.html#contributions).


## Code of Conduct

See the [RforMassSpectrometry Code of
Conduct](https://rformassspectrometry.github.io/RforMassSpectrometry/articles/RforMassSpectrometry.html#code-of-conduct).

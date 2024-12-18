# metabonaut 0.0

## Changes in 0.0.6

- Moving The PercentMissing filtering at the end of
  the pre-processing steps as it needs to be done 
  before normalization.
- Addition  of collapsing code to improve readability. 
- Reduction of table size

## Changes in 0.0.5

- Require *MsIO* version 0.0.8 to allow reading of stored
  `MsBackendMetaboLights` objects.
- Small updates and changes to the Seamless Alignment vignette:
  - simplify import of previously stored result object
  - avoid using the variable name `param` for every parameter object

## Changes in 0.0.4
- Required *alabaster.se*.
- In the end-to-end vignette:
  - Removal of Spectra data in depth visualisation to
    move to the Data investigation vignette
  - Removal of internal standard matching to features
    in the Normalization part.
- Save an load *lcms1* and *res* object from the end-to-end workflow
  to be used in the Seamless Alignment vignette. Using *MsIO* and
  *alabaster.se*


## Changes in 0.0.3
- Require *xcms* version 4.3.4 and install the package from github.

## Changes in 0.0.2
- Switch to Quarto instead of Rmarkdown
- Addition of Alignment to reference dataset vignette
- Addition of the Data investigation vignette
- Addition of the Install vignette

## Changes in 0.0.1
- Addition of basic files for a workflow package.
- Addition of the end-to-end vignette.
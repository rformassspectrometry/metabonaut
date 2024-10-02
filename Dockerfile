FROM bioconductor/bioconductor_docker:devel

LABEL name="rformassspectrometry/metabonaut" \
      url="https://github.com/rformassspectrometry/metabonaut" \
      maintainer="philippine.louail@eurac.edu" \
      description="Docker container to run the different tutorials hosted on metabonaut. This version bases on the Bioconductor devel docker image." \
      license="Artistic-2.0"

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

## Install the required packages
RUN Rscript -e "BiocManager::install(c('RCurl', 'xcms', 'MsExperiment', 'SummarizedExperiment', \
    'Spectra', 'MetaboCoreUtils', 'limma', 'matrixStats', 'pander', 'RColorBrewer', \
    'pheatmap', 'vioplot', 'ggfortify', 'gridExtra', 'AnnotationHub', 'CompoundDb', \
    'MetaboAnnotation', 'RforMassSpectrometry/MsIO', 'RforMassSpectrometry/MsBackendMetaboLights'), \
    ask = FALSE, dependencies = TRUE)" && \
    Rscript -e "BiocManager::install('sneumann/xcms', ref = 'phili', ask = FALSE)"


## Install the current package with vignettes
RUN Rscript -e "devtools::install('.', dependencies = TRUE, type = 'source', build_vignettes = TRUE)"

## Set the correct user for subsequent commands
USER rstudio
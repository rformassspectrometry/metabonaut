FROM bioconductor/bioconductor_docker:devel

LABEL name="rformassspectrometry/metabonaut" \
      url="https://github.com/rformassspectrometry/metabonaut" \
      maintainer="philippine.louail@eurac.edu" \
      description="Docker container to run the different tutorials hosted on metabonaut. This version bases on the Bioconductor devel docker image." \
      license="Artistic-2.0"

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

## Install quarto on docker image
RUN curl -LO https://quarto.org/download/latest/quarto-linux-amd64.deb
RUN gdebi --non-interactive quarto-linux-amd64.deb

## Create a directory we can use to share data.
RUN mkdir -p /shared/data

## Install the required packages
RUN Rscript -e "BiocManager::install(c('RCurl', 'xcms', 'MsExperiment', 'SummarizedExperiment', \
    'Spectra', 'MetaboCoreUtils', 'limma', 'matrixStats', 'pander', 'RColorBrewer', \
    'pheatmap', 'vioplot', 'ggfortify', 'gridExtra', 'AnnotationHub', 'CompoundDb', \
    'MetaboAnnotation', 'RforMassSpectrometry/MsIO', 'RforMassSpectrometry/MsBackendMetaboLights', 'quarto'), \
    ask = FALSE, dependencies = TRUE)" && \
    Rscript -e "BiocManager::install('sneumann/xcms', ref = 'phili', ask = FALSE)"

## Install the current package with vignettes
RUN Rscript -e "devtools::install('.', dependencies = TRUE, type = 'source', build_vignettes = FALSE)"

USER rstudio

## build article for end-to-end:test
RUN Rscript -e "quarto::quarto_render('vignettes/a-end-to-end-untargeted-metabolomics.qmd', quiet = FALSE)"

USER root

## Copy the RData to the shared folder
RUN cp /home/rstudio/vignettes/preprocessed_lcms1.RData /shared/data/
RUN chmod -R 777 /shared

RUN Rscript -e "devtools::install('.', dependencies = TRUE, type = 'source', build_vignettes = TRUE)"

RUN find vignettes/ -name "*.html" -type f -delete && find vignettes/ -name "*_files" -type d -exec rm -r {} +

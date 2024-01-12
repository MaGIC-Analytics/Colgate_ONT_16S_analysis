FROM rocker/tidyverse
LABEL description="Docker image for phyloseq analysis (including DeSeq2 and ANCOMBC)"

RUN apt-get update && apt-get install -y \ 
    libhdf5-dev build-essential libxml2-dev libcairo2-dev libsqlite-dev libpq-dev libssh2-1-dev libsasl2-dev libssl-dev libv8-dev libsodium-dev libglpk40 libgdal-dev libboost-dev libomp-dev libbamtools-dev libboost-iostreams-dev libboost-log-dev libboost-system-dev libboost-test-dev libcurl4-openssl-dev libz-dev libarmadillo-dev libhdf5-cpp-103 gsl-bin libgsl0-dev

RUN R -e "install.packages(c('BiocManager'))"
RUN R -e "BiocManager::install(version = "3.18")"
RUN R -e "BiocManager::install(c('phyloseq', 'DESeq2', 'EnhancedVolcano', 'ANCOMBC', 'microbiome'))"
RUN R -e "install.packages(c('ggnetwork', 'vegan', 'ggthemes', 'cowplot'))"

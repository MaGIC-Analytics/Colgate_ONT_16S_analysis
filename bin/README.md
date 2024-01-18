# bin

Primary analysis was run via the Nextflow workflow: ONT_demux v1.0.0 [found here](https://github.com/MessyaszA/ONT_demux) \
The workflow to prep primary analysis results for secondary analysis (create biom file with taxonomic classification to the 16S HOMD database) can be [found here](https://github.com/MessyaszA/bracken_taxpasta).

The bin/ directory includes Dockerfile for setting up R environment to run secondary analysis. \
Can be pulled via docker: docker pull messyasza/phyloseq_deseq_ancom

Code for building the HOMD 16S database via nextflow can be found in the database_build_nextflow directory.

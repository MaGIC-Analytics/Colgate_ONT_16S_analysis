# bin

Primary analysis was run via the Nextflow workflow: https://github.com/MessyaszA/ONT_demux \

Includes Dockerfile for setting up R environment to run secondary analysis. \
Can be pulled via docker: docker pull messyasza/phyloseq_deseq_ancom

Code for building the HOMD 16S database via nextflow can be found in the database_build_nextflow directory. \
This code can be executed as follows:\
nextflow run bracken16S_db.nf --kraken_library HOMD_16S_rRNA_RefSeq_V15.23.fasta \
*for the --kraken_library command need to provide the path to the downloaded HOMD 16S database (see lib/ folder)


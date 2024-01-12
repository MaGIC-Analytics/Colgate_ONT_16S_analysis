# Libraries and databases used

For primary analysis, trimmed/qc reads reads were first aligned to the standard Kraken2 built database: \
s3://genome-idx/kraken/k2_standard_20230605.tar.gz \
More updated Kraken built databases can be found here: https://benlangmead.github.io/aws-indexes/k2

To taxonomically classify reads for secondary analysis, trimmed/qc filtered reads were aligned to a Kraken/Bracken build of the HOMD 16S database: https://www.homd.org/ftp/16S_rRNA_refseq/HOMD_16S_rRNA_RefSeq/current/HOMD_16S_rRNA_RefSeq_V15.23.fasta \
This database was edited in order to work with a Kraken build. The edited database is available here for download. \
Code for building the Kraken/Bracken HOMD database can be found in the bin/ directory.

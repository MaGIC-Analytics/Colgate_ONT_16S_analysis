# Workflow for custom Kraken/bracken database

This nextflow code can be executed as follows:\
nextflow run main.nf --kraken_library EDIT_HOMD_16S_rRNA_RefSeq_V15.23.fasta \

**The HOMD fasta file after the --kraken_library parameter must be the edited HOMD database which includes: "kraken:taxid|" in front of the GenBank accession number (number after GB in fasta headers). This is necessary  for Kraken to correctly assign taxonomy. The database uploaded to the lib/ folder includes this edit. 

# Workflow for custom Kraken/bracken database

This nextflow code can be executed as follows:\
nextflow run bracken16S_db.nf --kraken_library HOMD_16S_rRNA_RefSeq_V15.23.fasta \

*for the --kraken_library command need to provide the path to the downloaded HOMD 16S database (for download link see lib/ folder)
**The HOMD fasta file must be edited to include: "kraken:taxid|" in front of the GenBank accession number (number after GB in fasta headers) for Kraken to correctly assign taxonomy.\
  The database uploaded to the lib/ folder includes this edit. 

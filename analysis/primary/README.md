# Primary Analysis

Primary analysis includes basecalling, barcoding, quality filtering, and taxonomically classifying 16S reads from Oxford Nanopore sequencing. 

## Description
The pipeline used is from a nextflow workflow: ONT_demux v1.0.0 [accesible here](https://github.com/MessyaszA/ONT_demux)

## Metadata
Setting up this pipeline for execution involves establishing an appropriate metadata file. This is a csv file that enables parsing the files correctly together and labelling samples appropriately. 

Follow traditional naming restrictions- IE dont use special characters, spaces etc. 

The metadata csv files for each sequencing batch can be found in the metadata_csvs/ directory. 

## Execution Tutorial
A tutorial on executing ONT_demux can be [found here](https://github.com/MessyaszA/ONT_demux/blob/main/docs/execution_tutorial.md).

## Summary Features:
- Basecalling with [dorado](https://github.com/nanoporetech/dorado)
- Demultiplexing (barcoding) with [guppy](https://community.nanoporetech.com/protocols/Guppy-protocol/v/gpb_2003_v1_revt_14dec2018)
- Sample and trimming QC with [pycoQC](https://adrienleger.com/pycoQC/), [fastp](https://github.com/OpenGene/fastp), [NanoPlot](https://github.com/wdecoster/NanoPlot), and [Chopper](https://github.com/wdecoster/chopper).
- Predictive QC and contaminant detection with [Kraken2](https://ccb.jhu.edu/software/kraken2/)

# Primary Analysis

Primary analysis includes basecalling, barcoding, quality filtering, and taxonomically classifying 16S reads from Oxford Nanopore sequencing. 

## Description
The pipeline used is from a nextflow workflow: ONT_demux v1.0.0 [accesible here](https://github.com/MessyaszA/ONT_demux)

## Execution Tutorial
A tutorial on executing ONT_demux can be [found here](https://github.com/MessyaszA/ONT_demux/blob/main/docs/execution_tutorial.md).

An example execution command via a slurm executor on an HPC is as follows:
```
nohup ~/nextflow -bg run MessyaszA/ONT_demux -r main --samplesheet PLA1_PLA2_PLA3_metadata.csv --outdir PLA1_PLA2_PLA3_results/ --barcode_kit SQK-16S024 -profile slurm --gpu_active --gpus 1 > log.txt
```

## Metadata
Setting up this pipeline for execution involves establishing an appropriate metadata file. This is a csv file that enables parsing the files correctly together and labelling samples appropriately. 

Follow traditional naming restrictions- IE dont use special characters, spaces etc. 

The metadata csv files for each sequencing batch can be [found here](https://github.com/MaGIC-Analytics/Colgate_ONT_16S_analysis/tree/main/analysis/primary/metadata_csvs). 

## Summary Features:
- Basecalling with [dorado](https://github.com/nanoporetech/dorado)
- Demultiplexing (barcoding) with [guppy](https://community.nanoporetech.com/protocols/Guppy-protocol/v/gpb_2003_v1_revt_14dec2018)
- Sample and trimming QC with [pycoQC](https://adrienleger.com/pycoQC/), [fastp](https://github.com/OpenGene/fastp), [NanoPlot](https://github.com/wdecoster/NanoPlot), and [Chopper](https://github.com/wdecoster/chopper).
- Predictive QC and contaminant detection with [Kraken2](https://ccb.jhu.edu/software/kraken2/)
- Multiqc reports, available here in the multiqc/ directory.

More information on which samples belong within each sequencing batch can be downloaded [from here](https://github.com/MaGIC-Analytics/Colgate_ONT_16S_analysis/blob/main/docs/ONT_16S_workflow_and_results.nb.html)

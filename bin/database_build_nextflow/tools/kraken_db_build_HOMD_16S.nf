#!/usr/bin/env nextflow

// Specify DSL2
nextflow.enable.dsl = 2

// Process definition

process Kraken2_db_build {
    label 'process_high'

    container "messyasza/kraken2_https:edit"

    publishDir "${params.outdir}/",
        mode: "copy",
        overwrite: true,
        saveAs: { filename -> filename }

    input:
        val(bracken_db)

    output:
        path("./${bracken_db}/", type:'dir', emit: kracken2_db)

    script:
        """
        mkdir -p $bracken_db
        kraken2-build --db $bracken_db --add-to-library $params.kraken_library
        kraken2-build --db $bracken_db --download-taxonomy
        kraken2-build --db $bracken_db --build
        bracken-build -d $bracken_db -l $params.readlen
        """
}

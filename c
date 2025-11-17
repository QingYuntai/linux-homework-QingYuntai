#!/bin/bash
#homework_QingYuntai

mkdir -p terminal_task/results

awk -F'\t' '
$3 == "gene" &&
$9 ~ /gene_type=unprocessed_pseudogene/ {

    gene_name = "unknown"
    if (match($9, /gene_name=[^;]+/)) {
        gene_name = substr($9, RSTART+10, RLENGTH-10)
    }

    if ($7 == "+") {
        start = $4
        end = $4 + 1
    } else if ($7 == "-") {
        start = $5
        end = $5 + 1
    }
 
    print $1 "\t" start "\t" end "\t" $7 "\t" gene_name
}' data/gencode.v41.basic.annotation.gff3 > terminal_task/results/result.t

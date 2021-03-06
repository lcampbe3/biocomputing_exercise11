#!/bin/bash
#usage bash script_1.sh
#add newline and concatenate fasta files together then use muscle to align sequences
for i in ~/biocomp/biocomputing_exercise11/gene_sequences/"sporecoat0[1-4].fasta"
do
sed -e '$s/$/\n/' $i
done >> sporecoat.fasta

for j in ~/biocomp/biocomputing_exercise11/gene_sequences/"transporter0[1-4].fasta"
do
sed -e '$s/$/\n/' $j
done >> transporter.fasta

#alignments
~/muscle3.8.31_i86linux64 -in sporecoat.fasta -out sporecoat_align.fasta
~/muscle3.8.31_i86linux64 -in transporter.fasta -out transporter_align.fasta

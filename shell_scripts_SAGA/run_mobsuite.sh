#!/bin/bash
input="List_of_Fasta_Files.csv"
while IFS= read -r line
do
  echo "$line"
  IF="Assemblies/$line"
  OF="Hafnia_Plamids/"$line"_Plasmid"
  echo $OF
  mob_recon --infile $IF --outdir $OF
done < "$input"

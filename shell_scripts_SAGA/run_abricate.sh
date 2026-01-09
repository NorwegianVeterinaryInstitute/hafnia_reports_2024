#!/bin/bash
input="List_of_Fasta_Files_Nov205.csv"
while IFS= read -r line
do
  echo "$line"
  IF="Assemblies/$line"
  #OF_1="Hafnia_Hafnia_AMR_NCBI/"$line"_NCBI"
  #OF_2="Hafnia_Hafnia_AMR_MEGARES/"$line"_MEGARES"
  OF_3="Hafnia_VFDB_Nov2025/"$line"_VFDB"
  #OF_4="Hafnia_Hafnia_AMR_CARD/"$line"_CARD"

  #abricate --db ncbi --quiet $IF --minid 50 --mincov 60 >$OF_1
  #abricate --db megares --quiet $IF --minid 50 --mincov 60 >$OF_2
  abricate --db vfdb --quiet $IF --minid 50 --mincov 50 >$OF_3
  #abricate --db card --quiet $IF --minid 50 --mincov 60 >$OF_4

done < "$input"

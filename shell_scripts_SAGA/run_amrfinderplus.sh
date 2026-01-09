#!/bin/bash
input="List_of_Fasta_Files.csv"
while IFS= read -r line
do
  echo "$line"
  IF="Assemblies/$line"
  OF=$line"_output.csv"
  echo $OF
  amrfinder -n $IF --plus >$OF
done < "$input

# All the commands below are used in SAGA (HPC faciliaty offered by Sigma2) 
# Commands used 
## Abricate
```
#!/bin/bash
input="List_of_Fasta_Files.csv"
while IFS= read -r line
do
  echo "$line"
  IF="All_Genomes/$line"
  OF_1="Hafnia_Hafnia_AMR_NCBI/"$line"_NCBI"
  OF_2="Hafnia_Hafnia_AMR_MEGARES/"$line"_MEGARES"
  OF_3="Hafnia_Hafnia_AMR_VFDB/"$line"_VFDB"
  OF_4="Hafnia_Hafnia_AMR_CARD/"$line"_CARD"

  abricate --db ncbi --quiet $IF --minid 50 --mincov 60 >$OF_1
  abricate --db megares --quiet $IF --minid 50 --mincov 60 >$OF_2
  abricate --db vfdb --quiet $IF --minid 50 --mincov 60 >$OF_3
  abricate --db card --quiet $IF --minid 50 --mincov 60 >$OF_4

done < "$input"

```

## MOB-SUITE - Plasmids 
```
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

```

## fastANI
```
fastANI --q1 FastANI_input1.txt --q1 FastANI_input2.txt -o fastANI/All_vs_All.txt
```
## NCBI-AMRFinderPlus

```
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
```

## Phylogenomics
### CoreGene track 
```
module load Java/21.0.2
nextflow_24.10.4 run /cluster/projects/nn9305k/vi_src/ALPPACA/main.nf -c /cluster/shared/vetinst/Hafnia_Genomes/ALPCA_Output_Nov2025/saga_new.config --track core_gene --clean_mode moderate --bakta_db "/cluster/projects/nn9305k/db_flatfiles/bakta_db_v5"   --input "/cluster/shared/vetinst/Hafnia_Genomes/ALPCA_Output_Nov2025/cleaned_Combined_Genomes/Combined_Assembly_List_Final.csv" --out_dir /cluster/shared/vetinst/Hafnia_Genomes/ALPCA_Output_Nov2025/Cleaned_All/ -profile apptainer -resume
```

### CoreGenomeSNP
```
module load Java/21.0.2
nextflow_24.10.4 run /cluster/projects/nn9305k/vi_src/ALPPACA/main.nf -c /cluster/shared/vetinst/Hafnia_Genomes/ALPCA_Output_Nov2025/saga_new.config --track core_genome  --input "/cluster/shared/vetinst/Hafnia_Genomes/ALPCA_Output_Nov2025/cleaned_Combined_Genomes/Combined_Assembly_List_Final.csv" --out_dir /cluster/shared/vetinst/Hafnia_Genomes/ALPCA_Output_Nov2025/Cleaned_All/ -profile apptainer -resume

```

# Hafnia Reports

## Action Points: 
1. Check the quality of the data using Reads_QC (Hafnia spp project in VIGASP)
2. Check the species identification using Species Abundance pipeline
3. Use the reference data (Hafnia_PostiveControl project in VIGASP) given by Girum to find a cut-off for species identification process
4. Build Genome Assembly for the Hafnia data in Hafnia spp project in VIGASP
5. Download the Gene sequences for the list of AMR genes given by Girum
6. Download the Gene sequences for the list of Virulence genes given by Girum
7. Run Abricate on the AMR and VirulenceGenes and tabulate the results.
8. Use CoreGenomeSNP_Phylogeny pipeline to build the Tree

## Planned analysis and Status
1. Check the quality of the data using Reads_QC - DONE
   94 Hafnia samples from "Hafnia spp." project was analysed using "Reads_QC" pipeline
   Results:
   1. Coverage
   2. Phred Score
   3. QC%
   4. Predicted Species (using proportion of reads mapped) using Kraken2 and Bracken  
2. Check the species identification using Species Abundance pipeline - DONE
   1. Predicted species using Kraken2 and Bracken (kind of redundant results from Reads_QC)
3. Use the reference data to find a cut-off for species identification process - DONE
   1. Girum sent us 3 Hafnia strains to use as reference to decide on Cut-off for species confirmation
   2. The 3 sample were analyzed using Reads_QC pipeline and "ProportionofReads" mapped used as cut-off for species identification prediction
  
4. Download the Gene sequences for the list of AMR genes.
  1. Update: Many of the nucleotide_IDs are outdated and not able to download only the gene sequences
5. Suggestions from Håkon: Use NCBIAmrPlus for AMR genes
6. Use ALPPACA for the SNP analysis and phylogenetics.


# Progress Update: June 4th, 2025

1. Total number of WGS data (isolates) 92 in VIGAS
2. Quality control, species and contamination check : DONE (VIGAS)
3. Assembly and annotation : DONE (VIGAS)
4. AMR using NCBI-AMRFinderPlus : DONE (SAGA)
5. Phylogenetics: Core genome SNPs using ALPPACA : DONE (SAGA)
6. Plasmid Finder/assembler using MOBSUIT: DONE (SAGA)

# karin 
1. Use Abricate with VFDB for the 4 reference once
2. Abrticate against AMRFinderPlus (NCBI) DB as well
3. Abricate against CARD, MEGARES



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

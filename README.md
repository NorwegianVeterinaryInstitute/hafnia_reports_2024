## General Plans: 

1. Upload Hafnia fastq data to VIGASP
2. Reads_QC: Run basic Reads_QC analysis to check the quality of data and to find if there is any contamination.
3. Genome Assembly: Build genome assembly in VIGASP using Assembly and Annotation pipeline
4. AMR analysis: Compare against ResPointFinder (VIGASP), MEGARES, CARD and AMRFinderPlus
5. Virulence factors: Compare against VirulenceFinder DB
6. Phylogenetics:
7.   Run FastANI to get the basic idea about how the core genome looks like
      - CoreGenomeSNP Tree using ALPPACA (https://github.com/NorwegianVeterinaryInstitute/ALPPACA)
      - CoreGene Tree using ALPPACA (https://github.com/NorwegianVeterinaryInstitute/ALPPACA)

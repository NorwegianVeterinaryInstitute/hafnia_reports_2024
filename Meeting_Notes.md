## Meeting with Karin on 25th of July 

1. Modify the methods section 
2. Genome size with contamination
   - Reference genome size is 4.7MB. Some of the genome sizes are abnormal (more than 5MB and upto 9MB). Look at the kraken2 results and see if there is any contamination which explains the abnnormal size
   - Create a table to explain
4. Sample  2019-1-3544-11-1 should be checked for why the number of contigs is so high and N50 is good. Check with the kraken2/bracken2 results.
   - Create a table for it 
6. Make the list of isolates which should be excluded from the further analysis and why based on the initial analysis.
   - Add it to the methods docs 
8. AMR results columns i,j,k should be in number format. It  contains dot instead of comma. 
9. Plots for AMR results showing samples in x and genes in Y
10. Plots for AMR results showing gene names in X and number of occurrences in Y 

 


## Date 08 Aug 2025 

IMPORTANT: Discussesd about how and why to write down the meeting notes and discussions we had to understand our decisions better. And, agreed that Jeevan will write down all the discussions for the decisions we are gonna make

1. Looked at the to do list from previous meeting
2. Looked at the 8 Samples with abnormal genome sizes (8-9MB).  Rest of the samples have less than 5.01 MB Genomee size which is closer to reference genome size 4.7mb.
3. Jeevan had two tables. 1 with 5 samples and another one with 3 samples with abnormal genome sizes with contaminations % and number of Genome sizes
    Sample 2 and 3 in second table should be moved to table 1 after double checking the contamination because they ffall in the table 1 than table 2. Only the sample 1 in table 2 falls in the table 2 because it has not contamination but still has abnormal genome size

5. Suggested reasons for excluding 7 samples are
  1. Genome sizez (8-9MB)
   2. Contamination of more than 5% in the Krake2/bracken results
6. Make new table with isolates, their genomes sizes if they have more than 5% contamination
7. AMR DBs may have metal resistance genes as well that should be excluded from the results
8. Need to figurre out the way to cluster the AMR genes by class/type so we can interpret the AMR Results
9.    30+ AMR Genes per isolate is not possible in a normal scenario 
10. Small note on:  How the DBs are constrcuted: pick 3 genes fron the resuklts we have and check for their differnet allels  (because the )

   

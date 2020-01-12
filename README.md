# Genomics_finalProject
This is a repository created to contain the scripts and detailed answers of the final project of the course Analysis and visualization of genomic data from the Master in Computational Biology of the UPM.

The project is divided in 7 parts:
1. Metagenomics
2. Genomics
3. Reads mapping
4. Variant calling
5. Differential Expression Analysis (complementary DESeq2.R script)
6. Functional prediction
7. Phylogenetic analysis (complementary print_trees.py script)

For each part there is be a jupyter notebook in Bash language containing the code, outputs and extended answer to all the questions in the questionnaire. There are also supplementary scripts used for parts 5 (R) and 7 (Python), and 'png' files with the images that the notebooks display.



**Final hypothesis**  
My hypothesis is that, at hot temperature, the optimal conditions for *Aquifex aeolicus* are met and therefore the bacteria is able to grow and reproduce at high rate. From the metagenomics analysis we see that when the temperature comes back to normal, there is a bloom in other bacteria while *Aquifex* almost disappears. This leaded to the hypothesis that probably there are interesting  genes in its genome, perhaps due to mutations.  
Afterwards, with the variant calling analysis we saw that there was a particular mutation with a  much higher quality than all others, and it was in the sequence for the nitrogen fixation gene NifA. Given that the mutation was not at the beginning of the sequence, my hypothesis is that the mutation is making the protein more efficient under temperature stress. This would allow the bacteria to fix nitrogen at a higher rate, which would be positive considering that probably other nitrogen fixating organisms cannot do this under temperature stress, and that the bacteria needs nitrogen to synthesize molecules and grow and reproduce at its maximum rate in this optimal conditions. This hypothesis is further confirmed with the differential expression analysis that shows that not only the nitrogen fixating gene is over-expressed, but the transcriptional factor associated with nitrogen fixation is also being over-expressed. Further confirmation is given by the phylogenetic analysis that show that the closest orthologs are ones with the same inferred function as our protein sequences.   
In conclusion, I believe that the effect observed in the hot spring is mainly caused by the fitness of this *Aquifex aeolicus* strain to grow at high temperatures, which gives them a survival advantage and lets them take up the nutrients in the medium while all the other bacteria struggle to survive under stress. Much of the fitness of the Aquifex aeolicus strain seems to be related to its capability of fixing nitrogen but in order to confirm this, further analyses should be performed (meassuring nitrogen concentration, fixation rates analysis and studying the role of nitrogen fixation in *Aquifex aeolicus*).

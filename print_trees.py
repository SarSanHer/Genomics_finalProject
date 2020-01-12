
# Script to print phylogenetic trees replacing gene IDs with genename, spname, lineage, funct

from ete3 import PhyloTree
from ete3 import Tree


tree = Tree('/Users/sara/BioCompu/Genomic_data/Final_Project/phylo/NP_Unk02.blast_homologs.alg.treefile')
print(tree)


# my additional info is in additional_seq_info.tsv
seqinfo={}
for line in open('/Users/sara/BioCompu/Genomic_data/Final_Project/phylo/additional_seq_info_2.tsv').readlines():
        seqid, genename, spname, lineage, gene, funct = line.replace("\n",'').replace(" ",'_').split('\t')
        seqinfo[seqid]=[genename, spname, lineage, funct]
#print(seqinfo)


for leafnode in tree:
    genename, spname, lineage, funct = seqinfo[leafnode.name]
    leafnode.name = "%s %s %s %s" %(genename, spname, lineage, funct)


tree.show()

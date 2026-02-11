#!/bin/bash
#SBATCH -o /home6/hlberman/gard_isolates/strain_phylogeny/log/raxml_root_%j.out
#SBATCH -c 16

# Maximum likelihood core genome phylogeny of 85 Gardnerella whole genome assemblies with  RAxML v8.2.12
# RAxML"
# A. Stamatakis: "RAxML Version 8: A tool for Phylogenetic Analysis and Post-Analysis of Large Phylogenies". In Bioinformatics, 2014

inaln=/home6/hlberman/gard_isolates/strain_phylogeny/core_gene_alignment.aln
intreedir=/home6/hlberman/gard_isolates/strain_phylogeny/20221101_ml_phylogeny
outdir=/home6/hlberman/gard_isolates/strain_phylogeny/20260210_ml_phylogeny_rooted
nodeLabeledOutdir=/home6/hlberman/gard_isolates/strain_phylogeny/20260210_ml_phylogeny_rooted_nodelabeled
branchLabeledOutdir=/home6/hlberman/gard_isolates/strain_phylogeny/20260210_ml_phylogeny_rooted_branchlabeled

# Use EPA algorithm to root phylogeny with B. longum 51A on best tree
raxmlHPC-PTHREADS-SSE3 -w $outdir -f v --epa-keep-placements=100 -t $intreedir/RAxML_bestTree.gardTree -m GTRGAMMA -s $inaln -n rootedGardTree

# Use EPA algorithm to root phylogeny with B. longum 51A on best tree with node labels from bootstrapping
raxmlHPC-PTHREADS-SSE3 -w $nodeLabeledOutdir -f v --epa-keep-placements=100 -t $intreedir/RAxML_bipartitions.bootstrappedGardTree -m GTRGAMMA -s $inaln -n rootedGardTree_nodelabeled

# Use EPA algorithm to root phylogeny with B. longum 51A on best tree with branch labels from bootstrapping
raxmlHPC-PTHREADS-SSE3 -w $branchLabeledOutdir -f v --epa-keep-placements=100 -t $intreedir/RAxML_bipartitionsBranchLabels.bootstrappedGardTree -m GTRGAMMA -s $inaln -n rootedGardTree_branchlabeled

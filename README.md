# So-NICE

## Overview

Sofa - New Intuitive Comparative Expression

We propose you a simple tool to compare genomics data. You can easily compare genomes on their words (expression) instead of their structure.
We will call genome\_1 G1, genome\_i Gi and genome\_n Gn.

## Dependencies

Install zlib : (debian : sudo apt-get install zlib1g-dev)
Install Jellyfish : http://www.genome.umd.edu/jellyfish.html

## Installation 

The library compiles with GNU GCC and G++ . It successfully compiles and runs on Xubuntu 16.04 and 17.04.

1. Clone this repository : `git clone https://github.com/SoSiP/So-NICE.git`
2. Compile ensemble : `cd Ensemble && make`
3. Place the ensemble binary somewhere acessible in your `$PATH`

## Usage

First, create your kmer dataset with jellyfish :
```
jellyfish count -m 24 -s 500M -o sample\_1.jf <(zcat sample\_1.fastq.gz)
jellyfish dump  -c sample\_1.jf | sort -k 1 > G1.jf
...
jellyfish count -m 24 -s 500M -o sample\_i.jf <(zcat sample\_i.fastq.gz)
jellyfish dump  -c sample\_i.jf | sort -k 1 > Gi.jf
...
jellyfish count -m 24 -s 500M -o sample\_n.jf <(zcat sample\_n.fastq.gz)
jellyfish dump  -c sample\_n.jf | sort -k 1 > Gn.jf
```
Then, create your matrix with ensemble:
```
ensemble G1.jf ... Gi.jf ... Gn.jf > matrix.tsv
```

Use matrix2vennD.sh to get all stats you need to create a Venn Diagram.
```
./matrix2vennD matrix.tsv > vennD.txt
```

Then use ven2plot.sh to get the plot:
```
./ven2plot.sh vennD.txt plot\_name.pdf
```

Enjoy :)

## TODO :

Tell how the genomes are differents in %.
Write a script witch cout the number of 1 in the matrice create by ensemble and return stats.
Write the script for create dotplot.
Finish this README.
 	

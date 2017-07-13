# SoSiP

## Overview

Sofa Side Project

We propose you a simple tool to compare genomics data. You can easily compare genomes on their words instead of their structure.
We will call genome\_1 G1, genome\_i Gi and genome\_n Gn.

## Dependencies

Install zlib : (debian : sudo apt-get install zlib1g-dev)
Install Jellyfish : http://www.genome.umd.edu/jellyfish.html

## Installation 

The library compiles with GNU GCC and G++ . It successfully compiles and runs on Xubuntu 16.04 and 17.04.

1. Clone this repository : `git clone https://github.com/BilbOk/SoSiP.git`
2. Compile ensemble : `cd Ensemble && make`
3. Place the ensemble binary somewhere acessible in your `$PATH`

## Usage

First, create your matrix with ensemble:
`ensemble G1 ... Gi ... Gn > matrix.tsv`
Use matrix2vennD.sh to get all stats you need to create a Venn Diagram.
 

## TODO :

Tell how the genomes are differents in %.
Write a script witch cout the number of 1 in the matrice create by ensemble and return stats.
Write the script for create dotplot.
Finish this README.
 	

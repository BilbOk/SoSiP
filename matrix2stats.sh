#!/bin/bash

version=1

function help
{
        printf "####################################################################\n";
        printf "#             Run Matrix Program (Version $version)               #\n"; 
        printf "####################################################################\n";
        printf "
Input:
        Matrix and different options
Output:
        Venn Diagram, Stats or whatever ! 
Exemple Usage: ./matrix2stats.sh -m myMatrix -plot -o upsteRplot.pdf

        options:
                -m {string}     matrix=$OPTARG;;
                -o {string}     output=$OPTARG;;
                -plot           plot=1;;
                -h              help;;
                \?)             help aussi;;

                -h = see help\n\n"
exit 0
}

# Parse command line options.
while getopts m:o:plot:h: OPT;
        do case $OPT in
                m)      matrix=$OPTARG;;
                o)      output=$OPTARG;;
                plot)      plot=1;;
                h)      help;;
                \?)     help;;
        esac
done

if [ $# -eq 0 ]; then
        help
fi

if [ plot -eq 1 ]; then
        echo "Plot creation..."
fi


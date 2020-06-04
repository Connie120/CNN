#!/bin/bash

Tm=$1
Tr=$2
Tc=$3
Tn=$4

for (( i=4; i<=$Tm; i++ ))
do
    for (( j=4; j<=$Tr; j++ ))
    do
        for (( k=4; k<=$Tc; k++ ))
        do
            for (( m=4; m<=$Tn; m+=4 ))
            do
                echo $i $j $k $m
                ./bin/host $i $j $k $m > bin/temp
                python parse.py $i $j $k $m
            done
        done
    done
done

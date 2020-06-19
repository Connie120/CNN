#!/bin/bash

Tm=$1
Tr=$2
Tc=$3
Tn=1

for (( i=4; i<=$Tm; i++ ))
do
    for (( j=4; j<=$Tr; j++ ))
    do
        for (( k=4; k<=$Tc; k++ ))
        do
                echo $i $j $k
                ./bin/host $i $j $k $Tn > bin/temp
                python parse.py $i $j $k $Tn
        done
    done
done

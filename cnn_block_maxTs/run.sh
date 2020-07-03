#!/bin/bash

Tm=$1
Tr=$2
Tc=$3
Tn=1

echo "Tm,Tr,Tc,Test#1,test#2,test#3,test#4,test#5,test#6,test#7,test#8,test#9,test#10,MIN Kernel Time,GFLOPS" > bin/block_result.csv
for (( i=4; i<=$Tm; i++ ))
do
    for (( j=4; j<=$Tr; j++ ))
    do
        for (( k=4; k<=$Tc; k++ ))
        do
            echo $i $j $k
            for (( m=1; m<=10; m++))
            do
                ./bin/host $i $j $k $Tn >> bin/temp
            done
            python parse.py $i $j $k $Tn
            rm bin/temp
        done
    done
done

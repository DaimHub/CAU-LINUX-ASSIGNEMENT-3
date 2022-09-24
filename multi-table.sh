#!/bin/bash

if [ "$#" != "2" ]; then
    echo "Invalid input"
else
    if [ $1 -gt 0 ] && [ $2 -gt 0 ]
    then          
        NBRCOLUMNS=$2
        NBRROWS=$1
        for ((y=1 ; y<=NBRROWS ; y++ ))
        do 
            for ((i=1 ; i<=NBRCOLUMNS ; i++ ))
            do
            	echo -ne "$y * $i = `expr $y \* $i` \t"
            done
            echo ""
        done
    else
       echo "input must be greater than 0"
    fi 
fi
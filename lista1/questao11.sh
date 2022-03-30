#!/bin/bash

file1=$1
file2=$2
file3=$3

num_linhas_f1=$(cat $file1 | wc -l)
num_linhas_f2=$(cat $file2 | wc -l)
num_linhas_f3=$(cat $file3 | wc -l)

echo $(( $num_linhas_f1 + $num_linhas_f2 + $num_linhas_f3 ))

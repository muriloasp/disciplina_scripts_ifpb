#!/bin/bash

#####
# Imprime todos os números pares entre 1 e 51
#
####$

for i in {1..51}; do
    ((i % 2 == 0)) && echo $i
done

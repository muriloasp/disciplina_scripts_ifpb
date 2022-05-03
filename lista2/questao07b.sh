#!/bin/bash

#############################################################
#   Imprime todos os números pares entre a e b.
#   a e b são argumentos passados por linha de comando
#############################################################

for ((i=${1}; i < ${2}; i++)); do
    !((i % 2)) && echo $i
done

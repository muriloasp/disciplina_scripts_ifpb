#!/bin/bash

###
#   Gera 101 numéros aleatórios, grava-os em num.txt e calcula a soma total
###

> num.txt
for i in {1..101}; do
    num=$(( $RANDOM % 1000 ))
    echo ${num} >> num.txt 
done

echo "num.txt possui $(wc -l < num.txt) linhas"

soma=0
for n in $(cat num.txt); do
    soma=$(( soma + n ))
done

echo "A soma dos números gerados é igual a ${soma}!"

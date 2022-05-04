#!/bin/bash

#####
#   Esse script recebe n argumentos que correspondem
#   a nomes de arquivos
#   Se o arquivo existir, imprimir o seu nome e SIM
#   Senão, imprimir o seu nome e NAO
#####

for arquivo in "$@"
do
    if [ -e ${arquivo} ]
    then
        echo "${arquivo} SIM"
    else
        echo "${arquivo} NAO"
    fi
done
    
    


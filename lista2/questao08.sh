#!/bin/bash

################################################################
#   Imprime o número de linhas e o nome de todos os arquivos
#   do diretório atual.
################################################################

for arquivo in $(ls); do
    wc -l ${arquivo}
done

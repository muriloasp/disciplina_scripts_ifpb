#!/bin/bash

# Atribui o número de linhas do arquivo passado como argumento
NUM_LINHAS=$(wc -l 2> /dev/null < ${1})

# Se a comparação for bem sucedida imprime GOOD
((NUM_LINHAS > 3)) && echo GOOD

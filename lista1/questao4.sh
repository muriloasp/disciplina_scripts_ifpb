#!/bin/bash

dir1=$1
dir2=$2

echo -e "\nConteúdo de ${dir1}:" > /tmp/lista_linda.txt
ls ${dir1} >> /tmp/lista_linda.txt

echo -e "\nConteúdo de ${dir2}:" >> /tmp/lista_linda.txt
ls ${dir2} >> /tmp/lista_linda.txt

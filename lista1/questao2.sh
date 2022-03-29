#!/bin/bash

read -p "Digite o nome do diretório 1: " dir1
read -p "Digite o nome do diretório 2: " dir2

echo -e "\nListando arquivos de ${dir1}:"
ls ${dir1}
echo -e "\nListando arquivos de ${dir2}:"
ls ${dir2}

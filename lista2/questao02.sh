#!/bin/bash

echo -e "Esse script mostra o arquivo com mais linhas \
\nentre os 4 arquivos que você inserir o nome!\n"

for i in {1..4}; do
    read -p "Digite o nome do arquivo$i: " ARQ$i
done

> temp.txt
for arquivo in ARQ{1..4}; do
    wc -l ${!arquivo} >> temp.txt
done

array=($(sort -nr temp.txt | head -n 1))
echo "Parabéns para ${array[1]}! O arquivo com mais linhas (${array[0]}) \o/."

rm temp.txt

#!/bin/bash

echo "Usando o redirecionador de entrada < 
bc < a.txt"
bc < a.txt

echo -e "\nUsando pipe | 
cat a.txt | bc"
cat a.txt | bc

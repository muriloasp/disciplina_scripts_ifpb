#/bin/bash

echo "Antes..."
cat numeros_sao_z.txt
echo "Depois..."
tr [0-9] 'Z' < numeros_sao_z.txt

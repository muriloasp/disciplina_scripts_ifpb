#!/bin/bash

echo "Antes..."
cat numeros_sao_z.txt
echo "Depois..."
tr -s '\n' < numeros_sao_z.txt

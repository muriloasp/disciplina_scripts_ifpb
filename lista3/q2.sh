#!/bin/bash

echo -e "Antes...\n"
cat numeros_sao_z.txt

echo -e "-----------------\nDepois...\n"
tr -s '\n' < numeros_sao_z.txt

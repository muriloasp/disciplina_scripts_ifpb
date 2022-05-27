#/bin/bash

echo -e "Antes...\n"
cat numeros_sao_z.txt
echo -e "--------------------------\nDepois...\n"
tr [0-9] 'Z' < numeros_sao_z.txt

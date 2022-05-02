#!/bin/bash

read -p "Digite o nome do arquivo1: " ARQ1
read -p "Digite o nome do arquivo2: " ARQ2
read -p "Digite o nome do arquivo3: " ARQ3
read -p "Digite o nome do arquivo4: " ARQ4

num_linhas_arq1=$(wc -l < ${ARQ1})
num_linhas_arq2=$(wc -l < ${ARQ2})
num_linhas_arq3=$(wc -l < ${ARQ3})
num_linhas_arq4=$(wc -l < ${ARQ4})

# Verifica se o arquivo1 possui mais linhas
((num_linhas_arq1 > num_linhas_arq2)) \
&& ((num_linhas_arq1 > num_linhas_arq3)) \
&& ((num_linhas_arq1 > num_linhas_arq4)) \
&& echo ${ARQ1}

# Verifica se o arquivo2 possui mais linhas
((num_linhas_arq2 > num_linhas_arq3)) \
&& ((num_linhas_arq2 > num_linhas_arq4)) \
&& echo ${ARQ2}

# Verifica se o arquivo3 possui mais linhas
((num_linhas_arq3 > num_linhas_arq4)) \
&& echo ${ARQ3}


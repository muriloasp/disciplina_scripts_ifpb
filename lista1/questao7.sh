#!/bin/bash

x=2

echo 'Substituição de variáveis é um mecanismo shell em que nomes precedidos do $ são tratados como variáveis e seus conteúdos são usados no lugar.'

echo -e '\nExemplo:'
echo -e '\nConsidere a definição x=2'
echo -e '\nx = ${x} é uma substituição de variável que retorna:'
echo "x = ${x}"


echo -e '\nSubstituição de shell é um mecanismo do shell que permite com que tudo que estiver dentro do $( ) seja tratado como um comando shell e o resultado é usado no lugar.'

echo -e '\nExemplo:'
echo -e '\nvariavel=$(cat arquivo.txt | wc -l) atribui o numero de linhas do arquivo txt à variável.'

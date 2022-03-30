#!/bin/bash

read -p 'Digite um número inteiro: ' n

(( $n % 2 == 0)) && echo "${n} é par" || echo "${n} é ímpar"

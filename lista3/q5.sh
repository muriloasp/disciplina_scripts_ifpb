#!/bin/bash

read -p 'Digite a sua senha: ' password

password_size=$(echo -n $password | wc -c)
upper_counter=$(echo $password | tr -cd [A-Z] | wc -c)
number_counter=$(echo $password | tr -cd [0-9] | wc -c)

if [ $password_size -lt 5 ]
then
   echo "Lembre-se! A senha deve possuir pelo menos 5 caracteres." 
elif [ $upper_counter -lt 1 ]
then
    echo "Lembre-se! A senha deve possuir pelo menos 1 letra maiúscula."
elif [ $number_counter -lt 1 ]
then
    echo "Lembre-se! A senha deve possuir pelo menos 1 número."
else
    echo "Senha válida!"
fi

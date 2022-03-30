#!/bin/bash

n_users=$(cat /etc/passwd | wc -l)
n_bash_users=$(cat /etc/passwd | grep /bin/bash | wc -l)
n_no_bash=$(( $n_users - $n_bash_users ))

echo "Total de usuários: ${n_users}"
echo "Número de usuários que usam /bin/bash: ${n_bash_users}"
echo "Número de usuários que não usam /bin/bash: ${n_no_bash}"

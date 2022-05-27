#!/bin/bash

while [ "$op" != "x" ]
do
cat << EOF
"Revele o seus segredos" 
    - Snape em o Prisioneiro do Azkaban para o Mapa do Maroto

    a - Liste apenas os diretórios de uma pasta
    b - Liste apenas os arquivos executáveis
    c - Liste apenas os links simbólicos
    x - Saia do script 

EOF
    read -p "Escolha uma opção: " op

    case $op in 
        "a")
            for s in $(ls)
            do
                if [ -d $s ]
                then
                    echo $s
                fi
            done
            ;;
        "b")
            for s in $(ls)
            do
                if [ -x $s ]
                then
                    echo $s
                fi
            done
            ;;
        "c")
            for s in $(ls)
            do
                if [ -L $s ]
                then
                    echo $s
                fi
            done
            ;;
        *) echo "Erro: Opção inválida!";;
    esac

    echo ""
    read -p "Pressione Enter para continuar."
    echo -e '\n'
done

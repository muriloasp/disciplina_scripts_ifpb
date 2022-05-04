#!/bin/bash

echo "Redirecionador '>'

Usado para redirecionar o resultado de um comando da saída padrão
para um arquivo. Primeiramente um arquivo vazio vai ser criado,
o comando é executado e a sua saída é colocada no novo arquivo.

Exemplo:
    $ ls ~/workspace/lista2/questao{01..10}.sh > questoes_feitas.txt

Redirecionador '>>'

Parecido com o '>' porém, no caso de o arquivo já existir,
o conteúdo do mesmo não é apagado, sendo a saída redirecionada
para o final do arquivo.

Exemplo:
    $ vim questao05.sh
    .
    .
    .
    $ echo questao05.sh >> questoes_feitas.txt

Redirecionador '2>'

Além da saída padrão, a saída de erros também enviada para a tela
por padrão. '2>' redireciona a saída de erros para um arquivo. A 
exemplo do redirecionador '>', o conteúdo de um arquivo existente é apagado.

Exemplo:
    $ ls workspace/lista2/questao{01..10}.sh 2> questoes_nao_feitas.txt

Redirecionador '2>>'

Redireciona a saída de erros para o final de um arquivo, criando o arquivo
caso ele não exista.

Exemplo:
    $ ls ~/arquivo1 2> log.txt
    $ rm ~/arquivo2 2>> log.txt

Redirecionador '&>'

Redireciona tanto a saída padrão gerada pelo comando como a saída de erros
para um arquivo.

Exemplo:
    $ ls arquivo1 &> /dev/null && echo \"arquivo1 existe\" \\
    || \"arquivo1 não existe\"

Redirecionador '&>>'

Redireciona tanto a saída padrão gerada pelo comando como a saída de erros
para o final de um arquivo, criando o arquivo caso não exista.

Exemplo:
    $ date > log.txt
    $ ls workspace/lista2/questao{01..10} &>> log.txt

Redirecionador '<'

Redireciona a entrada de um comando com o conteúdo do arquivo especificado.

Exemplo:
    $ wc -l < arquivo

    Nessa caso os dados chegam como uma sequência de caracteres,
    via entrada padrão e o comando wc não conhece o nome do arquivo,
    imprimindo apenas o número de linhas

Redirecionador '<<'

Conhecido como 'Here Document', passa para um programa
tudo que estiver entre dois rótulos/labels.

Exemplo:
    $ python << fim
    > print(2.2 + 5.7)
    > fim
    7.9

Redirecionador '<<<'

Conhecido como 'Here Strings', passa uma sequencia de caracteres
para um comando, substituindo o pipe (|) na construção

    echo ESCOPO | COMANDO

Exemplo:
    $ bc <<< 2.2+5.7
    7.9

Redirecionador '|'

É um redirecionador especial que pode redirecionar entrada e saída
ao mesmo tempo. Encaminha a saída padrão de um comando1 na entrada
padrão de um comando2

Exemplo:
    sort numeros.txt | head -n 1
"

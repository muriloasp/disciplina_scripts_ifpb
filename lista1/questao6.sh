#!/bin/bash

# criando o diretório com a data atual
date_string=$(date "+%Y-%m-%d-%H-%M")
mkdir /tmp/${date_string}
cp ./* /tmp/${date_string}

# compactando o novo diretório
tar -cvzf "${date_string}.tar.gz" "/tmp/${date_string}"

# removendo o diretório antigo
rm -r /tmp/${date_string}

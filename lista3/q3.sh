#!/bin/bash

read -p "Digite um endereço IP: " ip
for i in {1..4}
do
    octeto_d=$(echo $ip | cut -d '.' -f $i)
    octeto_b=$(printf "%08d" $(bc <<< "obase=2;$octeto_d"))

    echo "Oceteto #$i: $octeto_d em binário $octeto_b"
done

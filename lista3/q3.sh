#!/bin/bash

read -p "Digite um endereço IP: " ip
for i in {1..4}
do
    octeto_d=$(${ip} | cut -d '.' -f $i)
    octeto_b=$(bc <<< "obase=2;${octedo_d}")
    echo "Oceteto #${i}: ${octeto_d} em binário ${octedo_b} "
done

#!/bin/bash

# &> redireciona ambos stdout e stderr
ls ${1} &> /dev/null && echo SIM || echo NAO 

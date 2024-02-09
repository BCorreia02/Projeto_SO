#!/bin/bash

#############################################################################
## ISCTE-IUL: Trabalho prático de Sistemas Operativos
##
## Aluno: Nº:99285       Nome:Bernardo Correia 
## Nome do Módulo: lista_cidadaos.sh
## Descrição/Explicação do Módulo: Este módulo cria um ficheiro cidados.txt a partir do ficheiro listagem.txt 
##
##
###############################################################################
x=$(cat listagem.txt | awk -F"[-|: ]" '{print ((NR+10000)) ":" $2 " " $3 ":" ((2021 - $11)) ":" $15 ":" $19 ":" 0}')
echo "$x" > cidadaos.txt
cat cidadaos.txt

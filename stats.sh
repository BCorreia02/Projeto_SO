#!/bin/bash

###############################################################################
## ISCTE-IUL: Trabalho prático de Sistemas Operativos
##
## Aluno: Nº:       Nome: 
## Nome do Módulo: stats.sh
## Descrição/Explicação do Módulo: Este módulo tem o objeito de fornecer diversas informações. 
##
##
###############################################################################
variavel=$1
localidade=$2

a=$(cat cidadaos.txt | sort -t: -nrk3 | awk -F "[:| ]" '{ if ( $4 > 60 ) print $2 $3 ":" $4 }') 
b=$(cat cidadaos.txt |  grep "$localidade" | wc -l )
c=$(cat enfermeiros.txt | awk  -F "[: ]" '{ if ( $6 ==  1 ) print $2 " " $3 }' )

if [[ "$#" == "2" ]] || [[ "$#" == "1" ]] && [[ "$1" == "cidadaos" || "$1" == "registados" || "$1" == "enfermeiros" ]]; then 
	
	if [[ "$#" == "2" ]] && [[ "$1" == "cidadaos" ]]; then
	echo "O número de cidadãos registados em $localidade é $b"
	else 
	echo "Por favor insira uma localiade"
	fi

	if [[ "$1" == "registados" ]]; then 
	echo "$a"
	fi
	
	if [[ "$1" == "enfermeiros" ]]; then
	echo "$c"
	fi
else
echo "Erro de sintaxe, comandos disponiveis:

- cidadaos <localidade>
- registados
- enfermeiros
"

fi 
 


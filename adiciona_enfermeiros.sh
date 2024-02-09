#!/bin/bash

###############################################################################
## ISCTE-IUL: Trabalho prático de Sistemas Operativos
##
## Aluno: Nº: 99285  Nome: Bernardo Correia
## Nome do Módulo: adiciona_enfermeiros.sh
## Descrição/Explicação do Módulo: Este módulo serve para registar enfermeiros no ficheiro enfermeiros.txt
##
##
###############################################################################

a=$( cat enfermeiros.txt | grep "$3" | wc -l )
b=$( cat enfermeiros.txt | grep "$2" | wc -l )

if [ -z $4 ]; then
	echo "Erro: Síntaxe: $0 <número cédula profissional>:<nome>:<centro saúde associado>:<nº de vacinações efetuadas>:<disponibilidade>"

elif [ $a -ne "0" ]; then
echo "O $3 ja tem um enfermeiro registado."

elif [ $b -ne "0" ]; then
echo "O enfermeiro $1 ja se encontra registado noutro Centro de Saude"

else 
echo "$2:$1:$3:0:$4" >> enfermeiros.txt
echo "Enfermeiro registado com sucesso"

fi


#!/bin/bash

###############################################################################
## ISCTE-IUL: Trabalho prático de Sistemas Operativos
##
## Aluno: Nº:99285       Nome:Bernardo Correia 
## Nome do Módulo: agendamento.sh
## Descrição/Explicação do Módulo: Este módulo cria um ficheiro agenda.txt com as vacinações agendadas
##
##
###############################################################################
if [ -f agenta.txt  ]; then
rm agenta.txt
fi

while read line; do
date=$( date +%F )
disponibilidade=$( echo $line | awk -F "[:]" '{ if( $5==1 ) print $2 ":" $1 }' )
local=$( echo $line | awk -F "[:]" '{ if ($5==1) print $3 }' | sed 's,CS,,' )
CS=$( cat cidadaos.txt | awk -F "[:]" -vdisponibilidade="$disponibilidade" -vlocal="$local" -vdate="$date" '{ if (local==$4) print disponibilidade ":" $2 ":" $1 ":CS" local ":" date}' )
echo "$CS" >> agenda.txt
done < ./enfermeiros.txt
cat agenda.txt

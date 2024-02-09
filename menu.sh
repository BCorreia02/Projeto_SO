#!/bin/bash
###############################################################################
## ISCTE-IUL: Trabalho prático de Sistemas Operativos
##
## Aluno: Nº: 99285  Nome: Bernardo Correia	
## Nome do Módulo: menu.sh
## Descrição/Explicação do Módulo: Este módulo cria um menu que é posteriormente utilizado para executar as scripts
## desenvolvidas nesta parte do projeto.
##
##
###############################################################################


PS3='Por favor escolha uma opção: '
options=("Listar cidadao" "Adicionar enfermeiro" "Stats" "Agendar vacinação" "Sair" )
select opt in "${options[@]}"
do
    case $opt in
        "Listar cidadao")
			./lista_cidadaos.sh
            ;;

         "Adicionar enfermeiro")
		read k
            ./adiciona_enfermeiros.sh "$k"
            ;;

        "Stats")
            ./stats.sh
            ;;

		"Agendar vacinação")
            echo "you chose choice $REPLY which is $opt"
            ;;

        "Sair")
            break
            ;;

        *) echo "$REPLY não é uma opção valida";;
    esac
done

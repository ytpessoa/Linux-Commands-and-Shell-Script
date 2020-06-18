#!/bin/bash

##############################################
# 01-fistScript.sh
# Descrição: exibe data atual e ordena alunaos
#############################################

DATAHORA=$(date +%H:%M)
ARQUIVOALUNO2="/home/ytallo/Desktop/github-repositories/shell-script-studies/CursoShellScript/arquivos/alunos2.txt"


clear
echo "=======My first script========"
echo ""

#Funcao de leitura de data
echo -n "Exibir data e hora atual: $DATAHORA"
echo ""
echo "============================="
echo "Listagem dos alunos: "
sort $ARQUIVOALUNO2

DATAHORA=$(date +%H )
echo "===================="
echo ""
echo "nova hora atual: $DATAHORA"
echo ""



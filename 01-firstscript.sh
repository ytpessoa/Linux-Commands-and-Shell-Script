#!/bin/bash

##############################################
# 01-fistScript.sh
# Descrição: exibe data atual e ordena alunaos
#############################################

clear
echo "=======My first script========"
echo ""

#Funcao de leitura de data
echo -n "Exibir data e hora atual: "
date 
echo "============================="
echo "Listagem dos alunos: "
sort CursoShellScript/arquivos/alunos2.txt




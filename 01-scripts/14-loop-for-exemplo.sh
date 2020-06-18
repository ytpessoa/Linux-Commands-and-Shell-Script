#!/bin/bash

DIR_ARQ="/home/ytallo/Desktop/github-repositories/shell-script-codes/CursoShellScript/arquivos/"
cd $DIR_ARQ

for arquivo in *
do
    if [ -f $arquivo ]; then # -f: se é file
        echo
        echo "Verificando o arquivo $arquivo"
        QTD_LINHAS=$(cat $arquivo | wc -l )  # "wc -l" -> contar linhas
        echo "O arquivo $arquivo tem $QTD_LINHAS linhas"
        echo
    fi
done
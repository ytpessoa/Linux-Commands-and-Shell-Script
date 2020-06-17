#!/bin/bash
clear

ARQUIVO="/etc/passwd"

#modificar IFS(Internal Field Separator)
OLDIFS=$IFS
#IFS=$'\n'
IFS=:

for linhas in $(cat $ARQUIVO)
do
    echo "Linha $linhas"
done

#voltar IFS padrão
IFS=$OLDIFS

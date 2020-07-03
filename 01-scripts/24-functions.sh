#!/bin/bash

maiuscula () {
    # $1 1º parametro de chamada da funcao
    echo $1 | tr a-z A-z
}
maiuscula shell
#SHELL
maiuscula $1 # 1º paramentro do script
#YTALLO

echo 
echo

maiuscula2 () {
    VAR_GLOBAL=$(echo $1 | tr a-z A-Z)
    local VAR_LOCAL=$VAR_GLOBAL
    return 10 #só retorna numero de 0 a 255
}
maiuscula2 pedro
RETURN_CODE=$?
echo "Return code = $RETURN_CODE " 
# 10
echo $VAR_GLOBAL
#PEDRO
echo $VAR_LOCAL
#

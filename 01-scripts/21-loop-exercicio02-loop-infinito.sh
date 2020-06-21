#!/bin/bash
clear
# Monitora processo


TIME_INTERVAL=2

# VALIDAR ARGUMENTO:
if [ $# -eq 0 ]
then
    echo "Favor informar um processo como argumento"
    exit 1
fi


# $ true 
# $ echo $?
#   0


# $ ps aux | grep "semMatch" | grep -v grep > /dev/null 
# $ echo $?
# 1


# $ ps aux | grep "google" | grep -v grep > /dev/null 
# $ echo $?
# 0

# ps aux | grep firefox 
# /bin/bash ./21-loop-exercicio02-loop-infinito.sh firefox (usa-se ' grep -v $0 ' para descartar essa linha)
# grep --color=auto firefox (usa-se ' grep -v grep ' para descartar essa linha)


while true # true retorna 0 --> sucesso!
do      
    if ps aux | grep $1 | grep -v grep | grep -v $0 > /dev/null 
    then
        echo "$1 em Execução!"
        sleep $TIME_INTERVAL
    else
        echo "$1 não está em execução"    
        sleep $TIME_INTERVAL
    fi

done

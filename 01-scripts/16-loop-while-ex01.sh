#!/bin/bash
clear

x=1
while [ $x -le 5 ]
do
    echo "O valor de x eh: $x"
    x=$( expr $x + 1 )
done

QTD_PROCESSOS=$( ps aux | wc -l )
while [ $QTD_PROCESSOS -lt 400  ]
do 
    echo "Tudo ok"
    sleep 10
done



# Verificação de existência do arquivo:
    #$ ls /var/lock/asound.state.lock
    #$ /var/lock/asound.state.lock

while ls /var/lock/asound.lock > /dev/null
do
    echo "Processo em Execução"
    sleep 5
done
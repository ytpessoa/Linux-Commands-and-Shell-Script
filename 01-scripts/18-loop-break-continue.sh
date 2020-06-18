#!/bin/bash
clear

#exit: sai do programa
#break: sai do loop
#continue: volta para o inicio do loop

#$ ls /var/lock/asound.state.lock 
#$ /var/lock/asound.state.lock

# date +%H
# 17

while ls /var/lock/asound.state.lock > /dev/null  #13
do
    if [ $(date +%H) -eq 18 ]; then
        sleep 3
        continue #volta pra linha #13 -> não executa #19 e #20
    fi    
    echo "Processo em execução" #19
    sleep 5                     #20
done

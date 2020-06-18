#!/bin/bash
clear


x=1
until [ $x -eq 20 ]
do
    echo "Ainda nao eh 20. O valor eh $x"
    x=$( expr $x + 1 )
done


#$ ps aux | grep "firefox"
#$ ytallo    6265  0.0  0.0  21536  1104 pts/3    S+   13:11   0:00 grep --color=auto firefox
#$ ps aux | grep "firefox" | wc -l
#$ 1



i=1
until [ $( ps aux | grep "firefox" | wc -l ) -gt 1 ]
do 
  echo "Ainda não iniciou o firefox"
  echo "Loop $i - qtd-processos-firefox $(ps aux | grep "firefox" | wc -l )"
  i=$( expr $i + 1 )    
  sleep 2
  echo
done

echo "Firefox iniciou!"
echo "PID: $(pgrep "firefox")"
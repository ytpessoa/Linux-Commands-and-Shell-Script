#!/bin/bash
clear

# tamanho do arvuivo
# $ stat --printf=%s fileteste.txt 
# 28788


FILENAME=$1
CHARSET=$2
FINALSIZE=$3

read -p "Informe o nome do arquivo a ser criado: " FILENAME
read -p "Informe um conjunto de caracteres que será usado para preencher o arquivo: " CHARSET
read -p "Informe o tamanho final do arquivo (em bytes): " FINALSIZE

#Se o arquivo já existir, limpa:
cat /dev/null > $FILENAME

PORC_EXIBIDA=0


until [ $FINALSIZE -le $( stat --printf=%s "$FILENAME"  ) ]
do
    echo -n $CHARSET >> $FILENAME # -n remove o \n
    SIZEATUAL=$(stat --printf=%s "$FILENAME")
    PORC_ATUAL=$(expr $SIZEATUAL \* 100 / $FINALSIZE ) #expr só faz inteiros    
    # echo "tamanho atual $SIZEATUAL"
    # echo "porcentagem atual $PORC_ATUAL"    
    
    #MOSTRAR PORCENTAGENS DE 10 EM 10
    if [ $(expr $PORC_ATUAL % 10) -eq 0 -a $PORC_EXIBIDA -ne $PORC_ATUAL ]
    then
        echo "Concluido: $PORC_ATUAL% - TAMANHO DO ARQUIVO: $SIZEATUAL"
        PORC_EXIBIDA=$PORC_ATUAL
    fi

done


# Output:
# Informe o nome do arquivo a ser criado: aula.txt
# Informe um conjunto de caracteres que será usado para preencher o arquivo: curso shell script
# Informe o tamanho final do arquivo (em bytes): 20000
# Concluido: 10% - TAMANHO DO ARQUIVO: 2016
# Concluido: 20% - TAMANHO DO ARQUIVO: 4014
# Concluido: 30% - TAMANHO DO ARQUIVO: 6012
# Concluido: 40% - TAMANHO DO ARQUIVO: 8010
# Concluido: 50% - TAMANHO DO ARQUIVO: 10008
# Concluido: 60% - TAMANHO DO ARQUIVO: 12006
# Concluido: 70% - TAMANHO DO ARQUIVO: 14004
# Concluido: 80% - TAMANHO DO ARQUIVO: 16002
# Concluido: 90% - TAMANHO DO ARQUIVO: 18000
# Concluido: 100% - TAMANHO DO ARQUIVO: 20016
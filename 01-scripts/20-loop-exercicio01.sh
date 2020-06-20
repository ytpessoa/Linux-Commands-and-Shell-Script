#!/bin/bash
clear

# Files utilizados:
# - /etc/login.defs

#Comandos utilizados:
#  tr -s "\t" : todos os tabs em apenas um

# USERs humanos:
UID_MIN=$(  grep "^UID_MIN" /etc/login.defs | tr -s '\t' | cut -f2 | tr -d '\n' | tr -d " "  )
UID_MAX=$(  grep "^UID_MAX" /etc/login.defs | tr -s '\t' | cut -f2 | tr -d '\n' | tr -d " " ) 

#DEFININDO SEPARADOR PADRÃO:
OLDIFS=$IFS
IFS=$'\n' #pra pegar linha a linha no loop "for"

#CABEÇALHO:
echo -e "USUARIO\t\tUID\t\tDIR HOME\t\tNOME OU DESCRICAO"


for linha in $( cat /etc/passwd  ) 
do
    #echo "linha $linha"
    USERID=$( echo $linha | cut -d ":" -f3 )
    
    if [ $USERID -ge $UID_MIN -a $USERID -le $UID_MAX  ]
    then
        USER=$( echo $linha | cut -d ":" -f1)
        HOMEDIR=$(echo $linha | cut -d ":" -f6)
        NOME=$(echo $linha | cut -d ":" -f5)
        echo -e "$USER\t\t$USERID\t\t$HOMEDIR\t\t$NOME"
    fi
    
done



IFS=$OLDIFS
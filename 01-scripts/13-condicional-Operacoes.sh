#!/bin/bash

read -p "Informe o valor 1: " VALOR1
read -p "Informe o valor 2: " VALOR2

if [ ! $VALOR1 ] || [ ! $VALOR2 ]; then
    echo "Nenhum dos valores pode ser nulo"
    exit 1
fi

echo 
echo "Escolha uma operação"
echo "1 = soma"
echo "2 = subtração"
echo "3 = Multiplicação"
echo "4 = divisão"
echo
read -p "Opção: " OPCAO
echo "$OPCAO"

case $OPCAO in
    1) 
        OPER="+"
        ;;
    2)
        OPER="-"
        ;;
    3)
        OPER="*"
        ;;
    4) 
        OPER="/"
        ;;
    [Qq]) 
        echo "Saindo..."
        exit
        ;;        
    *)
        echo "Opção Inválida"
        exit 1 
        ;;        
esac

echo
echo "$VALOR1 $OPER $VALOR2 = $(expr $VALOR1 "$OPER" $VALOR2 )"

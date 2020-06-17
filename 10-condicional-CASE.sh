#!/bin/bash


# run: ./10-condicional-CASE.sh 2
# run: ./10-condicional-CASE.sh A
# run: ./10-condicional-CASE.sh a
# run: ./10-condicional-CASE.sh _

# $1 : primeiro parametro

CARACTER=$1
echo ""
echo "Caracter de entrada $CARACTER"
echo ""

case "$CARACTER" in
	[0-9])
		echo "Caracter Valor eh um numero"
		;;
	[A-Z])
		echo "Caracter Letra maiuscula"
		;;
	[a-z])	
		echo "Caracter Letra minuscula"
		;;
	*)
		echo "Caracter especial"
esac


	



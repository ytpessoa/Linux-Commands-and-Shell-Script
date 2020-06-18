#/bin/bash

# Exercicio:
# Crie um Script que após executado solicite dois valores como entrada. Esses
# valores devem ser somados e o resultado exibido para o usuário.

echo "==== Inicio de Script ==="
read -p "Entre com o valor 1: " VALOR1
read -p "Entre com o valor 2: " VALOR2
echo -n "A soma de $VALOR1 + $VALOR2 é $( expr $VALOR1 + $VALOR2 ) "
# echo "$VALOR1 + $VALOR2" | bc
# echo expr $VALOR1 + $VALOR2
echo ""
echo "==== Final de Script ==="
 

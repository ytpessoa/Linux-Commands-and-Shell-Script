#/bin/bash

ls /tmp
# exit -> ponto de saida do programa

ls /tmp/teste
# exit 	      # echo $?  -> retorno do "ls /tmp/teste"

# exit 10     # echo $?  ->  10

RETURN_CODE=$?

echo "========="
echo "O CODIGO DE RETORNO EH $RETURN_CODE"
echo ""
echo "========="

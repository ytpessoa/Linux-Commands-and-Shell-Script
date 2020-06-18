#/bin/bash

VAR=12

if [ "$VAR" -gt 10 ]
then
	echo "sucesso"
else
	echo "fracasso"
fi


echo ""

USUARIO_IN=$(grep "$1" /etc/passwd)

if [ "$USUARIO_IN" != "" ]; then
	echo "usuario $1 existe!!!!"
else
	echo "usuario $1 não existe!!!"
fi

echo ""

if [ -n  "$USUARIO_IN" ]; then
        echo "usuario $1 existe - com -n!!!!"
else
        echo "usuario $1 não existe - com -n!!!"
fi



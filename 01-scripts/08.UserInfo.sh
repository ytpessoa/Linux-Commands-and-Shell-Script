#/bin/bash

#1 receber usuario 

# run: ./UserInfo.sh  <parametro1>
#                         $1

#2 validação de existência de usuario:

# || --> ou
# comando1-sucesso   || comando2-não-executa
# comando1-ñ-sucesso || comando2-executa     

# ls /home/$1
	# linuxbrew  ytallo

# ls /home/pedro || echo "Usuario Inexistente"
	# ls: cannot access '/home/pedro': No such file or directory
	# Usuario Inexistente

# ls /home/pedro 2> /dev/null || echo "Usuario Inexistente"
	# Usuario Inexistente

# Validacao:
ls /home/$1 > /dev/null 2>&1  || { echo "Usuario Inexistente" ; exit 1 ;}


UID_VAR=$(grep $1 /etc/passwd | cut -d ":" -f3 | tr -d ' ')
DESCRICAO_DO_USER=$(grep $1 /etc/passwd | cut -d ":" -f5 | tr -d ' ' | tr -d , )
TAMANHO_HOME=$(  du -sh /home/$1 2> /dev/null | cut -c1-3)
LAST_LOGIN=$(lastlog -u $1)
echo ""
echo "Relatorio do Usuario $1"
echo ""
echo "UID: $UID_VAR"
echo ""
echo "Nome ou Descrição: $DESCRICAO_DO_USER"
echo ""
echo "Total usado no /home/$1: $TAMANHO_HOME"
echo ""
echo "Ultim login: "
echo ""
echo "$LAST_LOGIN"
echo ""
exit 0


#/bin/bash

# $0 	- Nome do programa(script)
# $#    - Quantidade de paramatros inseridos
# $*    - Todos os parametros inseridos
# $1-9  - Cada uma dos parametros

echo "O script $0 recebeu $# parametros"
echo "os paramatros inseridos foram $*"
# ./05-exemploParametros.sh  ppp iii
# os paramatros inseridos foram ppp iii
# O script ./05-exemploParametros.sh recebeu 2 parametros

echo""
echo " O paramentro \$1 = $1 "
echo " O paramentro \$2 = $2 "
echo " O paramentro \$3 = $3 "
echo " O paramentro \$4 = $4 "
echo " O paramentro \$5 = $5 "
# ./05-exemploParametros.sh par1 par2 par3 par4 par5
# O script ./05-exemploParametros.sh recebeu 5 parametros
# os paramatros inseridos foram par1 par2 par3 par4 par5
# O paramentro $1 = par1
# O paramentro $2 = par2
# O paramentro $3 = par3
# O paramentro $4 = par4
# O paramentro $5 = par5


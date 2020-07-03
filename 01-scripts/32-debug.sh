

# Quando o script dá erro em alguma, ele executou as linhas anteriores.

# 1 Testar sintaxe sem executar linhas anteriores ao erro no sistema:
$ bash -n script.sh

#V2 isualizar execução:
$ bash -x script.sh
# + linha executada
# ++ subshell para execução 

# 3 Visualizar resultados das instruções:
$ bash -v script.sh

#4 Ambas:
$ bash -xv script.sh


# 5 Dentro do script.sh:
===========script.sh===================
...

set -x # inicio de linha para debug 
...
set +x # fim de linha para debug
=======================================

===========script.sh===================
...

set -xv # inicio de linha para debug 
...
set +xv # fim de linha para debug
=======================================

$ script.sh





# 5 Dentro do script.sh linha por linha:

===========script.sh===================
...

set -x # inicio de linha para debug 
trap read DEBUG # Começo de execução passo a passo
...

trap "" DEBUG #Finalizando passo a passo
=======================================
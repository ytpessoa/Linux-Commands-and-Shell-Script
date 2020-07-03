#!/bin/bash

# 1 saída padrão
# 2 saída de erro


LOG="/home/ytallo/Desktop/github/shell-script-codes/01-scripts/28-log-exec_in.out"
#################################
# Joga todas as saídas no $LOG  #
#################################
exec 1>> $LOG
exec 2>&1     # 2>&1 saída de erro associada à saída padrão
#################################################
# Joga todas as saídas no $LOG e motra na tela  #
################################################
# exec 1>> >(tee -a "$LOG")
# exec 2>&1


echo "Saída 1"
echo "Saída 2"
echo 








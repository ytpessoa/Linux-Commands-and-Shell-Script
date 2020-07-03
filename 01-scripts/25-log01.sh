
#o arquivo é criado caso não exista
LOG="/home/ytallo/Desktop/github/shell-script-codes/01-scripts/26-log_in.out"


echo "$(date) - inicio do script..." >> $LOG
echo "Executando script" | tee -a $LOG      # tee -a mostra na tela e salva no arquivo
echo "$(date) - fim do script" >> $LOG
echo >> $LOG



DIRDEST=$HOME/backup

# 1 Criar diretórios caso não exista
if [ ! -d $DIRDEST ]; then
    echo "Criando diretórios $DIRDEST"
    mkdir -p $DIRDEST
fi


# 2 Procurar arquivos criados a menos de 7 dias:
LAST7DAYs=$(find $DIRDEST -ctime -7 -name backup_home_\*tgz) #proteger o *
# find /home/ytallo/backup -ctime -7 -name backup_home_\*.tgz

# VAR="ASDSSD$$"
# if[ "$VAR" ]; then
#     echo "VAR não vazia"
# fi
echo
if [ "$LAST7DAYs" ]; then  #protege a variavel com "", pois pode ter caracteres especiais dentro dela
    echo "Foi gerado um backup \""$LAST7DAYs"\" nos últimos 7 dias." 
    echo "Deseja fazer outro? (N/s): "
    read -n1 CONT  #-n1 -> captura uma tecla
    echo "$CONT"
    if [ "$CONT" = N -o "$CONT" = n -o "$CONT" = "" ]; then
        echo "Backup abortado"
        exit 1
    elif [ "$CONT" = S -o "$CONT" = s ] ;then
        echo "Será criado mais um backup para a mesma semana"
    else
        echo "Opção Inválida"
        exit 2
    fi        
fi

echo "Criando Backup..."

FMT_ARQ_BKP="backup_home_$(date +%Y%m%d%H%M).tgz"

#compactando:
tar zcvpf $DIRDEST/$FMT_ARQ_BKP --absolute-names \
--exclude="$HOME/.*" --exclude="$DIRDEST" --exclude="$HOME/VirtualBox\ VMs" --exclude="$HOME/Downloads" --exclude="$HOME/Downloads" --exclude="$HOME/Desktop" --exclude="$HOME/Documents" \
"$HOME/"* > /dev/null

echo
echo "Backup de nome \""$FMT_ARQ_BKP"\" foi criado em $DIRDEST"
echo
echo "Backup Concluído!"
echo


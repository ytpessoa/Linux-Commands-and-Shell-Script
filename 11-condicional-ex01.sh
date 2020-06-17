#!/bin/bash

#HORA=$(date +%H)
HORA=$1

echo ""
if [ $HORA -ge 06 -a   $HORA -lt 12   ]; then
	echo "Hora: $HORA -> Bom dia"
	AMPM=AM

elif [  $HORA -ge 12  -a  $HORA -lt 18  ]; then	
	echo "Hora: $HORA -> Boa tarde" 
	AMPM=PM

elif [ $HORA -ge 18 -a $HORA -lt 24 ]; then	
	echo "Hora: $HORA -> Boa noite!"
	AMPM=PM	

else
	echo "Hora: $HORA -> Bom dia!"
	AMPM=AM
fi


HORA_ATUAL=$(date | cut -d " " -f4)
echo""
echo "Hora atual $HORA_ATUAL $AMPM"





#!/bin/bash
clear

#1 basename

#$ basename /home/ytallo/
# ytallo

#2 find

#$ find /home/ytallo -name '*.jpg' -o -name '*.mp4' -o -name '*.mp3' 
# /home/ytallo/Desktop/cap/01/IMG_4740.jpg
# ...
# /home/ytallo/.config/google-chrome/Profile 1/Extensions/oldceeleldhonbafppcapldpdifcinji/3.1.5_0/changelog/images/docs-video.mp4
# ...
# /home/ytallo/.local/share/Anki2/Usuário 1/collection.media/google-2678256e-0e09f4a8-955153a1-92abfbe6-ce534393.mp3
# ...



for userHome in /home/*  #percorrer todas homes de usuario do sistema
do
    
    MP4COUNT=0
    MP3COUNT=0
    JPGCOUNT=0    
    OLDIFS=$IFS
    IFS=$'\n'
    
    for file in $(find $userHome -name '*.jpg' -o -name '*.mp4' -o -name '*.mp3' ) 
    do         
        case $file in
            *.mp4)
                MP4COUNT=$(expr $MP4COUNT + 1)
                ;;

            *.jpg)
                JPGCOUNT=$(expr $JPGCOUNT + 1 )
                ;;

            *.mp3)
                MP3COUNT=$(expr $MP3COUNT + 1)
                ;;
        esac
    done 
    
    echo "Usuario: $(basename $userHome)"
    echo "Arquivos JPG: $JPGCOUNT"
    echo "Arquivos MP4 $MP4COUNT"
    echo "Arquivos MP3 $MP3COUNT"
    echo

done

IFS=$OLDIFS

# OUTPUT:

# Usuario: user1
# Arquivos JPG: 0
# Arquivos MP4 0
# Arquivos MP3 0

# Usuario: user2
# Arquivos JPG: 0
# Arquivos MP4 0
# Arquivos MP3 0

# Usuario: ytallo
# Arquivos JPG: 39
# Arquivos MP4 7
# Arquivos MP3 264

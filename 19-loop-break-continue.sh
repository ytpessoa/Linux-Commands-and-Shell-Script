#!/bin/bash
clear

# ===arquivo3.txt===
# Andre
# Paulo
# Ricardo Prudenciato
# Daiana
# Fernanda
# Fernanda
# Maria 
# Daiana
# Maria


# for i in $(cat CursoShellScript/arquivos/alunos3.txt)
# do 
#     if [ $i = Maria ];then
#         echo "A $i eh a melhor aluna!"
#         echo "break..."
#         #break
#         continue
#     fi
#     echo "Aluno(a): $i"
# done


for i in $(seq 20 40)
do
    touch "$i-.sh"
done



#/bin/bash


ARQUIVOALUNO="/home/ytallo/Desktop/github-repositories/shell-script-studies/CursoShellScript/arquivos/alunos2.txt"

clear
echo "====Inicio do Script===="
echo ""
echo -n "Por favor, informe o PRIMEIRO nome do aluno: "
read ALUNO
echo ""
echo "O nome completo do aluno é: $( grep "$ALUNO" $ARQUIVOALUNO )"
echo ""
echo "====Fim do Script===="


# ====opcao 2====:
# read -p "Por favor, informe o PRIMEIRO nome do aluno: " ALUNO
# ALUNOCOMPLETO=$(grep "$ALUNO" $ARQUIVOALUNO)
# echo "O nome completo do aluno é: $ALUNOCOMPLETO "

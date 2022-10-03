#!/bin/ksh

###
# Cria arquivos de texto para teste contendo apenas a linha:
# "arquivo n", onde n é o nome do arquivo.
###

# Contador
i=1

# Máximo de arquivos criados
max=10

while [ $i -le $max ]
do
	echo "arq $i" > arq\ $i.mp4
	i=$(($i+1))
done

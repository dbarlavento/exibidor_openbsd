#!/bin/sh

###
# Este script remove os espaços dos nomes dos arquivos de video do 
# diretorio: ~/videos e gera uma playlist textual para o programa mplayer
###

# Tipos de arquivos de video suportados
mp4=".mp4"
MP4=".MP4"
mov=".mov"

# Diretorio com os arquivos de video
videos="/home/display/videos"

#Versão para teste
#videos="videos"

# Playlist textual para o mplayer
playlist="$videos/playlist.m3u"

# Arquivos temporarios
nome_antigo="$(mktemp /tmp/XXXXXX)"
nome_novo="$(mktemp /tmp/XXXXXX)"

# Número de arquivos selecionados
cont=0

# Lista os arquivos de video em $videos
# Seleciona as saidas de acordo com a entrada
# Substitui nova linha por tabulacoes e guarda em $nome_antigo
ls $videos | grep -e "$mp4" -e "$MP4" -e "$mov" | tr '\n' '\t' > $nome_antigo 

# Gera uma nova lista substituindo os espacos por underline
tr ' ' '_' < $nome_antigo > $nome_novo

# Conta o numero de arquivos na lista
# Remove o lixo da saida de wc deixando apenas o numero
# Guarda na variavel em $cont
#cont=$(wc -w $nome_novo | grep -oE '[0-9]{1,}')

# Versão em teste da instrução acima.
cont=$(wc -w < $nome_novo)

# Renomeia os arquivos conforme as listas $nome_antigo e $nome_novo
while [ $cont -gt 0 ]
do
	mv "$videos/$(cut -f $cont < $nome_antigo)" $videos/"$(cut -f $cont < $nome_novo)"
	cont=$(($cont-1))
done

# Substitui os caracteres de tabulação por nova linha e gera a playlist
tr '\t' '\n' < $nome_novo > $playlist

# Remove os arquivos temporarios
rm $nome_antigo $nome_novo

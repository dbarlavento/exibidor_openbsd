#!/bin/sh

# Script de inicialização do exibidor.

# Configura o volume inicail em 80% do máximo
sndioctl output.level=0.8

# Define o arquivo da playlist
playlist="/home/display/videos/playlist.m3u"

# Embaralha a ordem dos vídeos
sort -R $playlist -o $playlist

# Executa o player de vídeo mplayer
mpv --fs --loop-playlist=inf --plalist=$playlist

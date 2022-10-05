# Desenvolvimento de um exibidor de vídeo autonomo com OpenBSD

## Proposta:
Desenvolver um exibidor de vídeo autonomo que seja conectado
a qualquer tela por meio de conexão VGA e possa ser controlado 
de forma remota por meio de uma rede.

## Requisitos
O sistema deve atender aos requisitos básicos a seguir:

### Hardware
1. Deve ser executado num computador velho qualquer com o intuito de 
reciclar hardware antigo (2010).

2. O hardware deve ter ao menos uma saída de vídeo VGA.

3. O hardware deve ser capaz de exibir vídeos em resolução 1920 x 1080 30p,
codificado em H264 e *container* MP4.

4. O hardware deve possuir conexão de rede para acesso remoto.

5. O hardware deve permitir ligar/desligar por meio do botão power (ACPI).

6. O hardware deve permitir o funcionamento sem teclado e mouse.

7. Deve possuir espaço mínimo de 250GB em disco (*HD*) 
para armazenamento dos vídeos.

### Software
1. Todo o software deve ser *open source*.

2. A conexão remota deve ser feita via ssh.

3. O sistema operacional deve ser OpenBSD.

4. Ao iniciar, o sistema operacional não deve solicitar *login* e senha.

5. O sistema deve automaticamente iniciar com um usário chamado **display**.

6. Ao iniciar, o sistema deve carregar automaticamente todas 
as configurações necessárias ao seu pleno funcionamento.

7. O sistema de gerenciamento de janelas deve ser limpo, sem qualquer efeito
visual ou elementos gráficos além do *player* de vídeo.

8. O *player* de vídeo deve ter toda a sua funcionalida controlada 
via *shell*.

9. O *player* de vídeo deve preencher toda a tela, *full screen*.

10. O player de vídeo deve suportar a execução de arquivos de vídeo 
MP4 e mov compactados em h264, h265 e apple prores.

11. O player de vídeo deve suportar a execução de arquivos de vídeo 
no formato *FullHD* (1920 x 1080).

12. O *player* de vídeo deve suportar a execução de *play lists*, lista de 
 reprodução, em formato textual.

13. Ao iniciar, o sistema deve executar o *player* de vídeo com todas as
configurações necessárias ao seu pleno funcionamento.

14. Ao iniciar, o *player* de vídeo deve executar uma lista de reprodução
de vídeos dispostos em ordem aleatória.

## Prova de conceito:
### Computador utilizado:

- Itautec Infoway
- Processador: AMD Phenom II X2 550 @ 3100
- Memória: RAM 8GB
- Disco Rígido: 320GB, sendo 240GB para o diretório home
- Vídeo onboard: ATI Radeon HD 3100
- Áudio onboard: 
- Rede Ethernet onboard:

### Sistema operacional utilizado:

- OpenBSD 7.1

### Programas utilizados

- X Window (X11)
- cwm (*window maneger*)
- OpenSSH
- ksh e sh
- unzip
- mplayer

### Configuração do usuário

1. Criação do usuário que executará as atividades do exibidor.

1.1. Por padrão o nome do usuário será "display".

### Configuração do sistema

1. Definir o nome do *host*. Por padrão será adotado: "display@dominio.com"

2. Definir as configurações do X11.

2.2. Definir 

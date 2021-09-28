FROM ghcr.io/linuxserver/code-server
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install curl wget git zsh && \
    sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

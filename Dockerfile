FROM debian:buster-slim

WORKDIR /Steam

RUN sudo apt-get install lib32gcc-s1
RUN curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -

RUN mkdir gmodds

RUN steamcmd +login anonymous +force_install_dir /gmodds +app_update 4020 validate +quit
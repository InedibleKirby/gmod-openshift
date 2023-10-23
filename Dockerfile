# Set the base image
FROM ubuntu:22.04

# Set environment variables
ENV USER root
ENV HOME /steamcmdhome

# Set working directory
WORKDIR $HOME

# Insert Steam prompt answers
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN echo steam steam/question select "I AGREE" | debconf-set-selections \
 && echo steam steam/license note '' | debconf-set-selections

# Update the repository and install SteamCMD
ARG DEBIAN_FRONTEND=noninteractive
RUN dpkg --add-architecture i386 \
 && apt-get update -y \
 && apt-get install -y --no-install-recommends ca-certificates locales steamcmd \
 && rm -rf /var/lib/apt/lists/*

# Add unicode support
RUN locale-gen en_US.UTF-8
ENV LANG 'en_US.UTF-8'
ENV LANGUAGE 'en_US:en'

# Create symlink for executable
RUN ln -s /usr/games/steamcmd /usr/bin/steamcmd

# Update SteamCMD and verify latest version
RUN steamcmd +quit

# Set default command
RUN steamcmd +force_install_dir /steamgames/gmod +login anonymous +app_update 4020 +quit
# RUN steamcmd +force_install_dir /steamgames/css +login anonymous +app_update 232330 +quit

# Script/next steps to launch server
# Here we handle any .cfg changes, server password, server name, rcon stuff in this section.

# RUN sed -i 's|"cstrike"	"C:\steamcmd\steamapps\common\Counter-Strike Source Dedicated Server\cstrike"|"cstrike" "/steamgames/css/cstrike" /steamgames/gmod/garrysmod/cfg/mount.cfg'
RUN echo "/steamgames/gmod/srcds_run -console -game garrysmod -tickrate 100 -port 27015 +gamemode sandbox -maxplayers 20" > /steamgames/gmod/sandboxstart.sh
# RUN echo "/steamgames/gmod/srcds_run -console -game ttt -tickrate 100 -port 27015 -maxplayers 20 +host_workshop_collection 681278863" > /steamgames/gmod/tttstart.sh

RUN /steamgames/gmod/sandboxstart.sh

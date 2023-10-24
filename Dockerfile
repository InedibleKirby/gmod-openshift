FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install software-properties-common -y
RUN add-apt-repository multiverse -y
RUN apt-get install lib32gcc-s1 -y
RUN dpkg --add-architecture i386 && apt-get update -y && apt-get install -y wget libncurses5:i386
RUN apt-get install tmux screen -y

# Copy the script into the container
COPY setupscript.sh /setupscript.sh
RUN chmod +x /setupscript.sh

# Set the script as the default command
CMD ["/steamgames/gmod/srcds_run", "-console", "-game", "garrysmod", "-tickrate", "64", "-port", "27015", "+gamemode", "sandbox", "-maxplayers", "20", "+map", "gm_construct"]

FROM ubuntu:latest

RUN add-apt-repository multiverse -y
RUN apt install software-properties-common -y
RUN apt install lib32gcc-s1 -y
RUN apt-get install libtinfo5:i386 -y
RUN dpkg --add-architecture i386 && apt-get update -y && apt-get install -y wget libncurses5:i386
RUN apt-get tmux screen -y

# Copy the script into the container
COPY setupscript.sh /setupscript.sh
RUN chmod +x /setupscript.sh

# Set the script as the default command
CMD ["/setupscript.sh"]

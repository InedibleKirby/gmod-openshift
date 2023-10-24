FROM ubuntu:latest

RUN dpkg --add-architecture i386 && apt-get update -y && apt-get install -y wget libncurses5:i386

# Copy the script into the container
COPY setupscript.sh /setupscript.sh
RUN chmod +x /setupscript.sh

# Set the script as the default command
CMD ["/setupscript.sh"]

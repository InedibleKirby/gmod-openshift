FROM ubuntu:latest

# Copy the script into the container
COPY setupscript.sh /setupscript.sh
RUN chmod +x /setupscript.sh

# Set the script as the default command
CMD ["/setupscript.sh"]

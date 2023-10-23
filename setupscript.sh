#!/bin/bash
ls
pwd
#Find and replace CSS mounting config
#sed -i 's|	//"cstrike"		"C:\steamcmd\steamapps\common\Counter-Strike Source Dedicated Server\cstrike"|"cstrike" "/data/css/cstrike"' /data/gmod/garrysmod/cfg/mount.cfg

#Create server launch script file
#touch /data/gmod/sandboxstart.sh
#echo "/data/gmod/srcds_run -console -game garrysmod -tickrate 100 -port 27015 +gamemode sandbox -maxplayers 20" > /data/gmod/sandboxstart.sh

#echo "/data/gmod/srcds_run -console -game garrysmod -tickrate 100 -port 27015 +gamemode terrortown -maxplayers 20 +host_workshop_collection 681278863" > /data/gmod/tttstart.sh

#Kickoff launch script file
#source /data/gmod/sandboxstart.sh
#source /data/gmod/tttstart.sh

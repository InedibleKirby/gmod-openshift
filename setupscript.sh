#!/bin/bash
cd steamgames
ls

#Find and replace CSS mounting config
#sed -i 's|	//"cstrike"		"C:\steamcmd\steamapps\common\Counter-Strike Source Dedicated Server\cstrike"|"cstrike" "/steamgames/css/cstrike"' /steamgames/gmod/garrysmod/cfg/mount.cfg

#Create server launch script file
#touch /steamgames/gmod/sandboxstart.sh
#echo "/steamgames/gmod/srcds_run -console -game garrysmod -tickrate 100 -port 27015 +gamemode sandbox -maxplayers 20" > /steamgames/gmod/sandboxstart.sh

#echo "/steamgames/gmod/srcds_run -console -game garrysmod -tickrate 100 -port 27015 +gamemode terrortown -maxplayers 20 +host_workshop_collection 681278863" > /steamgames/gmod/tttstart.sh

#Kickoff launch script file
#source /steamgames/gmod/sandboxstart.sh
#source /steamgames/gmod/tttstart.sh

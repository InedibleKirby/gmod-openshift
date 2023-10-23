#!/bin/bash
sed -i 's|"cstrike"	"C:\steamcmd\steamapps\common\Counter-Strike Source Dedicated Server\cstrike"|"cstrike" "/steamgames/css/cstrike" /steamgames/gmod/garrysmod/cfg/mount.cfg'


#echo "/steamgames/gmod/srcds_run -console -game garrysmod -tickrate 100 -port 27015 +gamemode terrortown -maxplayers 20 +host_workshop_collection 681278863" > /steamgames/gmod/tttstart.sh

/steamgames/gmod/sandboxstart.sh

#!/bin/bash

dpkg --add-architecture i386
apt update
apt-get install lib32gcc1 libstdc++6 libstdc++6:i386 lib32tinfo5 ncurses-libs.i686

#Replace mounting config
cat << EOF > /steamgames/gmod/garrysmod/cfg/mount.cfg
"mountcfg"
{
	"cstrike"	"/steamgames/css/cstrike"
} 
EOF

cat << EOF > /steamgames/gmod/garrysmod/cfg/mountdepots.txt
"gamedepotsystem"
{
	"cstrike"	"1"
	"hl1"		"0"
	"hl1_hd"	"0"
	"hl2"		"0"
	"hl2mp"		"0"
	"episodic"	"0"
	"ep2"		"0"
	"lostcoast"	"0"
}
EOF

#Cd to correct folder
cd /steamgames/gmod/
chmod +777 srcds_run
chmod +777 srcds_linux
chmod +777 sandboxstart.sh

#Create server launch script file
./srcds_run -console -game garrysmod -tickrate 100 -port 27015 +gamemode sandbox -maxplayers 20 +map gm_construct

#echo ./srcds_run -console -game garrysmod -tickrate 100 -port 27015 +gamemode terrortown -maxplayers 20 +host_workshop_collection 681278863



#Kickoff launch script file
#source ./sandboxstart.sh
#source ./tttstart.sh

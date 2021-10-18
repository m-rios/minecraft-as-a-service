#!/bin/sh

# create the authentication token for dbxcli. Note: to get the token, run the 
# auth flow with dbxcli manually once, and get the string in 
# $HOME/.config/dbxcli/auth.json
mkdir -p $HOME/.config/dbxcli
echo "${DB_TOKEN}" > $HOME/.config/dbxcli/auth.json

# download the latest world and unpack it
remote_world=$(dbxcli ls -l /Minecraft | tr -s ' ' | cut -d' ' -f7 | tail -n1)
echo "Downloading latest world: ${remote_world}"
dbxcli get "${remote_world}" world.zip 
echo "Extracting world"
unzip world.zip
echo "Cleaning up"
rm world.zip
chown -R minecraft:minecraft world


/start

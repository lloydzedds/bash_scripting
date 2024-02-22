#!/bin/bash
echo "Every command returns an exit status. It Range from 0 to 255"
echo "exit code = 0 is a success of command execution"
echo "Other than 0 = error condition"
echo "We can use '$ ?' $? to view the previous command exit status"

HOST="google.com"

ping -c 1 $HOST 
# -c 1 sends only one packet to the host
if [ "$?" -eq "0" ]
then
echo "$HOST reachable"
else
echo "$HOST unreachable"
fi

echo "Beside exit statuses we can use 'and' and 'or' in this way && ||"
echo "apt-get update && apt-get upgrade or apt-get update || apt-get upgrade"
echo "&& will execute next command only if the previous command succeeds"
echo "whereas || will execute only if the previous command fails"

sudo docker ps && sudo docker images

sudo docker container ls || sudo docker difuh
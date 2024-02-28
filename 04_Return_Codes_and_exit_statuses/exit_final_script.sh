#!/bin/bash
sdcl="sudo docker container ls"
dcl="docker container ls"
$dcl || $sdcl
if [ "$?" -ne "0" ]
then
    echo "Command invalid"
    exit 1
fi

read -p "give the hostname to curl: " HOST
if [ -z "$HOST" ]; then
    HOST="google.com"
fi
read -p "Do you want ro curl $HOST (yes/no): " YES

if [[ "$YES" == y* ]]
then
    echo "Curling your host: $HOST"
    sleep 3
    curl $HOST
    echo "The above command exected with $? status code"
else
    echo "Your Host will not be curl'ed"
    sleep 2
fi    

echo "****executing next script****"
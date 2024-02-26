#!/bin/bash
sdcl="sudo docker container ls"
dcl="docker container ls"
$dcl || $sdcl
if [ "$?" -ne "0" ]
then
    echo "Command invalid"
    exit 1
fi

HOST="google.com"
YES="1"
if [ "$YES" -eq "1" ]
then
    curl $HOST
    echo "The above command exected with $? status code"
fi    
echo "****executing next script****"




read -p "enter the name os the file: " CATFILE
if [ -e $CATFILE ]
then 
    if [ -f $CATFILE ]
    then 
        cat $CATFILE

    else 
        echo "$CATFILE is not a regular file"
    fi
    if [ "$?" -eq "0" ]
    then
        echo "Command succeeded and exit with a $? exit status"
    fi
    if [ "$?" -ne "0" ]
    then
        echo "Command failed and exit with a 1 exit status"
    fi
else
    echo "Command exited with $? status code"
fi

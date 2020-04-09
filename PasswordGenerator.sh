#!/bin/bash

#Simple Password Generator 
clear
echo " "
echo "This is a simple password generator"
echo "Please insert lenght of the password: "
read PASSWD
echo "Please insert number of passwords"
read NUM
echo " "

for l in $(seq 1 $NUM);
do
    openssl rand -base64 48| cut -c1-$PASSWD
done

echo " "

if [ "$PASSWD" -lt "10" ];
then
    echo "NOTE! short passwords are not secure"
    echo "consider using passwords greater than 10 characters."
else
    echo "Completed"
fi

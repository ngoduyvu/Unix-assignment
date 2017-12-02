#!/usr/bin/env bash
# File: guessinggame.sh

dirarray=($(ls -d */))
dircount=${#dirarray[@]}
dirguess=0

function checkguess {
    if [[ $1 -lt $2 ]]
    then
        echo "Need to be higher"
    elif [[ $1 -gt $2 ]]
    then
        echo "Need to be lower"
    fi
}

while [ $dirguess -ne $dircount ]
do
    echo "Please guess number of file"
    read dirguess

    $(checkguess $dirguess $ dircount)
done

echo "Your are correct"

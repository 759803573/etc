#! /bin/bash

. ./.utils/get_file_location.sh
SCRIPTPATH=`getFileLocation $1`
echo $SCRIPTPATH

echo cp $SCRIPTPATH/.zshrc ~/

echo 'ok?'
read
cp $SCRIPTPATH/.zshrc ~/
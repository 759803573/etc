#! /bin/bash

. ./.utils/get_file_location.sh
SCRIPTPATH=`getFileLocation $1`
echo $SCRIPTPATH

echo 'ok?'
read
brew bundle --file=- < $SCRIPTPATH/Brewfile
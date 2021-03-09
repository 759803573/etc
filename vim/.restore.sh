#! /bin/bash

. ./.utils/get_file_location.sh
SCRIPTPATH=`getFileLocation $1`
echo $SCRIPTPATH

echo cp $SCRIPTPATH/.vimrc ~/

echo 'ok?'
read
cp $SCRIPTPATH/.vimrc ~/
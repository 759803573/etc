#! /bin/bash -ex

. ./.utils/get_file_location.sh
SCRIPTPATH=`getFileLocation`
echo $SCRIPTPATH

brew bundle dump --file=- > $SCRIPTPATH/Brewfile
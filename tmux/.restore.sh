#! /bin/bash

. ./.utils/get_file_location.sh
SCRIPTPATH=`getFileLocation $1`
echo $SCRIPTPATH

echo cp $SCRIPTPATH/.tmux.conf ~/

echo 'ok?'
read
cp $SCRIPTPATH/.tmux.conf ~/
brew install reattach-to-user-namespace
gem install tmuxinator
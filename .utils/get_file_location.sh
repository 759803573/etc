#!/bin/bash


function getFileLocation() {
  echo $1
  local SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )" 

  echo "$SCRIPTPATH"
}
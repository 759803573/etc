#!/bin/bash

function backup() {
  for config in `ls -d *` 
  do
    echo backup $config
    bash $config/.backup.sh
  done

  git add .
  git commit -m "auto-commit `date \"+ %Y-%m-%d\"`"
}

backup

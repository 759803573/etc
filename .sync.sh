#!/bin/bash

function backup() {
  for config in `ls -ld -- */`
  do
    echo backup $config
    bash $config/.backup.sh
  done

  git add .
  git commit -m "auto-commit `date \"+ %Y-%m-%d\"`"
  git push origin master
}

backup

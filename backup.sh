#!/bin/bash

function backup_file () {
  # This function creates a backup of a file.

  # Make sure the file exists.
  if [ -f "$1" ] 
  then
    # Make the BACKUP_FILE variable local to this function.
    local BACKUP_FILE="/tmp/$(basename ${1}).$(date +%F).$$"
    echo "Backing up $1 to ${BACKUP_FILE}"

    # The exit status of the function will be the exit status of the cp command.
    cp $1 $BACKUP_FILE
  else
    # The file does not exist, so return an non-zero exit status.
    return 1
  fi
}

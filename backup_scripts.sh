#!/bin/bash

# Author: Lalit-710Cx
# WrittenTime: 25/08/2024 21:59:20
# GitHub Repo: 'https://github.com/Lalit-710Cx'
# Improved by: [Your Name]

# Define variables for paths
SOURCE_HOME="/home/bikram007"
DEST_HOME="${SOURCE_HOME}/dotfile" # Set destination to ~/bikram007/dotfile
SHELL_DIR="${DEST_HOME}/shell"
CONFIG_DIR="${SOURCE_HOME}/.config"
CONFIG_DEST="${DEST_HOME}/config"

# Ensure destination directories exist
mkdir -p "$SHELL_DIR" "$CONFIG_DEST"

# Array of files to copy
declare -A FILES_TO_COPY=(
  ["${SOURCE_HOME}/.zshrc"]="${SHELL_DIR}"
  ["${SOURCE_HOME}/.p10k.zsh"]="${SHELL_DIR}"
  ["${SOURCE_HOME}/.bashrc"]="${SHELL_DIR}"
  ["${CONFIG_DIR}/hypr"]="${CONFIG_DEST}"
  ["${CONFIG_DIR}/nvim"]="${CONFIG_DEST}"
  ["${CONFIG_DIR}/yazi"]="${CONFIG_DEST}"
  ["${CONFIG_DIR}/kitty"]="${CONFIG_DEST}"
  ["${CONFIG_DIR}/spicetify"]="${CONFIG_DEST}"
  ["${CONFIG_DIR}/waybar"]="${CONFIG_DEST}" # Added waybar directory
)

# Log file
LOG_FILE="${DEST_HOME}/backup.log"
echo "Backup started at $(date)" >>"$LOG_FILE"

# Copy files and directories, overwriting if they already exist
for SRC in "${!FILES_TO_COPY[@]}"; do
  DEST="${FILES_TO_COPY[$SRC]}"
  if [ -e "$SRC" ]; then
    cp -r "$SRC" "$DEST" && echo "Copied $SRC to $DEST" >>"$LOG_FILE" || echo "Failed to copy $SRC to $DEST" >>"$LOG_FILE"
  else
    echo "Warning: $SRC does not exist." >>"$LOG_FILE"
  fi
done

echo "Backup completed at $(date)" >>"$LOG_FILE"
echo "All files backed up successfully."

##!/bin/bash
#
## Author: Lalit-710Cx
## WrittenTime: 25/08/2024 21:59:20
## GitHub Repo: 'https://github.com/Lalit-710Cx'
## Improved by: [Your Name]
#
## Define variables for paths
#SOURCE_HOME="/home/bikram007"
#DEST_HOME="${SOURCE_HOME}/dotfile"
#SHELL_DIR="${DEST_HOME}/shell"
#CONFIG_DIR="${SOURCE_HOME}/.config"
#CONFIG_DEST="${DEST_HOME}/config"
#
## Ensure destination directories exist
#mkdir -p "$SHELL_DIR" "$CONFIG_DEST"
#
## Array of files to copy
#declare -A FILES_TO_COPY=(
#  ["${SOURCE_HOME}/.zshrc"]="${SHELL_DIR}"
#  ["${SOURCE_HOME}/.p10k.zsh"]="${SHELL_DIR}"
#  ["${SOURCE_HOME}/.bashrc"]="${SHELL_DIR}"
#  ["${CONFIG_DIR}/hypr"]="${CONFIG_DEST}"
#  ["${CONFIG_DIR}/nvim"]="${CONFIG_DEST}"
#  ["${CONFIG_DIR}/yazi"]="${CONFIG_DEST}"
#  ["${CONFIG_DIR}/kitty"]="${CONFIG_DEST}"
#  ["${CONFIG_DIR}/spicetify"]="${CONFIG_DEST}"
#  ["${CONFIG_DIR}/waybar"]="${CONFIG_DEST}"
#)
#
## Log file
#LOG_FILE="${DEST_HOME}/backup.log"
#echo "Backup started at $(date)" >>"$LOG_FILE"
#
## Copy files and directories
#for SRC in "${!FILES_TO_COPY[@]}"; do
#  DEST="${FILES_TO_COPY[$SRC]}"
#  if [ -e "$SRC" ]; then
#    cp -r "$SRC" "$DEST" && echo "Copied $SRC to $DEST" >>"$LOG_FILE" || echo "Failed to copy $SRC to $DEST" >>"$LOG_FILE"
#  else
#    echo "Warning: $SRC does not exist." >>"$LOG_FILE"
#  fi
#done
#
#echo "Backup completed at $(date)" >>"$LOG_FILE"
#echo "All files backed up successfully."
#

# OLD CODE
###!/bin/bash
### author: Lalit-710Cx
### WrittenTime 25/08/2024 21:59:20
### Github Repo: 'https://github.com/Lalit-710Cx'
##
##cp -r /home/bikram007/.zshrc /home/bikram007/dotfile/shell/
##cp -r /home/bikram007/.p10k.zsh /home/bikram007/dotfile/shell/
##cp -r /home/bikram007/.bashrc /home/bikram007/dotfile/shell/
##
##cp -r /home/bikram007/.config/hypr /home/bikram007/dotfile/
##
##cp -r /home/bikram007/.config/nvim /home/bikram007/dotfile/
##cp -r /home/bikram007/.config/yazi /home/bikram007/dotfile/
##
##cp -r /home/bikram007/.config/kitty /home/bikram007/dotfile/
##cp -r /home/bikram007/.config/spicetify /home/bikram007/dotfile/
##

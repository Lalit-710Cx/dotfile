#!/bin/bash

# Author: Lalit-710Cx
# WrittenTime: 25/08/2024 21:59:20
# GitHub Repo: 'https://github.com/Lalit-710Cx'
# Improved by: [Your Name]

# Define variables for paths
SOURCE_HOME="/home/bikram007"
DEST_HOME="${SOURCE_HOME}/dotfile" # Set destination to ~/bikram007/dotfile
SHELL_DIR="${DEST_HOME}/shell"

# Ensure destination directories exist
mkdir -p "$SHELL_DIR"

# Array of files to copy
declare -A FILES_TO_COPY=(
  ["${SOURCE_HOME}/.zshrc"]="${SHELL_DIR}"
  ["${SOURCE_HOME}/.p10k.zsh"]="${SHELL_DIR}"
  ["${SOURCE_HOME}/.bashrc"]="${SHELL_DIR}"
  ["${SOURCE_HOME}/.config/hypr"]="${DEST_HOME}"
  ["${SOURCE_HOME}/.config/nvim"]="${DEST_HOME}"
  ["${SOURCE_HOME}/.config/yazi"]="${DEST_HOME}"
  ["${SOURCE_HOME}/.config/kitty"]="${DEST_HOME}"
  ["${SOURCE_HOME}/.config/spicetify"]="${DEST_HOME}"
  ["${SOURCE_HOME}/.config/waybar"]="${DEST_HOME}" # Added waybar directory
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

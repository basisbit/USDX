#!/bin/bash	
# Copies config.ini file

# === VARIABLES === 
# Local .app-file
APP="UltraStarDeluxe.app"

# Application Support Folder							
APP_VER="UltraStarDeluxe1.3"

# Full Path to Application Support Folder							
APP_DIR="/Users/$USER/Library/Application Support/$APP_VER/"

# Source For Copying config.ini	
SOURCE="$PWD/game/config.ini"

# Destination For Pasting config.ini 							
DEST="/Users/$USER/Library/Application Support/$APP_VER/"			

# === COPY CONFIG SETTINGS ===
# Replace config.ini
cp "$SOURCE" "$DEST"
											
# === RUN APP ===
#open UltraStarDeluxe.app # NOT WORKING - NOT SURE WHY...

printf "Setting have been copied.\nPlase read the 'READ ME' for running on OSX Mojave." 
echo
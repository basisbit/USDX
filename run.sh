#!/bin/bash	
# Copies config.ini file

# === START MESSAGE ===												
#printf "=== MG USDX - Compiler Helper 1.2 - Part 2 ==="
#echo

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
#open UltraStarDeluxe.app
printf "APP running...\n"
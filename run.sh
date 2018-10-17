#!/bin/bash	
# Copies config.ini file

# === START MESSAGE ===												# === COMMENTS ===	
printf "=== MG USDX - Compiler Helper 1.2 - Part 2 ==="				#
echo
																	#
# === VARIABLES === 												#
APP="UltraStarDeluxe.app"											# Local .app-file
APP_VER="UltraStarDeluxe1.3"										# Application Support Folder
APP_DIR="/Users/$USER/Library/Application Support/$APP_VER/"		# Full Path to Application Support Folder
SOURCE="$PWD/game/config.ini"										# Source For Copying config.ini
DEST="/Users/$USER/Library/Application Support/$APP_VER/"			# Destination For Pasting config.ini 
																	#
# === COPY CONFIG SETTINGS ===										#
cp "$SOURCE" "$DEST"												# Replace config.ini
																	#
# === RUN APP ===													#
open UltraStarDeluxe.app 											# Run Application

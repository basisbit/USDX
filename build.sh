#!/bin/bash	
# Compiles APP for Mac OSX Mojave

# === START MESSAGE ===												
printf "=== MG USDX - Helper 1.3 ==="				
printf "\n\nThis Script Will Help You Compile USDX MG Edition.\n"	
printf "Don't forget to run './run' afterwards!\n"	#				
read -p "Please Press Enter to Continue... `echo $'\n> '`"			
																	
# === APP VARIABLES === 	
# Local .app-file											
APP="UltraStarDeluxe.app"

# Application Support Folder
APP_VER="UltraStarDeluxe1.3"

# === PATH VARIABLES === 	
# Full Path to Application Support Folder
APP_DIR="/Users/$USER/Library/Application Support/$APP_VER/"		

# Source for COPYING config.ini
SOURCE="$PWD/game/config.ini"

# Destination for PASTING config.ini 										
DEST="/Users/$USER/Library/Application Support/$APP_VER/"			

# === CHECK PREREQUISITES ===										
if [ -e "$APP" ]													
	then															
		echo "Found APP! Removing APP..."
		# Remove Previously Compiled App 							
    	# EXPERIMENTAL: make clean-macosx-app

    	# Remove Previously Compiled App
    	rm -rf "$APP"												 
    else
    	echo "No APP Found!"										
fi 																	

# Check If Application Support Folder Exists																
if [ -d "$APP_DIR" ]												
	then															
		echo "Found DIR! Removing DIR..."
		# Remove Temporary Folder					
		rm -r "$APP_DIR"											
	else															
		echo "No DIR Found!"			   							
fi 																	
																	
# === ENVIRONMENT SETUP ===	
# Generate Configure file										
sh ./autogen.sh

# Runs Configure file.
# Makes sure that you have the right build setup
sh ./configure
																	
# === COMPILE ===
# Build (compile) the UltraStar Application										
make macosx-standalone-app

# Run APP to create the Application Support Folder							
# I.e /Users/$USER/Library/Application Support/$APP_VER/
open UltraStarDeluxe.app

# Gracefully quits app
osascript -e 'quit app "UltraStarDeluxe.app"'

# Copies config.ini to Application Support folder
sh ./run.sh

# EXPERIMENTAL: #read -p "Please EXIT the app and run './run.sh'!`echo $'\n> '`"
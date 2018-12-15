#!/bin/bash	
# Compiles App for Mac OSX


# === START MESSAGE ===												
printf "=== MG USDX - Compiler Helper 1.2 - Part 1 ==="				
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
    	make clean-macosx-app

    	# Experimental: Remove Previously Compiled App
    	#rm -rf "$APP"												 
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
# Generate Configure File and More										
sh ./autogen.sh

# Make Sure That You Have Your Build Setup Right								
sh ./configure 														
																	
# === COMPILE ===			
# Build the UltraStar Application										
make macosx-standalone-app											
read -p "Please EXIT the app and run './run.sh'!`echo $'\n> '`"
# Run Application
open UltraStarDeluxe.app 											
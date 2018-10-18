#!/bin/bash	
# Compiles App for Mac OSX


# === START MESSAGE ===												# === COMMENTS ===	
printf "=== MG USDX - Compiler Helper 1.2 - Part 1 ==="				#
printf "\n\nThis Script Will Help You Compile USDX MG Edition.\n"	#
printf "Don't forget to run './run' afterwards!\n"	#				#
read -p "Please Press Enter to Continue... `echo $'\n> '`"			#
																	#
# === VARIABLES === 												#
APP="UltraStarDeluxe.app"											# Local .app-file
APP_VER="UltraStarDeluxe1.3"										# Application Support Folder
APP_DIR="/Users/$USER/Library/Application Support/$APP_VER/"		# Full Path to Application Support Folder
SOURCE="$PWD/game/config.ini"										# Source For Copying config.ini
DEST="/Users/$USER/Library/Application Support/$APP_VER/"			# Destination For Pasting config.ini 
																	#
# === CHECK PREREQUISITES ===										#
if [ -e "$APP" ]													# Check If .app-file Exists
	then															#
		echo "Found APP! Removing APP..."							#
    	make clean-macosx-app										# Remove Previously Compiled App 
    	#rm -rf "$APP"												# Remove Previously Compiled App 
    else															#
    	echo "No APP Found!"										# 
fi 																	#
																	#
if [ -d "$APP_DIR" ]												# Check If Application Support Folder Exists
	then															#
		echo "Found DIR! Removing DIR..."							#
		rm -r "$APP_DIR"											# Remove Temporary Folder
	else															#
		echo "No DIR Found!"			   							# 
fi 																	#
																	#
# === ENVIRONMENT SETUP ===											#
sh ./autogen.sh														# Generate Configure File and More
sh ./configure 														# Make Sure That You Have Your Build Setup Right
																	#
# === COMPILE ===													#
make macosx-standalone-app											# Build the UltraStar Application
read -p "Please EXIT the app and run './run.sh'!`echo $'\n> '`"		#
open UltraStarDeluxe.app 											# Run Application
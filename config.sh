#!/bin/bash

# Location of where the server executable is located. Needs to be absolute (no relative paths)
GAME_DIR="/mnt/server"

# World Name.  This is the name used in the game that shows up on the map as well as the server listing.
WORLD_NAME="You forgot to change this name you dummy"

# Network settings.  These are the defaults, change as necessary.  Please note there is 1 additional port that needs to be opened on your
# firewall that will be +1 above the UDP_PORT.  So using the defaults you would have to open 16161 and 16162 for UDP and 16168 for TCP 
# redirected to your server
UDP_PORT=16161
HTTP_PORT=16168

# Best to leave this as is.
SCREEN_NAME="sapiens-server"

#!/usr/bin/env bash

# Check first if program is already running. If not, run the program.
function run {
	if ! pgrep -f $1 ;
	then
		$@&
	fi
}

# Make sure bluetooth is ready - especially for headsets.
run bluetoothctl power on
run bluetoothctl default-agent
# Starts the Applet so that it can appear in the wibar
run blueman-applet

# Start Pulse Audio
run systemctl --user start pulseaudio.service

# Enable Albert - The App Launcher
run albert

# Enable Thunar - The File Manager
run thunar --daemon

# Activate Pulseaudio System Tray
run pasystray

# Bind Special Keys(e.g. Volume Control)
run xbindkeys

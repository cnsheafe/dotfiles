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

# Start Pulse Audio
run systemctl --user start pulseaudio.service

# Enable Albert - The App Launcher
run albert

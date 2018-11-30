#!/bin/bash

# Check Chocolatey.org Status Page for any disruptions
# Ideally this script can be called by a monitoring service such as mmonit/monit on Linux

set -e

# First required dependancies are tested on system

exists()
{
	! command -v "$1" >/dev/null
}

if exists "w3m"  || exists "grep" || exists "wc" ; then
	echo "Error, required executables not found. Quitting"
	exit 1
fi


status=`w3m -dump https://status.chocolatey.org/  | grep Disrupted | wc -l`
# test null status
[-z "$status"] && exit 1

if [ "$status" -eq 0 ];then

		echo "Chocolatey Status OK"
	        exit 0;
	else
	        echo "Chocolatey Disrupted"
	        exit 1;

fi

#!/usr/bin/env bash
if [ -n "$1" ]
then
	while true
	do
		inotifywait "$1"
		lilypond "$1"
		if [ -z "$(pgrep evince)" ]
		then
			evince "${1%.ly}.pdf" &
		fi
	done
else
	echo "Remember to specify a file name."
fi

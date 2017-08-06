#!/usr/bin/env bash
if [ -n "$1" ]
then
	while true
	do
		inotifywait "$1"
		lilypond "$1"
		OUTPUT_FILE="${1%.ly}.pdf"
		if [ -e "$OUTPUT_FILE" ] && [ -z "$(pgrep evince)" ]
		then
			evince "$OUTPUT_FILE" &
		fi
	done
else
	echo "Remember to specify a file name."
fi

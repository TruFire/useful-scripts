#!/usr/bin/env bash
while true
do
	inotifywait "$1"
	lilypond "$1"
	if [ -z "$(pgrep evince)" ]
	then
		evince "${1%.ly}.pdf" &
	fi
done


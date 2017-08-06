#!/usr/bin/env bash

while true; do inotifywait $1; lilypond $1; done


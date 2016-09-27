#!/bin/bash
set -e

if echo "$@" | grep -qv -- '--video'; then
	exec casperjs "$@"
else 
	exec casperjs "$@" | ffmpeg -y -c:v png -f image2pipe -r 25 -t 10  -i - -c:v libx264 -pix_fmt yuv420p -movflags +faststart video.mp4
fi

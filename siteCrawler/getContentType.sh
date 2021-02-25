#!/bin/sh
res=$(curl -IsS "$1" | grep -i Content-Type: | awk '{print $2}')

[ "$res" ] && echo "\"$res\"" || echo "\"unknown\""

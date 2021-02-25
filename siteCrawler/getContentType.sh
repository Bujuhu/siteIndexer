#!/bin/sh
res=$(curl -IsS "$1" | grep -i Content-Type: | awk '{ gsub(/\r/,""); print $2}')

[ "$res" ] && echo "\"$res\"" || echo "\"unknown\""

#!/bin/sh

index=$1
id=$2
contentType=$3
videoDownloadable=$4

curl -sS --location --request POST "http://192.168.31.105:9200/_bulk" \
    --header 'Content-Type: application/json' \
    --data-binary @-
#!/bin/sh

index=$1
id=$2
contentType=$3
videoDownloadable=$4

curl -sS --location --request POST "$SIDX_ES_HOST/_bulk" \
    --header 'Content-Type: application/json' \
    --data-binary @-
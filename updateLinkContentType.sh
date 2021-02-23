#!/bin/sh

index=$1
id=$2
url=$3

contentType=$(./siteCrawler/getContentTypeTor.sh $url)
videoDownloadable=$(youtube-dl -qs --no-warnings --no-call-home $url >&2 2> /dev/null && echo "true" || echo "false")

# ./esClient/updateLinks.sh $index $id $contentType $videoDownloadable
echo $id $contentType $videoDownloadable
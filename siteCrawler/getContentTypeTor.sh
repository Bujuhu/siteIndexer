#!/bin/sh

url=$1
tld=$(echo $url | ./urlParser/getTldPart.sh)
command -v torify > /dev/null && [ "$tld" = "onion" ] &&
    torify ./siteCrawler/getContentType.sh $url ||
    ./getContentType $url
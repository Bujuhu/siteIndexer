#!/bin/sh

awk -v esid="$1" '{ printf "{ \"update\": {\"_id\": \"%s\", \"_index\": \"%s\"}}\n\
{ \"doc\": { \"additional_crawler_information\": { \"Content-Type\": \"%s\", \"Video-Downloadable\": %s }}}\n", $1, esid, $2, $3 }'
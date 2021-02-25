#!/bin/sh

printf "{ \"update\": {\"_index\": \"%s\", \"_id\": \"%s\"}[[nl]]{ \"doc\": { \"additional_crawler_information\": { \"Content-Type\": %s, \"Video-Downloadable\": %s }}}\n" $1 $2 $3 $4

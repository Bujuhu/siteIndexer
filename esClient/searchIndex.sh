#!/bin/sh

curl -sS --location --request POST "$SIDX_ES_HOST/$1/_search?size=$2" \
    --header 'Content-Type: application/json' \
    --data-raw '{
    "query": {
    "bool": {
        "must_not": [
            {
              "exists": {
                "field": "additional_crawler_information.Content-Type"
              }
           },
           {
              "exists": {
                "field": "additional_crawler_information.Video-Downloadable"
              }
           }
        ]
    }
    }
}'
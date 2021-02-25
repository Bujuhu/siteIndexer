#!/bin/sh

curl -sS localhost:9200/_cat/indices | grep link_list | awk '{ print $3 }'

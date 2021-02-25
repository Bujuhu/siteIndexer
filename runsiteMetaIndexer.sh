#!/bin/sh

export SIDX_ES_HOST="127.0.0.1:9200"

TMPFILE="/tmp/siteIndexer_$1"

while ./siteMetaIndexer.sh $1 1000 > $TMPFILE; do
< $TMPFILE
sed 's/\[\[nl\]\]/\n/g' $TMPFILE |
./esClient/updateDocsBulk.sh && echo

done

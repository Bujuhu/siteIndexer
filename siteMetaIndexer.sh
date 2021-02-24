#!/bin/sh

index=$1
count=$2

[ -n "$SIDX_ES_HOST" ] &&
    ./esClient/searchIndex.sh $index $count |
    ./esClient/extractLinks.sh | 
    parallel --no-run-if-empty --colsep ' ' --linebuffer ./updateLinkContentType.sh $index |
    ./esClient/buildBulkUpdateDocument.sh $index |
    ./esClient/updateDocsBulk.sh && echo ||

    echo 'Please set the environment Variable $SIDX_ES_HOST to the elasticsearch to continue' && 
    exit 1




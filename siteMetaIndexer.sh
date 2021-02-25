#!/bin/sh

index=$1
count=$2

[ -n "$SIDX_ES_HOST" ] &&
    ./esClient/searchIndex.sh $index $count |
    ./esClient/extractLinks.sh | 
    parallel --colsep ' ' ./updateLinkContentType.sh $index |
    parallel --colsep ' ' ./esClient/buildBulkUpdateDocument.sh $index ||
#    ./esClient/updateDocsBulk.sh && echo && exit ||

    echo 'Please set the environment Variable $SIDX_ES_HOST to the elasticsearch to continue' &&
    exit 1




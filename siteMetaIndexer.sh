#!/bin/sh

index=$1
count=$2

./esClient/searchIndex.sh $index $count |
./esClient/extractLinks.sh | 
parallel --colsep ' ' --linebuffer ./updateLinkContentType.sh $index |
./esClient/buildBulkUpdateDocument.sh $index |
./esClient/updateDocsBulk.sh && echo




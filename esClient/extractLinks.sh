#!/bin/sh 
jq -r '.hits.hits[] | "\(._id) \(._source.source[].link)"' | awk NF
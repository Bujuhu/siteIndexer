#!/bin/sh 
jq -r '.hits.hits[] | "\(._id) \(._source.link)"' | awk NF

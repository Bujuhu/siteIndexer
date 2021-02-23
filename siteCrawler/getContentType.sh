#!/bin/sh
curl -IsS "$1" | grep Content-Type: | awk '{print $2}'
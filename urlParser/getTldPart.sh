#!/bin/sh

./urlParser/getHostPart.sh | awk -F . '{print $(NF)}'
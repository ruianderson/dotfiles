#!/bin/bash

RESULT=`speedtest --simple`
DOWNLOAD=`echo $RESULT | grep Download | awk -F ' ' '{ print $2 }'`
UPLOAD=`echo $RESULT | grep Upload | awk -F ' ' '{ print $2 }'`

echo $DOWNLOAD MBs $UPLOAD MBs

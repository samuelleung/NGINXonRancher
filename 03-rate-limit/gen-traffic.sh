#!/bin/sh
IC_HTTPS_PORT=80

if [ -z $1 ]; then
  DURATION="5"
else
  DURATION=$1
fi

echo $TARGET $DURATION
echo "GET http://webapp.example.com:$IC_HTTPS_PORT/"  | vegeta attack -duration=${DURATION}s  -insecure | tee results.bin | vegeta report

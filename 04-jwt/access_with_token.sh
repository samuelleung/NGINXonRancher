#!/bin/sh

curl --resolve webapp.example.com:$IC_HTTP_PORT:$IC_IP http://webapp.example.com:$IC_HTTP_PORT/ -H "token: `cat token.jwt`"

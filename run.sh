#!/bin/bash

exec /usr/bin/docker run --rm --name tor-privoxy -p 8118:8118 -p 9050:9050 jhoppensteadt/tor-privoxy-alpine

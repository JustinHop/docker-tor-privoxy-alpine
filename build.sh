#!/bin/bash

docker build . -t jhoppensteadt/tor-privoxy-alpine:$(date +%F) -t jhoppensteadt/tor-privoxy-alpine:latest

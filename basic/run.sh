#!/bin/sh
docker build -t squid-basic .
docker kill squid-basic
docker rm squid-basic
docker run --name squid-basic -d --restart=always --publish 3128:3128 squid-basic

echo "Running basic proxy on port 3128"
#!/bin/sh
docker build -t dante .
docker kill dante
docker rm dante
docker run --name dante -d --restart=always --publish 1080:1080 joaomoreno/dante

echo "Running SOCKS5 proxy on port 1080"
echo "Username: user"
echo "Password: password"
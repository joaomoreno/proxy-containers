#!/bin/sh
docker build -t squid-basic-auth .
docker kill squid-basic-auth
docker rm squid-basic-auth
docker run --name squid-basic-auth -d --restart=always --publish 3129:3128 joaomoreno/squid-basic-auth

echo "Running basic auth proxy on port 3129"
echo "Username: user"
echo "Password: password"
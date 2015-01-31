#!/bin/sh
docker rm -f api-gatekeeper
docker run --name api-gatekeeper -d -p 8080:80 api-gatekeeper

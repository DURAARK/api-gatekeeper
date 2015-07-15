#!/bin/sh
docker rm -f api-gatekeeper-v0.7.0

docker run -d -p 80:80 --name api-gatekeeper-v0.7.0 \
        --link workbench-ui-v0.7.0:workbench-ui-v0.7.0 \
        --link microservice-sessions-v0.7.0:microservice-sessions-v0.7.0 \
        --link microservice-metadata-extraction-v0.7.0:microservice-metadata-extraction-v0.7.0 \
        --link microservice-sda-v0.7.0:microservice-sda-v0.7.0 \
        --link microservice-sipgenerator-v0.7.0:microservice-sipgenerator-v0.7.0 \
        local/api-gatekeeper

# api-gatekeeper

API-Gateway to orchestrate the shape of the DURAARK platform API.

## Setup

This is a simple nginx server setup with a single configuration file at /etc/nginx/sites-enabled/duraark-platform-api.conf.

To add a new service on a specific endpoint add a block like this to the file:

```
location /api/v0.4/myservice/ {
    proxy_pass http://myservice:5000/;
}
```

This will add a new endpoint at */api/v0.4/myservice* which will be proxied to the *http://myservice:5000* service.

## Installation

The repository contains the two files

* build-service.sh
* start-service.sh

to build and start the service as a docker container.

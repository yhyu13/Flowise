#!/bin/bash

# Build local monorepo image
docker build -t  flowise . --network host

# Run image
docker rm $(docker stop $(docker ps -a -q --filter ancestor=flowise --format="{{.ID}}"))
docker run -d --network host flowise 
#!/bin/bash

# Run image
docker rm $(docker stop $(docker ps -a -q --filter ancestor=flowise --format="{{.ID}}"))
docker run -d --network host flowise 
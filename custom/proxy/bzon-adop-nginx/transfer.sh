#!/bin/bash

export DOCKER_HOST=""

docker cp release_note/plugins.json proxy:/resources/release_note/plugins.json

docker restart proxy

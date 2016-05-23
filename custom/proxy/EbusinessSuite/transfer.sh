#!/bin/bash

export DOCKER_HOST=""

docker cp release_note/plugins.json proxy:/resources/release_note/plugins.json
docker cp release_note/img/csvn.png proxy:/resources/release_note/img/csvn.png
docker cp release_note/img/ebs.png proxy:/resources/release_note/img/ebs.png
## Currently disabled unless ricewmanager docker image is permitted to be public
#docker cp configuration/sites-enabled/ricewmanager.conf proxy:/resources/configuration/sites-enabled/ricewmanager.conf
#docker cp configuration/sites-enabled/csvn.conf proxy:/resources/configuration/sites-enabled/csvn.conf

docker restart proxy

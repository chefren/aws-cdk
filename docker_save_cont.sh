#! /bin/bash
# Save docker container version
# pass version name as argument

. docker_env.sh

docker commit "$CONTAINER_NAME" "$DOCKER_USER/$DOCKER_NAME:$1"

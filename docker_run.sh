#! /bin/bash
# Run docker image
# Allows passing optional param to override default command (nginx -g)
# https://github.com/nginxinc/docker-nginx/blob/master/stable/alpine-perl/Dockerfile#L120

# Optional second argument to run tag other than latest

. docker_env.sh

if [[ "$2" ]]; then
  docker run -ti --rm --name "$CONTAINER_NAME" "$DOCKER_USER/$DOCKER_NAME:$2" "$1"
else
  docker run -ti --rm --name "$CONTAINER_NAME" "$DOCKER_USER/$DOCKER_NAME:latest" "$1"
fi

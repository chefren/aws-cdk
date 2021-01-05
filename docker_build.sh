. docker_env.sh

IMAGE_NAME="$DOCKER_USER/$DOCKER_NAME"
echo "Building $IMAGE_NAME"
# Toggle to force clean build
docker build -t ${IMAGE_NAME} -f docker_local_Dockerfile .
# docker build -t ${IMAGE_NAME} . --no-cache

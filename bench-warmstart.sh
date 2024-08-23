# example: sh bench-warmstart.sh scraper-node

if [ "$(docker ps -aq)" ]; then
    docker rm --force $(docker ps -aq)
fi

export FOLDER=$1
export SCENARIO="$(echo $FOLDER | cut -d'-' -f1)"
export RUNTIME="$(echo $FOLDER | cut -d'-' -f2)"

set -o allexport
. "./$RUNTIME.env"
set +o allexport

export ENTRYPOINT=$ENTRYPOINT
export IMAGE=$IMAGE
export BUILD_COMMAND=$BUILD_COMMAND

sh helper-build.sh

sh helper-warmstart.sh

sleep 10

k6 run k6.js
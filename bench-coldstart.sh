# example: sh bench-coldstart.sh scraper-node

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

hyperfine --prepare 'docker rm --force $(docker ps -aq) || true' --runs 100 'sh helper-coldstart.sh'
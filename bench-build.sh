# example: sh bench-build.sh scraper-node

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

hyperfine --prepare "rm -f ./$FOLDER/code.tar.gz" --runs 25 'sh helper-build.sh'

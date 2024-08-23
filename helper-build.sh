cd "./$FOLDER"

docker run -e OPEN_RUNTIMES_ENTRYPOINT=$ENTRYPOINT --rm --volume $PWD:/mnt/code $IMAGE sh helpers/build.sh "$BUILD_COMMAND"

cd ..
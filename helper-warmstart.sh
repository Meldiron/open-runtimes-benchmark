cd "./$FOLDER"

docker run -d -p 3000:3000 -e OPEN_RUNTIMES_SECRET="" --rm --volume $PWD/code.tar.gz:/mnt/code/code.tar.gz:ro $IMAGE sh helpers/start.sh "sh helpers/server.sh"

cd ..
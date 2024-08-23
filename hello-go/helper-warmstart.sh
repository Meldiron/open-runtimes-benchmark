docker run -d -p 3000:3000 -e OPEN_RUNTIMES_SECRET="" --rm --volume $PWD/code.tar.gz:/mnt/code/code.tar.gz:ro openruntimes/go:v4-1.23 sh helpers/start.sh "/usr/local/server/src/function/server"

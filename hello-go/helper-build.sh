docker run -e OPEN_RUNTIMES_ENTRYPOINT=main.go --rm --volume $PWD:/mnt/code openruntimes/go:v4-1.23 sh helpers/build.sh

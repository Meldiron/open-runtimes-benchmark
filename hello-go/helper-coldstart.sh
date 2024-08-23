docker run -d -p 3000:3000 -e OPEN_RUNTIMES_SECRET="" --rm --volume $PWD/code.tar.gz:/mnt/code/code.tar.gz:ro openruntimes/go:v4-1.23 sh helpers/start.sh "/usr/local/server/src/function/server"

while true
do
    STATUS_CODE = $(curl -s -o /dev/null -w "%{http_code}" http://localhost:3000)

    if [ $STATUS_CODE -ne 200 ]; then
        exit 1
    else
        break
    fi
done
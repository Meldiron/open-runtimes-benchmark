cd "./$FOLDER"

docker run -d -p 3000:3000 -e OPEN_RUNTIMES_SECRET="" --rm --volume $PWD/code.tar.gz:/mnt/code/code.tar.gz:ro $IMAGE sh helpers/start.sh "sh helpers/server.sh"

while true
do
    STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:3000/ping)

    echo $STATUS_CODE

    if [ $STATUS_CODE -ne 200 ]; then
        sleep 0.05
    else
        break
    fi
done

cd ..
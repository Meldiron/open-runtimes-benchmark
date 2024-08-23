if [ "$(docker ps -aq)" ]; then
    docker rm --force $(docker ps -aq)
fi

sh helper-warmstart.sh

sleep 5

k6 run k6.js

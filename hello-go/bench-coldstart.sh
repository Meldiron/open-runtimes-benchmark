hyperfine --prepare 'docker rm --force $(docker ps -aq) || true' --runs 100 'sh helper-coldstart.sh'

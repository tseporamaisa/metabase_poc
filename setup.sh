#!/bin/bash -e

COMMAND="$1"

if [[ $COMMAND == "start" ]]; then
  docker-compose up -d
  echo "metabase now running at 127.0.0.1:3000"
elif [[ $COMMAND == "stop" ]]; then
  docker-compose down
  docker system prune -f
  echo "metabase stopped"
elif [[ $COMMAND == "cleanup" ]]; then
  docker-compose down -v --rmi all --remove-orphans
  docker system prune -f
  echo "metabase stopped and all artifacts cleaned"
else
    echo "Please provide action you would like to perform. Valid actions are start,stop,cleanup..."
    echo "e.g 'bash setup.sh start' starts the metabase service"
fi
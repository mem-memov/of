# of

    docker build --file="sbt.Dockerfile" --tag="sbt_image" --quiet --rm ./empty

    docker stack deploy --compose-file="./docker-compose.yml" of_stack

    docker stack ls

    docker stack rm of_stack

    docker exec -ti $(docker ps --quiet --filter="name=of_stack_http.1.") sbt
    docker exec -ti $(docker ps --quiet --filter="name=of_stack_locations.1.") sbt



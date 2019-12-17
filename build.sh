#!/bin/bash
docker build -t myapp . 
old_container=$(docker ps -aq -f name=myapp)

if [ -n "$old_container" ]
then
    docker stop $old_container
fi

docker run --name myapp -d -p 5000:5000 --rm myapp
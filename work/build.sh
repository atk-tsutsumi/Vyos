#!/bin/sh
for i in `seq 1 10`
do
  docker build --build-arg CONTAINER_ID=$i -t vyos$i .
done

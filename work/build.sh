#!/bin/sh
for i in `seq 1 4`
do
  sudo docker build --build-arg CONTAINER_ID=$i -t vyos$i .
done

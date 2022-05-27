#!/bin/sh
#made by stronger-than-world

#to stop all running container
kill1=$(docker ps -a -q)
for pid in $kill1
do
  echo "$pid"
  docker stop $pid && docker rm $pid
done


#to delete exixting docker images
image=$(docker images -q)
for bid in $image
do
  echo "$bid"
  docker rmi -f $bid
done

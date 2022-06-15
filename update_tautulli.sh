#!/bin/bash
docker stop tautulli
docker container rm tautulli
docker rmi tautulli
docker build --build-arg media_mount_location=$(sed '1q;d' config/media_mount_location) -t tautulli .
docker run -d --restart always -v $PWD/config/:/config --name tautulli --privileged --network host tautulli
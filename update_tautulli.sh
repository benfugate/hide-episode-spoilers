#!/bin/bash
docker stop tautulli
docker container rm tautulli
docker rmi tautulli
docker build . -t tautulli
docker run -d --restart always -v /home/pi/Documents/Tautulli/config/:/config --name tautulli --privileged --network host tautulli

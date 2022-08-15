#!/bin/bash
docker stop tautulli
docker container rm tautulli
docker rmi tautulli
docker build -t tautulli .
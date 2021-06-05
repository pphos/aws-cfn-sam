#!/bin/bash
sudo docker rm -f `sudo docker ps -aq`
sudo docker rmi -f `sudo docker images -aq`
sudo docker build -t batch ./

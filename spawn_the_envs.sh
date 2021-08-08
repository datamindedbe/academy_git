#!/bin/bash
read -p "What's the port start range ? : " start_port
read -p "What's the number of environment to deploy ? : " n_envs

for ((i=start_port; i<start_port+n_envs; i++)); do
	sudo docker run --rm -d -p $i:3000 --hostname git-introduction-training git-introduction-training:latest
done

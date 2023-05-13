#!/bin/bash
#This is the main Folder, where your start_scripts reside, please change according to your setup (default /blockchain)
CONFIG_FOLDER=/blockchain

sudo docker stop execution
sudo docker stop beacon
sudo docker stop validator

sudo docker rm execution
sudo docker rm beacon
sudo docker rm validator

sudo docker container prune -f

sudo $CONFIG_FOLDER/start_execution.sh 
sudo $CONFIG_FOLDER/start_consensus.sh
sudo $CONFIG_FOLDER/start_validator.sh
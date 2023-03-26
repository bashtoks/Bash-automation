#!/bin/bash

#Update apt & install packages
sudo apt-get update -y
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

#Add Docker official GPG key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

#Set up the repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#Update packages
sudo apt-get update -y

#InstallDockerEngine
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

#Pull down Docker Image - Jenkins Image
sudo docker pull jenkins/jenkins:lts

#RunDocker
sudo docker run -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts
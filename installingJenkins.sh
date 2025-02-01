#!/bin/bash

#####################################################################
# Author: Akshay
# Date: 2/1/2025
# This shell script can be used for installing Jenkins
####################################################################
sudo apt update # for system update
sudo apt install fontconfig openjdk-17-jre -y #for installing java 
java -version

# Getting the Jenkins key
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
# again updating the system 
sudo apt-get update
# Installing the jenkins
sudo apt-get install jenkins -y

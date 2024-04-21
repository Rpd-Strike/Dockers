#!/bin/sh

# Absolute path to the Dockers/jenkins folder
jenkins_folder=$(dirname $(dirname $(realpath $0)))

# Create the symlink to nginx sites-available
sudo ln -s $jenkins_folder/jenkins.nginx /etc/nginx/sites-available/jenkins

# Enable the site
sudo ln -s /etc/nginx/sites-available/jenkins /etc/nginx/sites-enabled/jenkins

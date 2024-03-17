#!/bin/sh

# Absolute path to the Dockers/doom folder
doom_folder=$(dirname $(dirname $(realpath $0)))

# Create the symlink to nginx sites-available
sudo ln -s $doom_folder/doom.nginx /etc/nginx/sites-available/doom

# Enable the site
sudo ln -s /etc/nginx/sites-available/doom /etc/nginx/sites-enabled/doom

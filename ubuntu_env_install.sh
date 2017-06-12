#!/bin/bash

# Installation script for web development environment on Ubuntu 14.04
#
# The script will install Java Runtime environment, PHP 5.6, Node.js,
#
# PostgreSQL, MySQL, Nginx, Git and Python environment such as Pip.
#
# Authored by Nicholas Li, 2017-06-12 for the first time

GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# First, install java and PHP 5.6
printf "${YELLOW}Installing Java, PHP5.6${NC}\n"
sudo apt-get install -y build-essential python-software-properties
sudo add-apt-repository ppa:ondrej/php5-5.6
sudo apt-get update
sudo apt-get install -y openjdk-7-jre php5

# Second, install Node.js
printf "${YELLOW}Installing Node.js${NC}\n"
cd ~
curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt-get install nodejs

# Third install PostgreSQL, Nginx, MySQL, Git and Pip and virtualenv for Python
printf "${YELLOW}Installing PostgreSQL, Nginx, MySQL, Git, Pip${NC}\n"
sudo apt-get install -y postgresql postgresql-contrib nginx mysql-server git python-pip python3-pip python-dev python-virtualenv

# Finally done. Happy hacking!
printf "${GREEN}Environment is successfully installed!${NC}\n"


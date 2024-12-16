#!/bin/bash

# Updates and installs apache and PHP
sudo yum update -y
sudo yum install -y httpd
sudo amazon-linux-extras install -y php8.2

# Starts and enable the services
sudo systemctl start httpd
sudo systemctl start php-fpm

sudo systemctl enable httpd
sudo systemctl enable php-fpm

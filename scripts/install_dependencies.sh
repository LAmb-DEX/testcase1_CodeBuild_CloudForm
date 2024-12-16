#!/bin/bash

# Updates and installs apache and PHP
sudo yum update -y
sudo yum install -y httpd
sudo yum install -y php

# Starts and enable the services
sudo systemctl start httpd
sudo systemctl start php-fpm

sudo systemctl enable httpd
sudo systemctl enable php-fpm

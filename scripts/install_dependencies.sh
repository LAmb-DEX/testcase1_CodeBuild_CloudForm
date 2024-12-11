#!/bin/bash
set -e  # Stops if an error occurs

# Updates and installs apache and PHP
yum update -y
yum install -y httpd php

# Inicia Apache si no está corriendo
if ! systemctl is-active --quiet httpd; then
  systemctl start httpd
  systemctl enable httpd
fi

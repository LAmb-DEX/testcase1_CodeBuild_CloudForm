#!/bin/bash
set -e  # Detiene el script si ocurre algún error

# Actualiza el sistema e instala Apache y PHP
yum update -y
yum install -y httpd php

# Inicia Apache si no está corriendo
if ! systemctl is-active --quiet httpd; then
  systemctl start httpd
  systemctl enable httpd
fi

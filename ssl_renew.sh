#!/bin/bash

COMPOSE="/usr/local/bin/docker-compose --no-ansi"
DOCKER="/usr/bin/docker"

cd ~/ditoraharjo.me-nginx/
$COMPOSE run certbot renew --dry-run && $COMPOSE kill -s SIGHUP nginx
$DOCKER system prune -af
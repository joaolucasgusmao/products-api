#! /usr/bin/env bash

echo "Running composer"
composer install --no-dev --workdir=/var/www/html

echo "Caching config"
php artisan config:cache

echo "Caching routes"
php artisan route:cache

echo "Running migration"
php artisan migrate --force
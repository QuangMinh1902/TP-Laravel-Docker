FROM composer:latest

WORKDIR /var/www/html

COPY src .

ENTRYPOINT composer install; php artisan key:generate


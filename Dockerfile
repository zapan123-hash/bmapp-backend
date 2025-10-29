# Use official PHP + Apache image
FROM php:8.2-apache

# Install MySQL extension for PHP
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copy all project files to Apache webroot
COPY public/ /var/www/html/

# Set permissions
RUN chown -R www-data:www-data /var/www/html

# Expose port 80
EXPOSE 80

# Use the official PHP 8.2 image with Apache
FROM php:8.2-apache

# Copy all PHP files from the api folder into the Apache web root
COPY api/ /var/www/html/

# Enable the mysqli extension for database connection
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Expose port 80 to the web
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]

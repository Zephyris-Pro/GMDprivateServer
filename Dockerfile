FROM php:8.1-apache

# Install PDO MySQL extension
RUN docker-php-ext-install pdo pdo_mysql && docker-php-ext-enable pdo_mysql

# Set ServerName to suppress warning
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Enable Apache mod_rewrite if needed by GMDprivateServer
RUN a2enmod rewrite

# Copy project files
COPY . /var/www/html/

# Set necessary permissions for data and config
RUN chown -R www-data:www-data /var/www/html/config /var/www/html/data || true
RUN chmod -R 775 /var/www/html/data || true

# Apache config for DocumentRoot is default /var/www/html

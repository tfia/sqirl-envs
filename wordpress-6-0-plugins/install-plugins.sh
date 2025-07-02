#!/bin/bash

set -e

echo "Installing WordPress plugins..."

wp plugin install download-monitor --version=4.4.4 --activate --allow-root --path=/var/www/html
wp plugin install wp-user-frontend --version=3.5.25 --activate --allow-root --path=/var/www/html
wp plugin install sliced-invoices --version=3.8.2 --activate --allow-root --path=/var/www/html
wp plugin install photo-gallery --version=1.5.34 --activate --allow-root --path=/var/www/html
wp plugin install ultimate-maps-by-supsystic --version=1.1.12 --activate --allow-root --path=/var/www/html
wp plugin install wp-statistics --version=13.0.7 --activate --allow-root --path=/var/www/html
wp plugin install joomsport-sports-league-results-management --activate --allow-root --path=/var/www/html

echo "All plugins installation completed."
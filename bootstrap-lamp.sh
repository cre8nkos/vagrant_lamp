#!/bin/bash

# script directory
SCRIPT_DIR=/vagrant/bin

# Update Ubuntu
sh $SCRIPT_DIR/ubuntu-update.sh

# Install cURL
sh $SCRIPT_DIR/install-curl.sh

# Install Apache2
sh $SCRIPT_DIR/install-apache2.sh

# Install PHP5
sh $SCRIPT_DIR/install-php.sh

# Update Ubuntu
sh $SCRIPT_DIR/ubuntu-update.sh

# Clean up apt-get packages
sh $SCRIPT_DIR/clean.sh

touch info.php /var/www/info.php

echo '<?php echo phpinfo(); ?>' > /var/www/info.php
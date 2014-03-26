#!/bin/bash

# Install PHP5
apt-get install -y php5 libapache2-mod-php5 php5-curl php5-mcrypt

# Set PHP timezone
php-settings-update 'date.timezone' 'America/Denver'

# Install Python for PHP 5 upgrade
apt-get install -y python-software-properties

# Install PHP 5.4
#add-apt-repository ppa:ondrej/php5
add-apt-repository ppa:ondrej/php5-oldstable
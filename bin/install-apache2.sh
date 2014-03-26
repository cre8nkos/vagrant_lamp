#!/bin/bash

# if apache2 does no exist
if [ ! -f /etc/apache2/apache2.conf ];
then
    # Install apache2
    apt-get install -y apache2

    # Enable mod_rewrite
    a2enmod rewrite

    # Disable default site
    # a2dissite default
    # rm /etc/apache2/sites-available/default
    # rm /etc/apache2/sites-available/default-ssl

    # Restart Apache
    /etc/init.d/apache2 restart
fi
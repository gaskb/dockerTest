#!/bin/bash
mkdir /etc/apache2/ssl


cd /etc/apache2/
ln -s /etc/apache2/sites-available/creaverifiche.conf /etc/apache2/sites-enabled/001-creaverifiche.conf


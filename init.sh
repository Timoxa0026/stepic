#!/bin/bash

sudo mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default1

sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
#!/bin/bash

puppet resource package apache2 ensure=present
puppet resource service apache2 ensure=running

git clone https://<your github access key token>@github.com/mdnurakmal/operate_repo.git
cp -p /operate_repo/index.html /var/www/html
#!/bin/bash

puppet resource package apache2 ensure=present
puppet resource service apache2 ensure=running

git clone https://@github.com/mdnurakmal/operate_repo.git
cd operate_repo
cp -p index.html /var/www/html

#!/bin/bash

puppet resource package apache2 ensure=present
puppet resource service apache2 ensure=running

git clone https://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@github.com/mdnurakmal/operate_repo.git
cp -p /operate_repo/index.html /var/www/html
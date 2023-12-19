# entrypoint.sh

#!/bin/sh
php artisan config:cache
php artisan route:cache
php artisan view:cache
php artisan migrate
# oauth_clientsにレコードがなければコマンド実行
if [ "$(php artisan oauth:count)" -eq 0 ]
then
    php artisan passport:install
fi
# Start Apache in the foreground
/usr/sbin/apache2ctl -D FOREGROUND

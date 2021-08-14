#!/bin/sh

echo "1
$MYSQL_HOSTNAME:$MYSQL_PORT
$MYSQL_USERNAME
$MYSQL_PASSWORD
$MYSQL_DATABASE
$PLAYBOOK_PATH
$WEB_ROOT
no
no
no
yes
$OUTPUT_DIR
$ADMIN_USERNAME
$ADMIN_EMAIL
$ADMIN_DESC
$ADMIN_PASSWORD" >/home/semaphore/semaphore.conf

/usr/local/bin/semaphore -setup </home/semaphore/semaphore.conf

/usr/local/bin/semaphore -config /home/semaphore/config.json

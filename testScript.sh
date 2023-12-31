#! /bin/bash

echo 'restarting nginx'
sudo service nginx restart
echo 'flushing pm2 logs'
pm2 flush 0
echo 'restarting pm2'
pm2 restart server
echo 'opening pm2 logs'
pm2 logs server

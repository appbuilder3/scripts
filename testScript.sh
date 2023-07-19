#! /bin/bash

echo 'restarting nginx'
sudo service nginx restart
echo 'flushing pm2 logs'
pm2 flush 
echo 'restarting pm2'
pm2 restart

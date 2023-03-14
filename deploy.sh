#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
#install pm2 which is a prodcution process manager for Node.js with a build load balancer
sudo npm install -g pm2
# stop any instance of our application running currently
pm2 stop simple_app
#change directory into folder into folder where application is downloaded
cd SimpleApplication/
# Install application dependencies
npm install
# start the application with the process name example_app using pm2
pm2 start./bin/www --name simple_app
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt
#start application with name using pm2 
pm2 start ./bin/www --name simple_app

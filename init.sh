#!/bin/bash

echo "starting test container"

cd jitsi-meet-torture

sudo unzip chromedriver_linux64.zip -d /usr/bin
# make sure it is executable
sudo chmod +x /usr/bin/chromedriver
RUN wget https://chromedriver.storage.googleapis.com/95.0.4638.69/chromedriver_linux64.zip
 
sudo unzip chromedriver_linux64.zip -d /usr/bin
# make sure it is executable
sudo chmod +x /usr/bin/chromedriver

sudo cp chromedriver /usr/bin/chromedriver 
sudo chown root:root /usr/bin/chromedriver 
sudo chmod +x /usr/bin/chromedriver 

# selenium standalone server
wget https://github.com/SeleniumHQ/selenium/releases/download/selenium-3.141.59/selenium-server-standalone-3.141.59.jar
cp selenium-server-standalone-3.141.59.jar selenium-server-standalone.jar 


./scripts/malleus.sh --conferences=1 --participants=2 --senders=2 --audio-senders=2 --duration=90 --room-name-prefix=hamertesting --hub-url=http://selenium-srv:4444/wd/hub --instance-url=https://meet.sariska.io/

echo testing complete                                                           
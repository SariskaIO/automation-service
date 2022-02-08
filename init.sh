#!/bin/bash

echo "starting test container"

cd jitsi-meet-torture

# sudo unzip chromedriver_linux64.zip -d /usr/bin
# # make sure it is executable
# sudo chmod +x /usr/bin/chromedriver
# RUN wget https://chromedriver.storage.googleapis.com/95.0.4638.69/chromedriver_linux64.zip
 
# sudo unzip chromedriver_linux64.zip -d /usr/bin
# # make sure it is executable
# sudo chmod +x /usr/bin/chromedriver

# sudo cp -r chromedriver*/* /usr/bin/chromedriver 
# sudo chown root:root /usr/bin/chromedriver 
# sudo chmod +x /usr/bin/chromedriver 

./scripts/malleus.sh --use-load-test=true --conferences=1 --participants=20 --senders=20 --audio-senders=20 --duration=360 --room-name-prefix=bloom9 --hub-url=http://selenium-srv:4444/wd/hub --instance-url=https://meet.sariska.io/ --debug=true

echo testing complete
#!/bin/bash

cd /tmp
wget http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz
tar -zxvf noip-duc-linux.tar.gz
cd noip-2.1.9-1
sudo make 
sudo make install
sudo cp noip2 /etc/init.d

sudo chmod a+x /etc/init.d/noip2
sudo update-rc.d noip2 defaults

sudo systemctl enable noip2
sudo systemctl start noip2
sudo systemctl status -l noip2

sudo /etc/init.d/noip2 status



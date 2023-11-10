#!/bin/bash
echo "!!!!!!Updating system!!!!!!"
sudo apt-get update -y
sudo apt-get install apache2 -y
echo "####### Installing apcache2 #######"
sudo service apache2 status 
sudo service apache2 restart 

echo "!!!!!!!Installing PHP"
sudo apt-get install php5 php5-mysql -y 
sudo service apache2 status
sudo service apache2 restart


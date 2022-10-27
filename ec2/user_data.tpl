#!/bin/bash
sudo su
apt-get update
sudo apt-get -y install mysql-server
sudo systemctl start mysql
sudo apt install awscli -y
mkdir -p devteam
sudo aws s3 sync s3://${bucket_url}/ /devteam
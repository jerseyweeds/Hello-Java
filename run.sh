#!/bin/bash
wget http://btsync.s3-website-us-east-1.amazonaws.com/btsync_arm.tar.gz
cp . /usr/src/app
cd /usr/src/app
tar -xfv btsync_arm.tar.gz
mkdir .btsync 
cd .btsync
sudo ./btsync  

#!/bin/bash

cd /usr/src/app
tar -xfv btsync_arm.tar.gz
mkdir .btsync 
cd .btsync
sudo ./btsync  

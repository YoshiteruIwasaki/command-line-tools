#!/bin/sh

sudo yum install -y wget 
sudo yum install -y unzip 
sudo yum install -y firefox 
sudo yum -y groupinstall "X Window System" 
sudo yum -y groupinstall "Desktop" 
sudo yum -y groupinstall "General Purpose Desktop" 
sudo yum -y groupinstall "Japanese Support"

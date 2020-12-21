#!/bin/sh
clear
#================================
#1.Install Aria2
#================================
sudo apt-get install aria2
echo "++======================Aria2 Installed======================++"

#================================
#2.Add Ubuntu Repo for APTFAST
#================================
#deb http://ppa.launchpad.net/apt-fast/stable/ubuntu bionic main 
#deb-src http://ppa.launchpad.net/apt-fast/stable/ubuntu bionic main

echo "++======================Mesg======================++"
#================================
#3.Install APT FAST
#================================
#sudo add-apt-repository ppa:apt-fast/stable
#sudo apt-get update
#sudo apt-get -y install apt-fast
#/etc/apt-fast.conf

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A2166B8DE8BDC3367D1901C11EE2FF37CA8DA16B
sudo apt-get update
sudo apt-get install apt-fast

#Remove Ubuntu Repos

echo "++======================Mesg======================++"
#================================
#4.Select Required Mirrors
#================================
#wget pulls the latest mirror status from https://launchpad.net/ubuntu/+archivemirrors.    
#The first grep extracts mirrors that are up-to-date or six-hours behind, along with 8 lines of previous context which includes the actual ftp/http URLs    The second grep extracts these ftp/http URLs

#wget -q -O- https://launchpad.net/ubuntu/+archivemirrors \ 
#| grep -P -B8 "status(UP|SIX)" \ 
#| grep -o -P "(f|ht)tp://[^\"]*"


echo "++======================Mesg======================++"

#================================
#5.APTFAST Upgrade & Clean
#================================

sudo apt-fast upgrade
sudo apt-fast clean
sudo apt-fast autoclean

echo "++======================Mesg======================++"



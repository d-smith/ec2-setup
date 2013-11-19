#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 LTS EC2 instance

#
# Java
#

sudo apt-get purge openjdk*
sudo apt-get update
sudo apt-get -y install python-software-properties
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install debconf-utils
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
sudo apt-get install -y oracle-java7-installer

#
# Grab and untar servicemix
#
wget http://apache.osuosl.org/servicemix/servicemix-4/4.5.3/apache-servicemix-4.5.3.tar.gz
gunzip apache-servicemix-4.5.3.tar.gz
tar xvf apache-servicemix-4.5.3.tar


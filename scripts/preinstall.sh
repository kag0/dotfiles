#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates

sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo add-apt-repository -y ppa:webupd8team/java

sudo apt-key adv \
               --keyserver hkp://ha.pool.sks-keyservers.net:80 \
               --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

echo 'the next line uses `lsb_release -cs` for docker install on ubuntu, if not on ubuntu you may need to modify script'
echo "deb https://apt.dockerproject.org/repo ubuntu-`lsb_release -cs` main" | sudo tee /etc/apt/sources.list.d/docker.list

sudo echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
sudo apt-get --allow-unauthenticated install sur5r-keyring

sudo apt-get update

#!/bin/bash
# Script to install Elasticsearch for TheHive
# Tested on Kali Linux

echo "Installing Elasticsearch..."
sudo apt update
sudo apt install apt-transport-https openjdk-11-jdk -y
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-7.x.list
sudo apt update && sudo apt install elasticsearch -y

echo "Enabling and starting Elasticsearch..."
sudo systemctl enable elasticsearch
sudo systemctl start elasticsearch

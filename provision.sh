#!/bin/bash

echo "deb http://www.rabbitmq.com/debian/ testing main" | sudo tee -a /etc/apt/sources.list
wget https://www.rabbitmq.com/rabbitmq-signing-key-public.asc
sudo apt-key add rabbitmq-signing-key-public.asc

sudo apt-get update

sudo apt-get -y install rabbitmq-server

sudo invoke-rc.d rabbitmq-server start
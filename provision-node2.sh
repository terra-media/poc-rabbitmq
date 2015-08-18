#!/bin/bash

echo "192.168.0.100 node1" | sudo tee -a /etc/hosts

sudo invoke-rc.d rabbitmq-server start

sudo rabbitmqctl stop_app

sudo rabbitmqctl join_cluster rabbit@node1

sudo rabbitmqctl start_app

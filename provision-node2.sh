#!/bin/bash

echo "192.168.0.100 node1" | sudo tee -a /etc/hosts

sudo invoke-rc.d rabbitmq-server start

sudo rabbitmqctl set_policy --priority 0 --apply-to queues HA-SYNC '^(?!amq.).*' '{"ha-mode": "all", "ha-sync-mode": "automatic"}'

sudo rabbitmqctl stop_app

sudo rabbitmqctl join_cluster rabbit@node1

sudo rabbitmqctl start_app

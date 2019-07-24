#!/usr/bin/env bash

sudo apt update
sudo apt --yes install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo DEBIAN_FRONTEND=noninteractive apt-get install --yes -qq ansible
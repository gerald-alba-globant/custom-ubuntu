#!/usr/bin/env bash

sudo apt-get install git
git clone https://github.com/gerald-axel/custom-ubuntu.git
ansible-playbook -i localhost, --extra-vars="username=gerald password=1" ./custom-ubuntu/ansible/site.yml
#!/usr/bin/env bash

chmod +x install_ansible.sh
./install_ansible.sh
ansible-playbook -i localhost, --extra-vars="username=gerald ansible_sudo_pass=password" ./ansible/site.yml
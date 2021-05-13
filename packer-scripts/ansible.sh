#!/bin/bash

# Install Ansible repository.
apt-get -y update
apt-get -y install python3-pip python3-apt

# Install Ansible.
pip3 install --upgrade ansible

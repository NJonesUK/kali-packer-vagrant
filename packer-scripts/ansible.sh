#!/bin/bash

# Install Ansible repository.
apt-get -y update
apt-get -y install python3-pip

# Install Ansible.
pip install --upgrade ansible

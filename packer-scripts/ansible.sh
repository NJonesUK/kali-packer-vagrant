#!/bin/bash

# Install Ansible repository.
apt-get -y update
apt-get -y install pip

# Install Ansible.
pip install --upgrade ansible
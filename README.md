# Kali-Packer-Vagrant

## Introduction

This project provides Packer and Vagrant configuration and supporting scripts for Kali Linux, to allow the creation of both standard Kali VMs and Vagrant boxes. Both VMware and Virtualbox are supported.

## Caveats
Currently this produces VMs with the kali standard credentials of `kali` and `kali`. This user has passwordless sudo access, in order to facilitate the ansible provisioners for both Packer and Vagrant. Once the box is built, the sudo configuration should be updated to enforce a password for sudo.

## Requirements
* Packer - [https://www.packer.io](https://www.packer.io)
* Virtualization Software
    * Virtualbox and the extension pack - [https://www.virtualbox.org](https://www.virtualbox.org)
    * VMware Workstation
* (optionally) Vagrant - [https://www.vagrantup.com](https://www.vagrantup.com)
    * If using VMware, you'll also need a license to the Vagrant VMware plugin.

## Usage
To build the virtual machine for both VMware and VirtualBox, run the following command:
```packer build packer.json```

To only build one or the other
```packer build -only=vmware-iso packer.json```
```packer build -only=virtualbox-iso packer.json```

## Vagrant

To build the Vagrant box, specify the `packer-vagrant.json` config file instead.

To add the resulting Vagrant box to your local Vagrant installation, use the following command:
```vagrant box add --name kalirolling builds/virtualbox-kali.box```
The `--force` flag can be used to overwrite a previously built box with the same name.

To instantiate a VM with Vagrant using the box you've just added, change into a directory containing an appropriate `Vagrantfile` and issue the `vagrant up` command. An example `Vagrantfile` is provided as part of this project.

# Credits
The preseed configuration file is borrowed and modified from the folks at Offensive Security, their examples can be found at [https://gitlab.com/kalilinux/recipes/kali-preseed-examples](https://gitlab.com/kalilinux/recipes/kali-preseed-examples).


#!/bin/bash -eux

# Add vagrant user to sudoers.
echo "kali        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# Disable daily apt unattended updates.
echo 'APT::Periodic::Enable "0";' >> /etc/apt/apt.conf.d/10periodic

# Fix for login issues related to lack of randomness
# https://bugs.kali.org/view.php?id=4994
apt-get update
apt-get install -y haveged
systemctl enable haveged
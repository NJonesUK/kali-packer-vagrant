# Apt cleanup.
apt-get autoremove
apt-get update
apt-get clean

# Delete unneeded files.
rm -f /home/vagrant/*.sh

# Zero out the rest of the free space using dd, then delete the written file.
echo "Zeroing out disk..."
dd if=/dev/zero of=/EMPTY bs=1M
echo "Removing zero'd out space..."
rm -f /EMPTY

# Add `sync` so Packer doesn't quit too early, before the large file is deleted.
sync

# Disable root account over SSH
sed -i '/PermitRootLogin yes/d' /etc/ssh/sshd_config
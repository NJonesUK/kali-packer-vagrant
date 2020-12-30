# Add a few retries just in case network connectivity is shaky
sudo apt-get update

sudo DEBIAN_FRONTEND=noninteractive apt-get -o Dpkg::Options::="--force-confnew" dist-upgrade -yq

sudo apt-get install -y open-vm-tools

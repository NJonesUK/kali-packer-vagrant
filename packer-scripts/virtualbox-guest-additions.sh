sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -o Dpkg::Options::="--force-confnew" dist-upgrade -yq
sudo apt-get install -y virtualbox-guest-x11
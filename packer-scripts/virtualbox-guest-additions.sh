sudo apt-get update
echo "1\n" > /tmp/ssh-silence
DEBIAN_FRONTEND=noninteractive sudo apt-get -o Dpkg::Options::="--force-confnew" dist-upgrade -yq < /tmp/ssh-silence
sudo apt-get install -y virtualbox-guest-x11
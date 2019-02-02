sudo apt-get update
sudo apt-get upgrade -y
sudo apt install tree -y
sudo apt install conky-all -y
# virtualbox
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"
sudo apt update
sudo apt install virtualbox-6.0 -y
# visual studio code
TEMP_FILE="$(mktemp)" && wget -O "$TEMP_FILE" 'https://go.microsoft.com/fwlink/?LinkID=760868' && sudo dpkg -i "$TEMP_FILE"
sudo apt-get install -f
rm -f "$TEMP_FILE"
# docker ce
# -- dependencies
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce -y
sudo usermod -aG docker $USER
# docker-machine
base=https://github.com/docker/machine/releases/download/v0.16.1 && curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine && sudo install /tmp/docker-machine /usr/local/bin/docker-machine
docker-machine version
# docker-compose
base=https://github.com/docker/compose/releases/download/1.23.2 && curl -L $base/docker-compose-$(uname -s)-$(uname -m) >/tmp/docker-compose && sudo install /tmp/docker-compose /usr/local/bin/docker-compose
docker-compose --version
# pip
sudo apt-get update
sudo apt-get install python-pip
pip install --upgrade pip --user
hash -r
# ansible
pip install ansible --upgrade --user
# aws
pip install boto --user
pip install boto3 --user


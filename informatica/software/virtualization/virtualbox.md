``` bash
sudo vim /etc/apt/sources.list
deb http://download.virtualbox.org/virtualbox/debian trusty contrib
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install virtualbox-4.3
sudo apt-get install dkms
```
``` bash
sudo apt-get remove hostapd
cd /tmp
wget http://archive.ubuntu.com/ubuntu/pool/universe/w/wpa/hostapd_1.0-3ubuntu2.1_amd64.deb
sudo dpkg -i hostapd*.deb
sudo apt-mark hold hostapd

sudo rm /tmp/hotspot.pid
```
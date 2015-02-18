apps=$(zenity --list --text "Select the launcher box and press OK" --width=300 --height=20\
 --title "Kioku launcher 1.0" \
 --column "No" --column  "Application" --column "Description" \
   1 Launcher "Start the system" \
   )
#If OK button pressed
  case $apps in
    #=============================================================
    1)
    zenity --info --text "This will install a lot of programs into your system. \
    Please keep your Terminal window opened. You may need to enter root password. Press OK to continue" 
    sudo apt-get install curl zsh
    curl -L http://install.ohmyz.sh | sh
    chsh -s $(which zsh)
    cd /tmp
    wget http://download.skype.com/linux/skype-ubuntu-precise_4.3.0.37-1_i386.deb
    sudo dpkg -i skype-ubuntu-precise_4.3.0.37-1_i386.deb
    sudo apt-get -f install -y
	sudo wget http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3065_amd64.deb
	sudo gdebi sublime-text_build-3065_amd64.deb
    sudo wget https://mega.nz/linux/MEGAsync/xUbuntu_14.04/amd64/megasync-xUbuntu_14.04_amd64.deb
    sudo wget https://mega.nz/linux/MEGAsync/xUbuntu_14.04/amd64/nautilus-megasync-xUbuntu_14.04_amd64.deb
    sudo gdebi megasync-xUbuntu_14.04_amd64.deb
    sudo gdebi nautilus-megasync-xUbuntu_14.04_amd64.deb
    wget -qO - https://repo.tox.im/tox-apt.sh | bash
    sudo add-apt-repository -y ppa:shutter/ppa
    sudo add-apt-repository ppa:starws-box/deadbeef-player
    sudo add-apt-repository ppa:osmoma/audio-recorder
    sudo add-apt-repository -y ppa:ricotz/docky
    echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" | sudo tee -a /etc/apt/sources.list
    wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
    echo "deb http://www.bunkus.org/ubuntu/trusty/ ./" | sudo tee -a /etc/apt/sources.list
    echo "deb-src http://www.bunkus.org/ubuntu/trusty/ ./" | sudo tee -a /etc/apt/sources.list
    wget -q -O - https://www.bunkus.org/gpg-pub-moritzbunkus.txt | sudo apt-key add -
    sudo apt-get update
    sudo apt-get install -y mkvtoolnix mkvtoolnix-gui virtualbox-4.3 yasm plank xterm ubuntu-restricted-extras
    wget http://ffmpeg.mplayerhq.hu/releases/ffmpeg-2.5.4.tar.bz2
    tar -xjvf ffmpeg-2.5.4.tar.bz2
    cd ffmpeg-2.5.4
    ./configure
    make
    sudo make install
    sudo apt-get install guake git deadbeef qtox audio-recorder shutter npm apache2 php5 libapache2-mod-php5 mysql-server php5-gd libssh2-php php5-mysql tcpdump vim openjdk-7-jdk openjdk-7-jre openshot pychess python qbittorrent eclipse exuberant-ctags fslint htop httrack musescore musixtex gnupg handbrake easytag ruby ruby-dev nodejs rawtherapee audacity wireshark cheese pandoc texlive-full texmaker libreoffice
	cd 
    git clone https://github.com/doxygen/doxygen.git
    cd doxygen
    ./configure
    make
    sudo make distclean
    git pull
    ./configure
	make
 	sudo make install
    cd /tmp
    wget http://production.cf.rubygems.org/rubygems/rubygems-2.4.6.tgz
    tar xvf rubygems-2.4.6.tgz
    cd rubygems-2.4.6
    sudo ruby setup.rb
    sudo apt-get update
    sudo gem install jekyll compass
    wget http://archive.ubuntu.com/ubuntu/pool/universe/w/wpa/hostapd_1.0-3ubuntu2.1_amd64.deb
    sudo dpkg -i hostapd*.deb
    sudo apt-mark hold hostapd
    cd ~ && mkdir -p ~/.temp-plank-themer && cd ~/.temp-plank-themer && wget https://github.com/rhoconlinux/plank-themer/archive/master.zip && unzip master.zip && cd plank-themer-master/ && rm -fR ~/.config/plank/dock1/theme_index; rm -fR ~/.config/plank/dock1/themes-repo; cp -a theme_index/ ~/.config/plank/dock1 && cp -a themes-repo/ ~/.config/plank/dock1 && cd ~ && rm -R ~/.temp-plank-themer && sh ~/.config/plank/dock1/theme_index/plank-on-dock-themer.sh
    sudo python -c "import sys; py3 = sys.version_info[0] > 2; u = __import__('urllib.request' if py3 else 'urllib', fromlist=1); exec(u.urlopen('http://status.calibre-ebook.com/linux_installer').read()); main()"
	git clone git://github.com/amix/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh
   	npm -g install instant-markdown-d
    sudo npm -g install instant-markdown-d
    mkdir ~/.vim/
    mkdir ~/.vim/after/
    mkdir ~/.vim/after/ftplugin/
    mkdir ~/.vim/after/ftplugin/markdown/
    cp instant-markdown.vim ~/.vim/after/ftplugin/markdown/
    sudo mkdir /usr/local/tonido
    cd /usr/local/tonido
    sudo wget http://www.tonido.com/download.php?tonido64.tar.gz
    sudo mv download.php?tonido64.tar.gz tonido64.tar.gz
    sudo tar -xzvf tonido64.tar.gz
    zenity --info --text "It's time to play"
    ;;
    *) ;;
  esac

#download folder
download_folder=~/Downloads

#log file
log_file=~/install_progress_log.txt

#delete log-file
sudo rm $log_file

#update and upgrade
sudo apt update && sudo apt upgrade -y
echo "$(date +"%Y-%m-%d %T" ) apt update and apt upgrade" | tee -a $log_file  

#Snap
sudo apt install snapd -y
if type -p snap > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) Snapd Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) Snapd FAILED TO INSTALL!!!" | tee -a $log_file
fi

#chrome
wget -P $download_folder https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i $download_folder/google-chrome-stable_current_amd64.deb
sudo apt-get install -f -y
if type -p google-chrome > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) Google Chrome Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) Google Chrome FAILED TO INSTALL!!!" | tee -a $log_file
fi

# nvidia drivers
sudo apt install nvidia-driver-530 -y
if type -p nvidia-smi > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) Nvidia-driver Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) Nvidia-driver FAILED TO INSTALL!!!" | tee -a $log_file
fi

# alacritty
sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt install alacritty -y
if type -p alacritty > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) Alacritty Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) Alacritty FAILED TO INSTALL!!!" | tee -a $log_file
fi


# visual studio code
sudo snap install --classic code
if type -p code > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) VS Code Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) VS Code FAILED TO INSTALL!!!" | tee -a $log_file
fi

# rofi

#neovim
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt-get update
sudo apt-get install neovim -y
if type -p nvim > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) Neovim Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) Neovim FAILED TO INSTALL!!!" | tee -a $log_file
fi

# i3 w/ gaps
/usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2023.02.18_all.deb keyring.deb SHA256:a511ac5f10cd811f8a4ca44d665f2fa1add7a9f09bef238cdfad8461f5239cc4
sudo apt install ./keyring.deb
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list
sudo apt install i3 -y
if type -p i3 > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) i3 Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) i3 FAILED TO INSTALL!!!" | tee -a $log_file
fi

# spotify
sudo snap install spotify 
if type -p spotify > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) Spotify Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) Spotify FAILED TO INSTALL!!!" | tee -a $log_file
fi

# Dropbox
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd </dev/null &>/dev/null & #run silenced in background

if type -p ~/.dropbox-dist/dropboxd > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) Dropbox Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) Dropbox FAILED TO INSTALL!!!" | tee -a $log_file
fi

# feh
sudo apt install feh -y
if type -p feh > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) feh Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) feh FAILED TO INSTALL!!!" | tee -a $log_file
fi

# vlc
sudo snap install vlc 
if type -p vlc > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) VLC Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) VLC FAILED TO INSTALL!!!" | tee -a $log_file
fi

# tmux
sudo apt install tmux -y
if type -p tmux > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) Tmux Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) Tmux FAILED TO INSTALL!!!" | tee -a $log_file
fi

# wireshark
sudo apt install wireshark -y
if type -p wireshark > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) Wireshark Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) Wireshark FAILED TO INSTALL!!!" | tee -a $log_file
fi

# nmap
sudo apt install nmap -y
if type -p nmap > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) Nmap Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) Nmap FAILED TO INSTALL!!!" | tee -a $log_file
fi

# openconnect
sudo apt install openconnect -y
if type -p openconnect > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) Openconnect Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) Openconnect FAILED TO INSTALL!!!" | tee -a $log_file
fi

#clang
sudo apt install clang -y
if type -p clang > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) Clang Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) Clang FAILED TO INSTALL!!!" | tee -a $log_file
fi

#clang format
sudo apt-get -y install clang-format
if type -p clang-format > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) Clang-format Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) Clang-format FAILED TO INSTALL!!!" | tee -a $log_file
fi

#Curl
sudo apt install curl -y
if type -p curl > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) Curl Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) Curl FAILED TO INSTALL!!!" | tee -a $log_file
fi

#Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh | echo "1"
rustup update
source ~/.cargo/env

if type -p rustup > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) Rust Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) Rust FAILED TO INSTALL!!!" | tee -a $log_file
fi

#Flameshot
sudo apt install flameshot -y
if type -p flameshot > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) Flameshot Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) Flameshot FAILED TO INSTALL!!!" | tee -a $log_file
fi

# Print install log
echo -e "\n ===============Install log=============== \n"
cat $log_file

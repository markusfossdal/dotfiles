#download folder
download_folder=~/Downloads

#log file
log_file=~/install_progress_log.txt

#update and upgrade
sudo apt update && sudo apt upgrade -y
echo "$(date +"%Y-%m-%d %T" ) apt update and apt upgrade" | tee -a $log_file  

#chrome
wget -P $download_folder https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i $download_folder/google-chrome-stable_current_amd64.deb
sudo apt-get install -f
if type -p google-chrome > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) Google Chrome Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) Google Chrome FAILED TO INSTALL!!!" | tee -a $log_file
fi



# nvidia drivers

# alacritty

# visual studio code

# rofi
#

#vim
sudo apt install vim -y
if type -p vim > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) Vim Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) Vim FAILED TO INSTALL!!!" | tee -a $log_file
fi


#
# i3 w/ gaps
#
# ros2

# spotify
#
# ms teams
#
# 1password

# Dropbox
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd </dev/null &>/dev/null & #run silenced in background

if type -p ~/.dropbox-dist/dropboxd > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) Dropbox Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) Dropbox FAILED TO INSTALL!!!" | tee -a $log_file
fi



# feh
#
# vlc
#
# tmux
sudo apt install tmux -y
if type -p tmux > /dev/null; then
    echo "$(date +"%Y-%m-%d %T" ) Tmux Installed" | tee -a $log_file
else
    echo "$(date +"%Y-%m-%d %T" ) Tmux FAILED TO INSTALL!!!" | tee -a $log_file
fi



# wireshark
#
# tshark
#
# nmap
#
# openconnect
#
#

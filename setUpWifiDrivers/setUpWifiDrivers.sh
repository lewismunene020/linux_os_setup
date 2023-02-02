#!/bin/bash


 sudo apt-get install firmware-b43-installer 
 
 sudo modprobe b43  
 
lsmod | grep b43 

  # wget https://debian.pkgs.org/11/debian-contrib-amd64/firmware-b43-installer_019-7_all.deb.html
sudo  touch /etc/systemd/system/b43.service 


sudo echo "
[Unit]
Description=Load b43 module on boot

[Service]
Type=oneshot
ExecStart=/sbin/modprobe b43

[Install]
WantedBy=multi-user.target
" >> /etc/systemd/system/b43.service 

sudo systemctl daemon-reload

sudo  systemctl enable b43.service 

sudo  systemctl start  b43.service 


 
 sudo systemctl restart networking.service 

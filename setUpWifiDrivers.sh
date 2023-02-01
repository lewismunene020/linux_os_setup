#!/bin/bash


 sudo apt-get install firmware-b43-installer 
 
 sudo modprobe b43  
 
  lsmod | grep b43 

  # wget https://debian.pkgs.org/11/debian-contrib-amd64/firmware-b43-installer_019-7_all.deb.html
  
 
 sudo systemctl restart networking.service 

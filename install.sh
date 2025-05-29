#!/usr/bin/env bash
xdg-open https://discord.com/invite/v6vcY9kYny &>/dev/null 
sleep 5
xdg-open https://github.com/indra18s &>/dev/null 
printf " The program is under development and may have bugs.\n"
sleep 1
pkg="sudo apt-get"
if [[ -e /data/data/com.termux ]]; then
  pkg="pkg"
else
  [[ $UID != 0 ]] && echo " Please run with root user" && exit
fi
if [[ -z "$(command -v python)" ]]; then
  printf " Installing python...\n"
  $pkg install -y python &>/dev/null
fi
printf " Installing the program requirements...\n"
pip install -r requirements.txt &>/dev/null

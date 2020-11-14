#!/bin/bash

sudo apt update && sudo apt upgrade -y && sudo apt install -y bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool lib32ncurses-dev libncurses5 libsdl1.2-dev libssl-dev libwxgtk3.0-gtk3-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools unzip xsltproc zip zlib1g-dev
git config --global user.name "android"
git config --global user.email "android"
mkdir ~/bin
export PATH=~/bin:$PATH
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
git clone https://github.com/lindwurm/madoka.git -b nextcloud

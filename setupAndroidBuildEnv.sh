#!/bin/bash

sudo apt update && sudo apt install autoconf automake bc bison build-essential byobu curl flex g++ g++-multilib gawk gcc gcc-multilib git-core gnupg gperf imagemagick lib32ncurses5-dev lib32readline6-dev lib32z1-dev libc6-dev libesd0-dev libexpat1-dev liblz4-1 liblz4-tool liblzma5 liblzma-dev libncurses5-dev libsdl1.2-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop maven openjdk-8-jdk openjdk-8-jre patch pkg-config pngcrush python unzip schedtool squashfs-tools texinfo xsltproc zip zlib1g-dev
git config --global user.name "android"
git config --global user.email "android"
mkdir ~/bin
export PATH=~/bin:$PATH
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
git clone https://github.com/lindwurm/madoka.git -b nextcloud


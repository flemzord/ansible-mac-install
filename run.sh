#!/usr/bin/env bash
# Use : sh run.sh
set -e

CURRENT=$PWD

# install xcode
xcode-select --install

# install homebrew + homebrew cask
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# install pip
sudo easy_install pip

# install ansible
sudo pip install ansible

# get roles
ansible-galaxy install -r requirements.yml -p roles

# launch playbook
ansible-playbook run.playbook.yml

cd $CURRENT

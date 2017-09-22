#!/bin/bash
terminal-notifier -message "Brew | update"
brew update
terminal-notifier -message "Brew | upgrade"
brew upgrade
terminal-notifier -message "Brew | cleanup"
brew cleanup -s
brew cask cleanup
terminal-notifier -message "Brew | doctor"
brew doctor
terminal-notifier -message "Brew | missing"
brew missing
terminal-notifier -message "ATOM | Update Package"
apm-beta upgrade -c false
terminal-notifier -message "MarketPlace | Update all"
mas outdated
mas upgrade
terminal-notifier -message "NPM | Upgrade"
npm update -g

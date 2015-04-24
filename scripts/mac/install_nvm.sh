# Remove any brew installation
brew remove --force node
sudo rm -rf /usr/local/lib/node_modules

# Node Version Manager
brew install nvm
export NVM_DIR=$(brew --prefix)/var/nvm
source $(brew --prefix nvm)/nvm.sh

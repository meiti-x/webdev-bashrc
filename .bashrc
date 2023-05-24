
# block npm in yarn projects and vice versa
npm() {
  if [ -f yarn.lock ]; then
    echo 'use yarn';
  else
    command npm $*;
  fi
}

yarn() {
  if [ -f package-lock.json ]; then
    echo 'use npm';
  else
    command yarn $*;
  fi
}

# alias
alias ..='cd ../'
alias ..2='cd ../../'
alias ..3='cd ../../../'
alias ..4='cd ../../../../'
alias ls='exa -hrFa --long'

# Function to install web development prerequisites
install-webdev-prerequisites() {
  sudo apt update

  sudo apt install -y git
  sudo apt install -y curl
  sudo apt install -y wget
  sudo apt install exa
  
  # Install Node Version Manager (NVM)
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

  # Load NVM
  source ~/.bashrc

  # Install the latest LTS version of Node.js
  nvm install --lts


  sudo snap install code --classic
  sudo snap install postman
  sudo apt install -y yakuake
}

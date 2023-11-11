
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

  echo "Installing git"
  sudo apt install -y git

  echo "Installing curl"
  sudo apt install -y curl

  echo "Installing wget"
  sudo apt install -y wget

  echo "Installing exa"
  sudo apt install -y exa

  echo "Installing htop"
  sudo apt install -y htop
  
  # Install Node Version Manager (NVM)
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

  # Load NVM
  source ~/.bashrc

  # Install the latest LTS version of Node.js
  nvm install --lts

  echo "Installing vscode"
  sudo snap install code --classic

  echo "Installing postman"
  sudo snap install postman

  echo "Installing yakuake"
  sudo apt install -y yakuake

  echo "Installing Typora"
  sudo snap install typora

  echo "Installing safe eyes..."
  sudo apt-get install safeeyes

  echo "Installing google-chrome"
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo dpkg -i google-chrome-stable_current_amd64.deb


  # Load all changes
  source ~/.bashrc

}


nr() {
  npm run "$@"
}

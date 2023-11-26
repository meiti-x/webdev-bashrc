
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
alias os_updater='sudo apt update && sudo apt -y upgrade && sudo apt -y dist-upgrade && sudo apt -y dist-upgrade --auto-remove'
alias ram_optimizer='sudo sync && sudo sysctl -w vm.drop_caches=3'
alias swap_optimizer='sudo sync && sudo swapoff -a && sudo swapon -a'



# Function to install web development prerequisites
install-webdev-prerequisites() {
  sudo apt update && sudo apt -y upgrade

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

  echo "Installing Archive Utilities"
  sudo apt install -y rar unrar p7zip-full p7zip-rar

  echo "Installing VLC"
  sudo apt install -y vlc

  echo "Installing ZSH"
  sudo apt install -y zsh

  echo "Installing Oh-my-zsh"
  sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"



  # Load all changes
  source ~/.zshrc

}


nr() {
  npm run "$@"
}

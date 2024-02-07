#!/bin/bash
__zsh() {

    if ! command -v zsh &> /dev/null; then
    echo "Zsh is not installed. Installing..."

    # Check if the system is Linux
    if [ "$(uname)" == "Linux" ]; then
        # Install Zsh using apt
        sudo apt update
        sudo apt install zsh
    else
        echo "Unsupported operating system. Please install Zsh manually."
        exit 1
    fi
  fi

  echo "Zsh is already installed."

    # Set Zsh as default shell
    sudo usermod -s "$(command -v zsh)" "$(whoami)"

    # Install Oh My Zsh
    if [ ! -d "$HOME/.oh-my-zsh" ]; then
        echo "Installing Oh My Zsh..."
        sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    else
        echo "Oh My Zsh is already installed."
    fi
}
__zsh

source ~/.zshrc

folder_name=".webdev"

cd ~
if [ -d "$folder_name" ]; then
    echo "Folder $folder_name exists. Deleting..."
    rm -rf "$folder_name"
fi

git clone https://github.com/meiti-x/webdev-bashrc.git "$folder_name"


if [ -d "$folder_name" ]; then
  echo "Folder $folder_name created successfully."
  else
    echo 'Clonning the project failed';
fi

line="source ~/$folder_name/shell.sh"

# Check if the line exists in .zshrc
if ! grep -qxF "$line" ~/.zshrc; then
    echo "$line" >> ~/.zshrc
fi

__zsh() {
    # Install Zsh using Homebrew
    if ! command -v zsh &> /dev/null; then
        echo "Installing Zsh..."
        brew install zsh
    else
        echo "Zsh is already installed."
    fi

    # Set Zsh as default shell
    sudo usermod -s "$(command -v zsh)" "$(whoami)"

    # Install Oh My Zsh
    if [ ! -d "$HOME/.oh-my-zsh" ]; then
        echo "Installing Oh My Zsh..."
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    else
        echo "Oh My Zsh is already installed."
    fi
}
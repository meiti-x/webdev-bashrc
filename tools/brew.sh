__homebrew() {
    # Check if Homebrew is already installed
    if command -v brew &> /dev/null; then
        echo "Homebrew is already installed."
    else
        # Install Homebrew
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        
        # Add Homebrew to the shell profile (e.g., ~/.bash_profile or ~/.zshrc)
        echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $(eval echo "~${USER}/.$(basename $SHELL)rc")
        eval '$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)'
        
        # Check if Homebrew is now installed
        if command -v brew &> /dev/null; then
            echo "Homebrew has been installed successfully."
        else
            echo "Failed to install Homebrew."
        fi
    fi
}

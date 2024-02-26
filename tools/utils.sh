__utils() {
    # Install Git
    if ! command -v git &> /dev/null; then
        echo "Installing Git..."
        brew install git
    else
        echo "Git is already installed."
    fi

    # Install Curl
    if ! command -v curl &> /dev/null; then
        echo "Installing Curl..."
        brew install curl
    else
        echo "Curl is already installed."
    fi

    # Install Wget
    if ! command -v wget &> /dev/null; then
        echo "Installing Wget..."
        brew install wget
    else
        echo "Wget is already installed."
    fi

    # Install Htop
    if ! command -v htop &> /dev/null; then
        echo "Installing Htop..."
        brew install htop
    else
        echo "Htop is already installed."
    fi



    # Install bat
    if ! command -v bat &> /dev/null; then
        echo "Installing bat..."
        brew install bat
    else
        echo "bat is already installed."
    fi
}

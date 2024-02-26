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

    # Check if exa is already installed
    if ! command -v exa &> /dev/null; then
        # Check the operating system
        if [[ "$(uname)" == "Linux" ]]; then
            echo "Installing exa for Linux..."
            sudo apt update
            sudo apt install exa
        else
            echo "You should install exa on your own. Visit https://the.exa.website/ for instructions."
        fi
    else
        echo "exa is already installed."
    fi

    # Install bat
    if ! command -v bat &> /dev/null; then
        echo "Installing bat..."
        brew install bat
    else
        echo "bat is already installed."
    fi
}

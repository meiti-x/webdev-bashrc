
if [ ! -d "$HOME/.oh-my-zsh"]; then 
    echo "you need to install oh my zsh first, then make sure set your current shell to zsh."
    exit 1
fi


FOLDER_NAME="webdev"
FOLDER_PATH="$HOME/$FOLDER_NAME"

if [ -d "$FOLDER_PATH" ]; then
    echo "Deleting existing $FOLDER_PATH folder..."
    rm -rf "$FOLDER_PATH"
fi

echo "Creating $FOLDER_NAME folder in user's home directory..."
# mkdir -p "$FOLDER_PATH"

cd "$HOME"

echo "Cloning webdev repository from GitHub..."
git clone https://github.com/meiti-x/webdev-bashrc.git $FOLDER_NAME



if [ -d "$FOLDER_PATH" ]; then
  echo "Folder $FOLDER_NAME created successfully."
  else
    echo 'Clonning the project failed';
    exit 1
fi

line="source $FOLDER_PATH/shell.sh"

# Check if the line exists in .zshrc
if ! grep -qxF "$line" $HOME/.zshrc; then
    echo "$line" >> $HOME/.zshrc
fi

source $HOME/.zshrc








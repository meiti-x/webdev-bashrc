
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

# change node version to defined version in .nvmrc
function cd() {
  builtin cd "$@"  # call the original 'cd' command
  if [[ -f ".nvmrc" ]]; then  # check for .nvmrc file
    nvm use  # use the specified Node.js version
  fi
}

# alias
alias ..='cd ../'
alias ..2='cd ../../'
alias ..3='cd ../../../'
alias ..4='cd ../../../../'


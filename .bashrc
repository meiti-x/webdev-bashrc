
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
  builtin cd "$@" 
  if [[ -f ".nvmrc" ]]; then  
    nvm use
  fi
}

# alias
alias ..='cd ../'
alias ..2='cd ../../'
alias ..3='cd ../../../'
alias ..4='cd ../../../../'


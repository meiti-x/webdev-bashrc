npm() {
  if [ -f yarn.lock ]; then
    echo 'Use yarn!';
  elif [ -f pnpm-lock.yaml ]; then
    echo 'Use pnpm!';
  else
    command npm "$@";
  fi
}

yarn() {
  if [ -f package-lock.json ]; then
    echo 'Use npm!';
  elif [ -f pnpm-lock.yaml ]; then
    echo 'Use pnpm!';
  else
    command yarn "$@";
  fi
}

pnpm() {
  if [ -f yarn.lock ]; then
    echo 'Use yarn!';
  elif [ -f package-lock.json ]; then
    echo 'Use npm!';
  else
    command pnpm "$@";
  fi
}
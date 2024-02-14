#!/usr/bin/zsh

if (which brew)
then
  echo "brew already installed"
else
  echo "installing brew"
  /bin/bash -y -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi  

if (which nano)
then
  echo "nano already installed"
else
  echo "installing nano"
  brew install nano
fi

if (which git)
then
  echo "git already installed"
else
  echo "installing git"
  brew install git
fi

if (which multipass)
then
  echo "multipass already installed"
else
  echo "installing multipass"
  brew install multipass   
fi


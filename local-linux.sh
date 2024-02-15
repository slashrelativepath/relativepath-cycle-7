#!/usr/bin/bash

if (which nano)
then
  echo "nano already installed"
else
  echo "installing nano"
  sudo apt install -y nano
fi

if (which git)
then
  echo "git already installed"
else
  echo "installing git"
  sudo apt install -y git
fi

if ( which snap > /dev/null )
then
  echo "snap already installed"
else
  echo "installing snap"
  sudo apt install -y snapd
fi

if (which multipass) 
then
  echo "multipass already installed"
else
  echo "installing multipass"
  sudo snap install multipass
fi


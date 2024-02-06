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


if (stat id_ed25519)
then
  echo "SSH Key already exist"
else
  echo "Creating SSH Key pair"
  ssh-keygen -f "./id_ed25519" -t ed25519 -N ''
fi

if (multipass info relativepath)
then
  echo "Relative Path VM already exists!"
else
  echo "Launching Relative Path VMs"
  multipass launch --name relativepath
fi

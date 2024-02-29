multipass delete relativepath --purge
if (stat id_ed25519)
  echo "Removing SSH key pairs."
  rm -f id_ed25519*
  echo "SSH key pairs removed."
else
  echo "No SSH key detected."
fi

if (stat cloud-init.yaml)
  echo "Removing cloud-init.yaml"
  rm cloud-init.yaml
  echo "Cloud-init.yaml removed."
else
  echo "No cloud-init.yaml file detected."
fi



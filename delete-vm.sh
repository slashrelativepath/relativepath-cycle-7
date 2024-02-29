multipass delete relativepath --purge

if (stat id_ed25519)
then
  echo "removing ssh key"
  rm -f id_ed25519*
else
  echo "ssh keys do not exist"  
fi

if (stat cloud-init.yaml)
then
  echo "Removing cloud-init.yaml"
  rm cloud-init.yaml
  echo "Cloud-init.yaml removed."
else
  echo "No cloud-init.yaml file detected."
fi



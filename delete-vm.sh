multipass delete relativepath --purge

if (stat id_ed25519)
then
  echo "Removing SSH key pairs"
  rm -f id_ed25519*
  echo "SSH keypairs removed."
  rm cloud-init.yaml
  echo "Cloud YAML removed."
else
  echo "No SSH key detected."

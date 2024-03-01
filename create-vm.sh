if (stat id_ed25519)
then
  echo "SSH Key already exist"
else
  echo "Creating SSH Key pair"
  ssh-keygen -f "./id_ed25519" -t ed25519 -N ''
fi

if [ -f cloud-init.yaml ]
then
  echo -e "\n====Cloud-init.yaml present ===\n"
else
  echo -e "\n====Creating cloud-init.yaml====\n"
  cat<<-EOF>cloud-init.yaml
#cloud-config
users:
  - default
  - name: $(whoami | cut -d '\' -f2)
    sudo: ALL=(ALL) NOPASSWD:ALL
    shell: /bin/bash
    ssh_authorized_keys:
      - $(cat id_ed25519.pub)
EOF
fi

if (multipass info relativepath)
then
  echo "Relative Path VM already exists!"
else
  echo "Launching Relative Path VMs"
  multipass launch --name relativepath --cloud-init cloud-init.yaml
fi

ssh -o StrictHostKeyChecking=no -i "./id_ed25519" "$(whoami | cut -d '\' -f2)@$(multipass info relativepath | grep IPv4 | awk '{ print $2 }')"

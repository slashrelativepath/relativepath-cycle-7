if (multipass info relativepath)
then
  echo "Relative Path VM already exists!"
else
  echo "Launching Relative Path VMs"
  multipass launch --name relativepath
fi

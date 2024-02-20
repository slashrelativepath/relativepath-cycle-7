# Ensure folks know what is going to be installed!
write-host "This script with install Choco, Git, Nano, Virtualbox, and Multipass"

# Stack Overflow:
# https://stackoverflow.com/questions/24649019/how-to-use-confirm-in-powershell

$confirmation = Read-Host "Are you Sure You Want To Proceed? [Y/N]"
if ($confirmation -eq 'n' || $confirmation -eq 'N' ) {
    exit
} else {
    Write-Host "Continuing"
}

# install choco
if ( get-command choco )
{
  write-host "choco already installed."
}
else
{
  write-host "Installing choco."
  Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

# install git
if ( get-command git )
{
  write-host "git already installed."
}
else
{
  write-host "Installing git."
  choco install -y git.install --params "'/GitAndUnixToolsOnPath /WindowsTerminal /NoAutoCrlf'" --force
}

# install nano
if ( get-command nano )
{
  write-host "nano already installed."
}
else
{
  write-host "Installing nano."
  choco install -y nano
}

if ( get-command multipass )
{
  write-host "multipass already installed."
}
else
{
  write-host "installing multipass"
  choco install -y virtualbox
  choco install -y multipass --params="'/HyperVisor:VirtualBox'"
}










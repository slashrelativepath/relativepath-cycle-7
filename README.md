# relativepath cycle7

A set of scripts to manage different systems.

## warning:
This script will install Choco, Nano, Git, Multipass, and VirtualBox(windows)

## usage

On Windows:

`Set-ExecutionPolicy Bypass -Scope Process -Force; .\local-windows.ps1`

or direct from GitHub:
`Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/slashrelativepath/relativepath-cycle-7/main/local-windows.ps1'))`

On Linux:

`bash local-linux.sh`

On Darwin(Mac):

`zsh local-darwin.sh`

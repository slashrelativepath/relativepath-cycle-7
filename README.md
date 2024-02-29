# relativepath cycle7

A set of scripts to manage different systems.

## Create a WebServer

* A nginx web server
	* serving default web page
* A fully updated and upgraded ubuntu server 22.04 LTS
* target x86_64 architecture
* fully automated in shell scripts
* local dev environment in multipass VM 
* Fully documented process

## Dependencies

- ubuntu server 22.04 LTS
- hypervisor: multipass (virtualbox, QEMU)
- web server (nginx)
- package manager (apt, brew, chocolatey)
- text editor (nano)

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

#### Contributors

Stephen Relativepath
Christopher Forti

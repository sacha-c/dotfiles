#!/bin/bash

# https://code.visualstudio.com/docs/setup/linux
echo "⌨️  Installing VSCode"
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code
rm microsoft.gpg

function install {
  name="${1}"
  code --install-extension ${name} --force
}
install batisteo.vscode-django
install ms-python.python
install donjayamanne.python-extension-pack
msjsdiag.vscode-react-native
install infeng.vscode-react-typescript
install visualstudioexptteam.vscodeintellicode
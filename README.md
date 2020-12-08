## Overview

Procedure for recovering the WSL subsystem on a Windows laptop

## Steps

### /usr/local/bin

currently installed stuff, per `usr_local_bin`

### ZSH

restore .zshrc under ~/.zshrc

### VSCode

vscode settings sync copies 'remote' WSL settings to the 'local' windows vscode in the following directory:

`/mnt/c/Users/tomj/AppData/Roaming/Code/User`

The settings.json file included in this repo was found at that location

The vscode-extensions-list file included lists all currently installed extentions.

The list was generated via the command:

`ls -al ~/.vscode-server/extensions`
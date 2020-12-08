PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history
# machine name and abs path
PS1="%m: %0d > "
# add info about the k8s context (cluster and namespace)
# note: see https://github.com/jonmosco/kube-ps1
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
PS1='$(kube_ps1)'$PS1 

kcd='kc describe'

alias undoc='git reset --soft HEAD~1'

# for pipeing strings/files to clipboard 
alias clip='/mnt/c/Windows/System32/clip.exe'

# dnf slush
alias dnsflush="sudo killall -HUP mDNSResponder"

# fluxctl
alias sync="fluxctl sync --k8s-fwd-ns=css-dev-duck-dev"

# kubectl
alias kx="kubectx"
alias kn="kubens"
alias kcs="kubectl -n kube-system"
alias kc="kubectl"
alias ku="kustomize"
alias kca="kubectl --kubeconfig ./secrets/default/admin.conf"
alias ssha="ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i secrets/default/controlplane_rsa tom@tjacks-demo.westus2.cloudapp.azure.com"

# terraform
alias tf="terraform"
alias tfw="terraform workspace"

# run plantuml server
alias plantuml="docker run -d -p 8080:8080 plantuml/plantuml-server:jetty"

#sublime
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
 
# bindkey to get my home/end keys to take me to beginning/end of line respectively
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

# launch chrome
alias launchchrome="\"/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe\""

# login to duck
alias dl="sudo duck login -u TJackso494 -p <redacted>"

# kc commnd completion
source <(kubectl completion zsh)
alias k=kubectl
complete -F __start_kubectl k

# az account set --subscription 19dbcfe8-2cba-4c2d-b902-0927a4b7feec
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
export PATH="${PATH}:/mnt/c/Program Files/Oracle/VirtualBox"
PATH=$HOME/.local/bin:$PATH

export GITLAB_USERNAME=TJackso494
export GITLAB_PAT=<redacted>

alias duck=/home/tomj/duck/duck/bin/duck
export PYTHONPATH="$PYTHONPATH:/home/tomj/duck"

# add Pulumi to the PATH
export PATH=$PATH:$HOME/.pulumi/bin

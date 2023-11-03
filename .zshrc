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
alias branch='git rev-parse --abbrev-ref HEAD'

# for pipeing strings/files to clipboard
alias clip='/mnt/c/Windows/System32/clip.exe'

# dnf slush
alias dnsflush="sudo killall -HUP mDNSResponder"

# fluxctl
alias sync="fluxctl sync --k8s-fwd-ns=css-dev-duck-dev"

# clipboard
alias cb="/mnt/c/Windows/System32/clip.exe"

# kubectl
alias kx="kubectl ctx"
alias kn="kubectl ns"
alias kcs="kubectl -n kube-system"
alias kc="kubectl"
alias ku="kustomize"
alias kca="kubectl --kubeconfig ./secrets/default/admin.conf"
alias ssha="ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i secrets/default/controlplane_rsa tom@tjacks-demo.westus2.cloudapp.azure.com"

# terraform
alias tf="terraform"
alias tfw="terraform workspace"

# forever
alias fe="forever"

# to suppress warning coming from forever
export NODE_NO_WARNINGS=1

# bindkey to get my home/end keys to take me to beginning/end of line respectively
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

# launch chrome
alias launchchrome="\"/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe\""

# kc commnd completion
source <(kubectl completion zsh)

PATH=$HOME/.local/bin:$PATH

# add Pulumi to the PATH
export PATH=$PATH:$HOME/.pulumi/bin

# kubectl krew (plugin manager)
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export download=/mnt/c/Users/tomj/Downloads

alias saws="aws --profile 111365482541_shcva-Developer --region us-west-2"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# alias code="/mnt/c/Users/tomj/AppData/Local/Programs/Microsoft\ VS\ Code/bin/code"
# export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
# sudo /etc/init.d/dbus start &> /dev/null

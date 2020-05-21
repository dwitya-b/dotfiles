DOTFILES_DIR=$HOME/dotfiles
export GOPATH=/Users/dwitya/Business/Workplace/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/binexport
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/php@5.6/bin:$PATH"
export PATH="/Users/dwitya/Library/Python/3.7/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"

# export VAULT_STAGING="https://172.21.96.47:8200"
# export VAULT_PREPROD="https://172.21.64.91:8200"
# export VAULT_PROD="https://172.21.63.167:8200"

export VAULT_SKIP_VERIFY=true
# export VAULT_ADDR=$VAULT_PROD

WORK=/Users/dwitya/Business/Workplace
MOTHERSHIP=$WORK/mothership
SENTINEL=$WORK/sentinel
REDLINE=$WORK/redline
SILKROAD=$WORK/silkroad
NITNIT=$WORK/nitnit
ESSOS=$WORK/essos
OPENSESAME=$WORK/open-sesame
WESTEROS=$WORK/westeros
BASEPLATE=$WORK/baseplate
DORA=$WORK/dora
MOCK=$WORK/mock_user_context

ALEPPO=$GOPATH/src/github.com/bukalapak/aleppo
BIGMOM=$GOPATH/src/github.com/bukalapak/bigmom
HAHEN=$WORK/hahen

source $DOTFILES_DIR/zsh/colors.zsh
source $DOTFILES_DIR/zsh/exports.zsh
source $DOTFILES_DIR/zsh/functions.zsh
source $DOTFILES_DIR/zsh/bindings.zsh
source $DOTFILES_DIR/zsh/aliases.zsh # require: exports.zsh
source $DOTFILES_DIR/zsh/plugins.zsh # require: exports.zsh

# Values on these files should be changed based on your local environtment
source $DOTFILES_DIR/specific/zsh/exports.zsh
source $DOTFILES_DIR/specific/zsh/functions.zsh
source $DOTFILES_DIR/specific/zsh/aliases.zsh

# Should be written last
# source $DOTFILES_DIR/zsh/nyan.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dwitya/Business/Workplace/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/dwitya/Business/Workplace/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dwitya/Business/Workplace/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/dwitya/Business/Workplace/google-cloud-sdk/completion.zsh.inc'; fi

alias k8s-production2-cloud='gcloud container clusters get-credentials k8s-production-2 --region asia-southeast1 --project kubernetes-prod-94cb'
alias k8s-preproduction2-cloud='gcloud container clusters get-credentials k8s-preproduction-2 --region asia-southeast1 --project kubernetes-preprod-0d59'
alias k8s-loadtest3-cloud='gcloud container clusters get-credentials k8s-loadtest-3 --region asia-southeast1'
alias k8s-dconcloud-1='gcloud container clusters get-credentials k8s-dconcloud-1 --region asia-southeast1'
alias k8s-mothership-dconcloud='kubectl config use-context gke_mothership2-preproduction-7466_asia-southeast1_k8s-dconcloud-1'

alias cl3-config="kubectl config set-cluster kube3 --server https://kubernetes-svc-3.bukalapak.io --insecure-skip-tls-verify=true && kubectl config set-credentials bukalapak --username=bukalapak --password='sungguh sesuatu yang tak layak dipamerkan' && kubectl config set-context kube3 --user bukalapak --cluster kube3 --namespace default"
alias cl3-production="kubectl config use-context kube3"

alias ssh-bastion-production="ssh dwitya_bayusagara_bukalapak_com@172.21.60.21"
alias ssh-bastion-preproduction="ssh dwitya_bayusagara_bukalapak_com@172.21.64.222"
alias ssh-proxy-mothership-preproduction='ssh -o ProxyCommand="ssh -W %h:%p dwitya_bayusagara_bukalapak_com@172.21.64.242" -N -L 8000:10.48.6.34:443 dwitya_bayusagara_bukalapak_com@172.21.108.6'

alias gcloud-login="gcloud compute os-login ssh-keys add ~/.ssh/id_rsa.pub"
alias gcloud-describe-profile="gcloud compute os-login describe-profile"

alias vault-preproduction="ssh -L 127.0.0.1:8200:172.21.64.91:8200 dwitya_bayusagara_bukalapak_com@172.21.64.242 -N"
alias vault-production="ssh -L 127.0.0.1:8200:172.21.63.167:8200 dwitya_bayusagara_bukalapak_com@172.21.0.42 -N"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

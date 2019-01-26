# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_CUSTOM=$HOME/.zsh_custom

# Set name of the theme to load.
ZSH_THEME="yosemite"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rbenv ruby rails)

source $ZSH/oh-my-zsh.sh

# Set Path
export PATH=/usr/local/bin:$PATH

# GPG auth
export GPG_TTY=$(tty)

# Emacs
# alias em="emacsclient -nw"
em() {
  if [ -n "$1" ]
  then
    emacsclient -nw "$1"
  else
    emacsclient -nw .
  fi
}

# Path Aliases
alias path="echo $PATH"
alias ..-"cd .."
alias work="cd ~/Development"
alias rs="rspec spec -fd"
alias newestdir="ls -t /backups | head -1"

# Git Aliases
alias gs="git status"
alias ga="git add ."
alias gc="git commit -S"
gclone() {
  git clone "$1" && cd $(basename $_ .git) && mkdir _project_resources
}

# Notification Center alerts when long tasks are complete
alias notify="osascript -e 'display notification \"Task complete\" with title \"Terminal\"'"
alias nn="notify"

# Rails shortcuts
alias be="bundle exec"
alias logs="tail -f log/development.log"
alias console="bundle exec rails console"
alias migrate="bundle exec rake db:migrate"
alias reset="bundle exec rake:reset"
alias restart="touch tmp/restart.txt"
alias findprocess="ps aux | grep"

# Temp MySQL fix
alias fixmysql="sudo /usr/local/Cellar/mysql@5.6/5.6.34/bin/mysql.server start --skip-grant-tables --skip-networking"


findport() {
  lsof -i tcp:"$1"
}

# RBENV shortcuts
alias rb="rbenv"

# TMUX shortcuts
alias tml="tmux list-sessions"
alias tma="tmux -2 attach -t $1"
alias tmk="tmux kill-session -t $1"

# Emacs shortcuts
alias em="emacsclient"
export EDITOR='emacs'

# Vim shortcuts
# export EDITOR='vim'

source ~/.bin/tmuxinator.zsh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/opt/nss/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"

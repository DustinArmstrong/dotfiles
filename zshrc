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

# Path Aliases
alias path="echo $PATH"
alias ..-"cd .."
alias dev="cd ~/Dev"
alias work="cd ~/Dev/work"
alias personal="cd ~/Dev/personal"
alias rs="rspec spec -fd"

# Git Aliases
alias gs="git status"
alias ga="git add ."
alias gc="git commit"

# Notification Center alerts when long tasks are complete
alias notify="osascript -e 'display notification \"Task complete\" with title \"Terminal\"'"

# Rails shortcuts
alias be="bundle exec"
alias logs="tail -f log/development.log"
alias console="bundle exec rails console"
alias migrate="bundle exec rake db:migrate"
alias reset="bundle exec rake:reset"
alias restart="touch tmp/restart.txt"
alias findprocess="ps aux | grep"

# RBENV shortcuts
alias re="rbenv"

# TMUX shortcuts
alias tmuxkill="tmux kill-session -t"

# Emacs shortcuts
alias em="emacsclient"
export EDITOR='emacs'

# Vim shortcuts
export EDITOR='vim'

source ~/.bin/tmuxinator.zsh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# export ZSH=/nix/store/xs1a6rwb62xirbxj2zisrzzm7p391slf-oh-my-zsh-2017-09-24/share/oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Load the variables.
if [ -f ~/.zsh_variables ]; then
    . ~/.zsh_variables
fi

# Load the functions.
if [ -f ~/.zsh_funcs ]; then
  . ~/.zsh_funcs
fi

# Load the aliases.
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

source $HOME/.aliases

export TERM=xterm-256color

export PATH=/home/jesuspc/.local/bin:$PATH
export PATH=$PATH:/home/jesuspc/.yarn/bin
export PATH=$PATH:/home/jesuspc/mutable_node_modules/bin
export PATH=./node_modules/.bin:$PATH
export PATH=./node_modules/.bin:$PATH
export PATH=/home/jesuspc/.cargo/bin:$PATH
export PATH=/home/jesuspc/.gem/ruby/2.4.0/bin:$PATH

export EDITOR=vim

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/jesuspc/mutable_node_modules/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/jesuspc/mutable_node_modules/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/jesuspc/mutable_node_modules/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /home/jesuspc/mutable_node_modules/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(fasd --init auto)"

if [ -n "${commands[fzf-share]}" ]; then
  source "$(fzf-share)/key-bindings.zsh"
fi

export FZF_DEFAULT_OPS="--extended"
export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_COMMAND="${FZF_DEFAULT_COMMAND}"

export RUST_SRC_PATH=/home/jesuspc/Code/misc/rust/src
eval "$(direnv hook zsh)"

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /home/jesuspc/mutable_node_modules/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /home/jesuspc/mutable_node_modules/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

# # short ww = work work
# ww-logs() {
#   log=$(awslogs groups | fzf)
#   echo "${log}"
#   while true; do
#     seq 2
#     awslogs get "${@:--w}" "${log}"
#     echo -n "Again ${log}? "
#     read -r
#   done
# }
# logs-prod() {
#   (
#     export AWS_PROFILE=moixa-prod
#     ww-logs
#   )
# }
# logs-dev() {
#   (
#     export AWS_PROFILE=moixa-dev
#     ww-logs
#   )
# }

# Set oh-my-zsh as the default repo
antigen use oh-my-zsh

# Load bundles from the default repo (oh-my-zsh)
antigen bundle git
antigen bundle command-not-found
antigen bundle docker

antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle seebi/dircolors-solarized

antigen theme ${ZSH_HOME}/theme --no-local-clone
antigen bundle ${ZSH_HOME}/custom --no-local-clone

antigen apply

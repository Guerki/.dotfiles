# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dieter"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export SHELL=/usr/local/bin/zsh
# Automatically update wechall scoring
export WECHALLUSER="guerki"
export WECHALLTOKEN="B2C70-DC6EF-60807-7F841-FB3E5-DB00B"

#folder shortcuts	
	alias dropbox='cd ~/Dropbox'

#command aliases
	alias ..='cd ..'
    alias ....='cd ../..'
	alias ll='ls -lh'
	alias la='ls -la'
	alias ps='ps -ax'
	alias lisa='ls -lisa'
	alias byebye='sudo shutdown -hP now'
    alias cusoon='sudo shutdown -r now'
    if [[ $(uname) == 'Linux' ]]; then
        alias show='xdg-open'
    fi
    alias sftp='with-readline sftp'
    alias todo='vim ~/Dropbox/todo/todo.txt'
    # alias for todotxt, also remove regex on () for this command because of priorities
    alias t='noglob todo.sh'
    alias ta='noglob todo.sh add'
    alias tl='noglob todo.sh ls'

#set numpad to decimal dot and not comma
    if [[ $(uname) == 'Linux' ]]; then 
        setxkbmap -option '' -option kpdl:dot
    fi
# why would you type 'cd dir' if you could just type 'dir'?
	setopt AUTO_CD


# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# zsh move
autoload -U zmv
alias mmv='noglob zmv -W'

#256color terminal
export TERM=xterm-256color

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(ruby git sublime python command-not-found debian encode64 sudo web-search)

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.iterm2_shell_integration.`basename $SHELL`
source ~/.zsh_profile
export PYLEARN2_VIEWER_COMMAND="eog --new-instance"

export PATH="/usr/local/sbin:$PATH"
export PYTHONPATH="/anaconda/lib/python3.5/site-packages/"

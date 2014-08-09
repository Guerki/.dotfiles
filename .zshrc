# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dieter"

#folder shortcuts	
	alias dropbox='cd ~/Dropbox'
	alias thesis='cd /Users/smea/Dropbox/Bachelorarbeit/baqrcodes/thesis'
	alias master='cd ~/Dropbox/master'

#command aliases
	alias ..='cd ..'
	alias ll='ls -lh'
	alias la='ls -la'
	alias ps='ps -ax'
	alias lisa='ls -lisa'
	alias byebye='sudo shutdown -hP now'
    alias cusoon='sudo shutdown -r now'
    alias show='xdg-open'

#set numpad to decimal dot and not comma
    setxkbmap -option '' -option kpdl:dot

# why would you type 'cd dir' if you could just type 'dir'?
	setopt AUTO_CD

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

#256color terminal
export TERM=xterm-256color

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(ruby git sublime python command-not-found debian encode64 sudo web-search)

source $ZSH/oh-my-zsh.sh


# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias df='df -h'
alias du='du -skh'
alias grep='grep --color'
alias ls='ls -hF --color=tty'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias ll='ls -lh --file-type'                              # long list
alias l='ls -CF'                              #
alias lla='ls -a -l'
alias e='exit'
alias le='less -S'
alias d='display'
alias t='top -u $USER'
export PATH="$PATH:/usr/bin"
export PATH="/share/Software/bin/:./:$PATH"
export PATH="/ifs1/Software/miniforge3/bin/:$PATH"

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
        fi


export PS1="\[\e[31;1m\]\u\[\e[0m\] \[\e[32;1m\]\t \[\e[0m\]\[\e[34;1m\]\w\[\e[0m\]\n\[\e[31;1m\]$ \[\e[0m\]"
export PS2="\[\e[31;1m\]\u\[\e[0m\] \[\e[32;1m\]\t \[\e[0m\]\[\e[34;1m\]\w\[\e[0m\]\n\[\e[31;1m\]$ \[\e[0m\]"

export CLICOLOR=1
export LANG="en_US.UTF-8"

alias ls="ls --color=auto"

export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

alias vim=nvim

alias gui=Hyprland

# fzf from current directory
alias ff='cd $(dirname $(find . -type f -not -type d -print | fzf))' # find file under current dir and go to file location
alias fd='cd $(find . -type d -print | fzf)' # find directory under current dir and go to to dir location
alias fv='vim $(find . -print | fzf)' # find under current dir and open in vim
alias fls='ls $(find . -type d -print | fzf)' # find under current dir and print dir content
alias fcat='cat $(find . -type f -not -type d -print | fzf)' # find a file under current dir and cat
alias fe='./$(find . -type f -executable -not -type d -print | fzf)' # find file under current dir and go to file location

# fzf from home directory
alias ffg='cd $(dirname $(find $HOME -type f -not -type d -print | fzf))' # find file and go to directory
alias fdg='cd $(find $HOME -type d -print | fzf)' # find directory globally and go to
alias fvg='vim $(find $HOME -print | fzf)' # find globally and open in vim
alias flsg='ls $(find $HOME -type d -print | fzf)' # find globally and print content
alias fcatg='cat $(find $HOME -type f -not -type d -print | fzf)' # find a file globally and cat

# custom commands
alias c_template="~/scripts/c_template.sh" # automated c project creation
alias fcmd='~/scripts/fzf_cmd_history.sh'

# others
alias cls="clear" # useful abbreviation
alias lv="vim -S ~/.session.vim" # open last file edited



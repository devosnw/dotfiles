#
# exports
#

export COLOR_BLUE="$(tput setaf 4)"
export COLOR_CYAN="$(tput setaf 6)"
export COLOR_GREEN="$(tput setaf 2)"
export COLOR_MAGENTA="$(tput setaf 5)"
export COLOR_RED="$(tput setaf 1)"
export COLOR_RESET="$(tput sgr0)"
export COLOR_WHITE="$(tput setaf 7)"
export COLOR_YELLOW="$(tput setaf 3)"
export GPG_TTY="$(tty)"
export HISTCONTROL=ignoreboth
export HISTIGNORE='&:bg:cd:clear:exit:fg:ll:ls:pwd'
export HISTTIMEFORMAT='%F %T '
export HISTSIZE=10000
export PROMPT_COMMAND='history -a'

#
# exports
#

# tell `ls` to use colors
export CLICOLOR=1
export COLOR_BLUE="$(tput setaf 4)"
export COLOR_CYAN="$(tput setaf 6)"
export COLOR_GREEN="$(tput setaf 2)"
export COLOR_MAGENTA="$(tput setaf 5)"
export COLOR_RED="$(tput setaf 1)"
export COLOR_RESET="$(tput sgr0)"
export COLOR_WHITE="$(tput setaf 7)"
export COLOR_YELLOW="$(tput setaf 3)"
# determines what terminal to use to display the passphrase
export GPG_TTY="$(tty)"
# colon-separated list of values controlling how commands are saved in history
# * `ignorespace` - ignore commands that start with spaces
# * `ignoredups` - ignore duplicate commands
# * `ignoreboth` - shorthand for `ignorespace` and `ignoredups`
# * `erasedups` - causes all previous lines matching the current line to be
#   removed from the history list before that line is saved
export HISTCONTROL=ignoreboth
# colon-separated list of patterns used to decide which command lines should
# be saved on the history list.
export HISTIGNORE='&:bg:cd:clear:exit:fg:ll:ls:pwd'
# a format string for strftime to print the time stamp associated with each
# history entry
export HISTTIMEFORMAT='%F %T '
# maximum number of commands to remember on the history list
export HISTSIZE=10000
# [darwin] colors used by `ls` when displaying files
export LSCOLORS=GxFxCxDxBxegedabagaced
# [linux] colors used by `ls` when displaying files
export LS_COLORS="$LSCOLORS"
# the contents of this variable are executed as a regular bash command just
# before bash displays a prompt
export PROMPT_COMMAND='history -a'


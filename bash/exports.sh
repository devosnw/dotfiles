#
# exports
#

# tell `ls` to use colors
export CLICOLOR=1
export COLOR_BLUE="\033[38;5;12m"
export COLOR_CHARTEUSE1="\033[38;5;118m"
export COLOR_DEEP_SKY_BLUE1="\033[38;5;39m"
export COLOR_DEEP_PINK1="\033[38;5;198m"
export COLOR_CYAN="\033[38;5;6m"
export COLOR_GREEN="\033[38;5;2m"
export COLOR_INDIAN_RED1="\033[38;5;203m"
export COLOR_LIGHTGOLDENROD1="\033[38;5;227m"
export COLOR_LIME="\033[38;5;10m"
export COLOR_MAGENTA="\033[38;5;13m"
export COLOR_MEDIUM_PURPLE1="\033[38;5;141m"
export COLOR_MEDIUM_PURPLE2="\033[38;5;135m"
export COLOR_MAROON="\033[38;5;1m"
export COLOR_MEDIUM_ORCHID1="\033[38;5;207m"
export COLOR_NAVY="\033[38;5;4m"
export COLOR_RED="\033[38;5;9m"
export COLOR_RESET="\033[m"
export COLOR_SILVER="\033[38;5;7m"
export COLOR_WHITE="\033[38;5;15m"
export COLOR_YELLOW="\033[38;5;11m"
export COLOR_YELLOW1="\033[38;5;226m"
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


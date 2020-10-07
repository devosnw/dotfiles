#
# aliases
#

if __is_os Linux; then
  # tell `ls` to use colors. Also see `$CLICOLOR`
  alias ls='ls --color=auto'
fi
alias l='ls -l'
alias ll='ls -l'
alias lal='ls -al'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'

if __which_quietly docker-compose; then
  alias dcb='docker-compose build'
  alias dcr='docker-compose run --rm'
  alias dcu='docker-compose up'
fi

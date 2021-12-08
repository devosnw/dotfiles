#
# docker specific configuration
#

__which_quietly docker-compose || return 0

alias dcb='docker-compose build'
alias dcr='docker-compose run --rm'
alias dcu='docker-compose up'

